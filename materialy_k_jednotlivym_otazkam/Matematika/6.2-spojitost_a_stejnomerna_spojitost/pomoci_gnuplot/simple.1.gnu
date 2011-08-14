# set terminal png transparent nocrop enhanced font arial 8 size 420,320 
# set output 'simple.1.png'

# 'autotitles' - zobrazi se jmeno funkce
# za 'box' vlastnosti ohraniceneho boxu s legendou

set key inside left top vertical Right noreverse enhanced autotitles box linetype -1 linewidth 1.000
set samples 150
plot [-3:4] exp(x)     #,atan(x),cos(atan(x))

set terminal png         # gnuplot recommends setting terminal before output
set output "output.png"  # The output filename; to be set after setting
