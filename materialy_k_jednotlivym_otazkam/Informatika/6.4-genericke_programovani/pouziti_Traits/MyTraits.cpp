
#define FLT_MAX_EXP 0
#define FLT_EPSILON 0
#define DBL_MAX_EXP 0
#define DBL_EPSILON 0


  template <class numT>
  struct float_traits { };

  template <>
  struct float_traits<float> {
	typedef float float_type;
	enum { max_exponent = FLT_MAX_EXP };
	static inline float_type epsilon() { return FLT_EPSILON; }
	// ...
  };

  template <>
  struct float_traits<double> {
	typedef double float_type;
	enum { max_exponent = DBL_MAX_EXP };
	static inline float_type epsilon() { return DBL_EPSILON; }
	//...
  };


  template <class numT>
  class matrix {
	public:
	  typedef numT num_type;
	  typedef float_traits<num_type> traits_type;
	  inline num_type epsilon() { return traits_type::epsilon(); }
	  // ...
  };




  void main(){
	float_traits<int> myInt;
	// a asi prace s 'myInt'
  }