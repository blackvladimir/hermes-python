cdef extern from "<complex>" namespace "std":
  cdef cppclass complex[T]:
    pass

include "include/vector.pxd"
include "include/exceptions.pxd"
