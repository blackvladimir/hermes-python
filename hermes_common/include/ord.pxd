cdef extern from "ord.h" namespace "Hermes":
  cdef cppclass Ord:
    Ord()
    Ord(int o)
    Ord(double o)
    int get_order()
    Ord get_max_order()
    Ord operator + (Ord &o)
    Ord operator + (double d)
    Ord operator + (cComplex[double] d)
    Ord operator-(Ord &o)
    Ord operator-(double d)
    Ord operator-(cComplex[double] d)
    Ord operator*(Ord &o)
    Ord operator*(double d)
    Ord operator*(cComplex[double] d)
    Ord operator/(Ord &o)
    Ord operator/(double d)
    Ord operator/(cComplex[double] d)
    bool operator<(double d)
    bool operator<(cComplex[double] d)
    bool operator>(double d)
    bool operator>(cComplex[double] d)
    bool operator<(Ord &o)
    bool operator>(Ord &o)

  cdef Ord operator/(double &a, Ord &b)
  cdef Ord operator*(double &a, Ord &b)
  cdef Ord operator + (double &a, Ord &b)
  cdef Ord operator-(double &a, Ord &b)
  cdef Ord operator/(cComplex[double] &a, Ord &b)
  cdef Ord operator*(cComplex[double] &a, Ord &b)
  cdef Ord operator + (cComplex[double] &a, Ord &b)
  cdef Ord operator-(cComplex[double] &a, Ord &b)
  cdef Ord operator-(Ord &a)

  cdef Ord pow(Ord &a, double &b)
  cdef Ord sqrt(Ord &a)
  cdef Ord sqr(Ord &a)
  cdef Ord conj(Ord &a)
  cdef Ord abs(Ord &a)
  cdef Ord magn(Ord &a)

  cdef Ord atan2(Ord &a, Ord &b)
  cdef Ord atan(Ord &a)
  cdef Ord sin(Ord &a)
  cdef Ord cos(Ord &a)
  cdef Ord log(Ord &a)
  cdef Ord exp(Ord &a)

cdef class PyOrd:
  cdef Ord * thisptr


