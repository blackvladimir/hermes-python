cdef class PyEssentialBoundaryConditionReal:
  """Abstract class"""
  def __dealloc__(self):
    del self.thisptr

  def get_value_type(self):
    return self.thisptr.get_value_type()

  def value(self,double x, double y, double n_x, double n_y, double t_x, double t_y):
    return self.thisptr.value(x, y, n_x, n_y, t_x, t_y)

  def set_current_time(self,double time):
    self.thisptr.set_current_time(time)

  def get_current_time(self):
    return self.thisptr.get_current_time()

cdef class PyEssentialBoundaryConditionComplex:
  """Abstract class"""
  def __dealloc__(self):
    del self.thisptr

  def get_value_type(self):
    return self.thisptr.get_value_type()

  def value(self,double x, double y, double n_x, double n_y, double t_x, double t_y):
    cdef cComplex[double] v = self.thisptr.value(x, y, n_x, n_y, t_x, t_y)
    r = complex(v.real(),v.imag())
    return r

  def set_current_time(self,double time):
    self.thisptr.set_current_time(time)

  def get_current_time(self):
    return self.thisptr.get_current_time()



cdef class PyDefaultEssentialBCConstReal(PyEssentialBoundaryConditionReal):
  def __cinit__(self,markers,value_const):
    cdef vector[string] v
    cdef string s
    cdef EssentialBoundaryCondition[double]* b
    if (type(self)!=PyDefaultEssentialBCConstReal):
      return
    if isinstance(markers,list):
      for m in markers:
        s.assign(<char*>m)
        v.push_back(s)

      self.thisptr=<EssentialBoundaryCondition[double]* > new DefaultEssentialBCConst[double](v, <double> value_const)
    else:
      s.assign(<char*>markers)
      self.thisptr=<EssentialBoundaryCondition[double]* > new DefaultEssentialBCConst[double](s,<double> value_const)

cdef class PyDefaultEssentialBCConstComplex(PyEssentialBoundaryConditionComplex):
  def __cinit__(self,markers,value_const):
    cdef cComplex[double] *value 
    cdef vector[string] v
    cdef string s
    cdef EssentialBoundaryCondition[cComplex[double]]* b
    if (type(self)!=PyDefaultEssentialBCConstReal):
      return
    value = new cComplex[double](value_const.real,value_const.imag)
    if isinstance(markers,list):
      for m in markers:
        s.assign(<char*>m)
        v.push_back(s)

      self.thisptr=<EssentialBoundaryCondition[cComplex[double]]* > new DefaultEssentialBCConst[cComplex[double]](v, value[0])
    else:
      s.assign(<char*>markers)
      self.thisptr=<EssentialBoundaryCondition[cComplex[double]]* > new DefaultEssentialBCConst[cComplex[double]](s, value[0])
    del value


#cdef class PyDefaultEssentialBCNonConstReal(PyEssentialBoundaryConditionReal):
#  def __cinit__(self,markers, PyExactSolutionReal exact_solution):
#    cdef vector[string] cmarkers
#    cdef string cm
#    if (type(self)!=PyDefaultEssentialBCNonConstReal):
#      return
#    if isinstance(markers,list):
#      for m in markers:
#        cm.assign(<char*>m)
#        cmarkers.push_back(cm)
#      self.thisptr=<EssentialBoundaryCondition[double]*> new DefaultEssentialBCNonConst(cmarkers, <ExactSolution[double]*> exact_solution.thisptr) 
#    else:
#      pass
#      self.thisptr=<EssentialBoundaryCondition[double]*> new DefaultEssentialBCNonConst(<char*> markers, <ExactSolution[double]*> exact_solution.thisptr) 
#
#    ExactSolutionScalar[Scalar]* exact_solution
#





#  cdef cppclass DefaultEssentialBCNonConstHcurl[Scalar]:#(EssentialBoundaryCondition[Scalar]):
#    DefaultEssentialBCNonConstHcurl(vector[string] markers_, ExactSolutionVector[Scalar]* exact_solution2) 
#    DefaultEssentialBCNonConstHcurl(string marker, ExactSolutionVector[Scalar]* exact_solution2) 
#    ExactSolutionVector[Scalar]* exact_solution2
#
#  ctypedef void* pEssentialBoundaryCondition "EssentialBoundaryCondition<Scalar>*" #cython error override
#  cdef cppclass EssentialBCs[Scalar]:
#    EssentialBCs()
#    #EssentialBCs(vector[EssentialBoundaryCondition[Scalar]*] essential_bcs)
#    EssentialBCs(vector[pEssentialBoundaryCondition] essential_bcs)
#    EssentialBCs(EssentialBoundaryCondition[Scalar]* boundary_condition)
#    void add_boundary_conditions(vector[pEssentialBoundaryCondition] essential_bcs)
#    void add_boundary_condition(EssentialBoundaryCondition[Scalar]* essential_bc)
#    vector[pEssentialBoundaryCondition].const_iterator iterator
#    vector[pEssentialBoundaryCondition].const_iterator begin()
#    vector[pEssentialBoundaryCondition].const_iterator end()
#    EssentialBoundaryCondition[Scalar]* get_boundary_condition(string marker)
#    void set_current_time(double time)
#
#  ctypedef void* pEssentialBCs "EssentialBCs<Scalar>*" #cython error override
#
#
#cdef class PyEssentialBoundaryConditionReal:
#  cdef EssentialBoundaryCondition[double] * thisptr
