from libcpp cimport bool
from libcpp.string cimport string 
from libcpp.set cimport set as cSet
from libcpp.pair cimport pair
from ctypes cimport complex as cComplex
from hermes_common cimport *

include "../translate_exceptions/raise_exception.pxd"
include "include/mesh/hash.pxd"
include "include/mesh/curved.pxd"
include "include/asmlist.pxd"
include "include/shapeset/precalc.pxd"
include "include/function/exact_solution.pxd"
include "include/boundary_conditions/essential_boundary_conditions.pxd"
include "include/shapeset/shapeset.pxd"
include "include/shapeset/h1_shapeset.pxd"
include "include/shapeset/l2_shapeset.pxd"
include "include/shapeset/hcurl_shapeset.pxd"
include "include/shapeset/hdiv_shapeset.pxd"
include "include/space/space.pxd"
include "include/function/solution.pxd"
include "include/calculation_continuity.pxd"
include "include/mesh/mesh.pxd"
include "include/mesh/traverse.pxd"
include "include/mesh/mesh_reader_h2d_xml.pxd"
include "include/function/transformable.pxd"
include "include/views/view.pxd"
include "include/views/mesh_view.pxd"
include "include/views/order_view.pxd"
include "include/views/base_view.pxd"
include "include/function/function.pxd"
include "include/function/mesh_function.pxd"
include "include/hermes2d_common_defs.pxd"
include "include/quadrature/quad.pxd"
include "include/mesh/refmap.pxd"
include "include/views/scalar_view.pxd"
include "include/views/vector_view.pxd"
include "include/views/linearizer_base.pxd"
include "include/views/linearizer.pxd"
include "include/space/space_h1.pxd"
include "include/space/space_l2.pxd"
include "include/space/space_hcurl.pxd"
include "include/space/space_hdiv.pxd"
include "include/forms.pxd"
include "include/weakform/weakform.pxd" 
include "include/projections/ogprojection.pxd" 
include "include/refinement_selectors/optimum_selector.pxd"
include "include/refinement_selectors/l2_proj_based_selector.pxd"
include "include/refinement_selectors/h1_proj_based_selector.pxd"
include "include/discrete_problem.pxd"
include "include/adapt/adapt.pxd"
include "customclasses/weakform.pxd"
include "include/newton_solver.pxd"
include "include/picard_solver.pxd"
include "include/function/filter.pxd"
include "include/runge_kutta.pxd"