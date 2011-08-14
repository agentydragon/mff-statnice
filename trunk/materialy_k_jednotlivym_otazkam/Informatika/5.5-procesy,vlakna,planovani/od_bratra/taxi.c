#include <stdio.h>
#include <stdlib.h>
#include <pthread.h>
#include <semaphore.h> // sem_post
#include <time.h>
#define zakazniku 5
#define taxiku 3

int customers  = zakazniku;
int taxis = taxiku;

int tstav_celk[taxiku];
int zstav_celk[zakazniku];

pthread_t vlakno_taxi[taxiku];
pthread_t vlakno_zakaznik[zakazniku];
pthread_t vlakno_dispecer;

sem_t semafor_zakaznik;
sem_t semafor_taxi;
sem_t semafor_disp;
sem_t semafor_disp2;
sem_t semafor_zak[zakazniku];
sem_t semafor_zak2[zakazniku];
pthread_mutex_t mutex_pristup_cust;
pthread_mutex_t mutex_vylouceni;
pthread_mutex_t mutex_ukonceni;

struct taxi{
 int cislo;
 int stav;
};

struct zakaznik{
 int cislo;
 int cas;
 int stav;
};


//************************************ funkce taxi *******************
void *funkce_taxi(void *param){
 srand (time(NULL));
 sem_post(&semafor_disp);  //taxi se vytvori a ceka na odezvu od DISPECINKU povolenim semafor_disp2
 sem_wait(&semafor_disp2);
 printf("taxi %d: Prihlasen do systemu\n",param+1);
 struct taxi t;  //inicializace informaci o taxiku
 t.cislo =(int)param;
 t.stav = 0;
 tstav_celk[t.cislo] = t.stav;
 do{
  printf("taxi %d: Jsem volny\n",t.cislo+1);
  sem_post(&semafor_taxi); //reknu zakaznikum, ze jsem v systemu
  sem_wait(&semafor_zakaznik); //podivam se jestli jsou nejaci zakaznici .. jinak jdu spat
  int i,a=0;
  pthread_mutex_lock(&mutex_vylouceni); //v jednom okamziku muze pole stavu zakazniku zkoumat jeden taxik
  for(i=0;i<zakazniku;i++){
   a=0;
   if (zstav_celk[i]==1){
    zstav_celk[i]=2;  //budu obsluhovat zakaznika s cislem i
    pthread_mutex_unlock(&mutex_vylouceni);
    t.stav = 1;
    tstav_celk[t.cislo] = t.stav;  //zmena stavu taxi - jede pro zakaznika
    printf("taxi %d: Jedu pro zakaznika %d\n",t.cislo+1,i+1);
    sleep(rand() % 10 + 1);  //nahodny cas dojezdu k zakaznikovi
    t.stav = 2;
    tstav_celk[t.cislo] = t.stav; // zmena stavu taxi - jede se zakaznikem
    sem_post(&semafor_zak[i]); //po prijezdu k zakaznikovi nastoupi do taxiku
    printf("taxi %d: Vezu zakaznika %d\n",t.cislo+1,i+1);
    sleep(rand() % 10 + 1);  //nahodny cas jizdy se zakaznikem
    t.stav = 3;
    tstav_celk[t.cislo] = t.stav; // zmena stavu taxi
    printf("taxi %d: Zakaznik %d dovezen do cile\n",t.cislo+1,i+1);
    sem_post(&semafor_zak2[i]); //po dovezeni se ukonci vlakno zakaznika
    pthread_mutex_lock(&mutex_pristup_cust);  //vylucny pristup ke sdilene promenne
    customers--;
    pthread_mutex_unlock(&mutex_pristup_cust);
    a=1;  //pokud jsem jiz nasel zakaznika, ktereho sem obslouzil nastavym priznak
   }
   if (a==1) break; //jestli jsem uz obslouzil zakaznika - ukoncim prohledavani
  }
  t.stav = 0;
  tstav_celk[t.cislo] = t.stav;
 }while (customers>0);
 pthread_mutex_lock(&mutex_ukonceni);  //ukoncovat sluzbu bude pouze jeden taxik
 printf("taxi %d: Jsem volny\n",t.cislo+1);
 int i;
 pthread_cancel(vlakno_dispecer);  //ukonceni dispecera
 for(i=0;i<taxiku;i++){	// ukonceni ostatnich taxiku, kteri cekaji na zakazniky
  if (t.cislo!=i){
   pthread_cancel(vlakno_taxi[i]);
  }
 }
 printf("Prace taxiku byla ukoncena... vsichni zakaznici byly obslouzeni\n");
}


//***************************** funkce zakaznik *********************
void *funkce_zakaznik(void *param){
 struct zakaznik z;
 z.cislo =(int)param;
 printf("zakaznik %d: existuji a budu si objednavat taxi\n",z.cislo+1);
 z.stav = 0;
 zstav_celk[z.cislo] = z.stav;  //inicializace informaci o zakaznikovi
 z.cas=z.cislo+1;//rand() % 10 + 1;
 sleep(z.cas);
 z.stav=1;  //zmena stavu - zakaznik zada o odvoz a ceka na prijezd
 zstav_celk[z.cislo]=z.stav;
 sem_post(&semafor_zakaznik); //reknu ze chci obslouzit od nejakeho taxiku
 sem_wait(&semafor_taxi); // zjistim jestli je nejaky volny
 sem_wait(&semafor_zak[z.cislo]); //pockam dokud pro me neprijede taxik
 printf("zakaznik %d: jedu taxikem\n",z.cislo+1);
 sem_wait(&semafor_zak2[z.cislo]); //pockam dokud me taxi neodveze do cile
}


//******************************* funkce dispecer *******************
void *funkce_dispecer(void *param){
 int pocet=0;
 printf("DISPECINK JE V PROVOZU\n");
 do{
  sem_wait(&semafor_disp);
  pocet++;
  printf("DISPECINK: Prijimam zadost o prihlaseni: V systemu je v %d taxi\n",pocet);
  sem_post(&semafor_disp2);
 }while (0==0);
}

 
/*********************************************************************
--------------------------     MAIN     ------------------------------
*********************************************************************/
int main (int argc, char *argv[]){
 
 int i;

 sem_init(&semafor_taxi, 0, 0);
 sem_init(&semafor_zakaznik, 0, 0);
 sem_init(&semafor_disp, 0, 0);
 sem_init(&semafor_disp2, 0, 0);
 for(i=0;i<zakazniku;i++){
  sem_init(&semafor_zak[i], 0, 0);
 }
 for(i=0;i<zakazniku;i++){
  sem_init(&semafor_zak2[i], 0, 0);
 }
 pthread_mutex_init(&mutex_pristup_cust, NULL);
 pthread_mutex_init(&mutex_vylouceni, NULL);
 pthread_mutex_init(&mutex_ukonceni, NULL);
 
 for (i=0;i<taxiku;i++){   //inicializacni hodnota prvku pole je 99
  tstav_celk[i]=99;
 }
 
 for (i=0;i<zakazniku;i++){
  zstav_celk[i]=99;
 }
 
 //vytvoreni jednotlivych vlaken
 pthread_create(&vlakno_dispecer,NULL,funkce_dispecer,NULL);
 
 for(i=0;i<taxis;i++){
  pthread_create(&vlakno_taxi[i],NULL,funkce_taxi,(void *)i);
 }
 
 for(i=0;i<customers;i++){
  pthread_create(&vlakno_zakaznik[i],NULL,funkce_zakaznik,(void *)i);
 }
 
 //pockame na ukonceni vsech vlaken
 for (i=0;i<taxis;i++) pthread_join(vlakno_taxi[i], NULL);
 for (i=0;i<customers;i++) pthread_join(vlakno_zakaznik[i], NULL);
 pthread_join(vlakno_dispecer,NULL);
 
 //zrusime semafory a zamky
 sem_destroy(&semafor_taxi);
 sem_destroy(&semafor_zakaznik);
 sem_destroy(&semafor_disp);
 sem_destroy(&semafor_disp2);
 for(i=0;i<zakazniku;i++){
  sem_destroy(&semafor_zak[i]);
 }
 for(i=0;i<zakazniku;i++){
  sem_destroy(&semafor_zak2[i]);
 }
 pthread_mutex_destroy(&mutex_pristup_cust);
 pthread_mutex_destroy(&mutex_vylouceni);
 pthread_mutex_destroy(&mutex_ukonceni);
}
