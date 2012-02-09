from distutils.core import setup
from distutils.extension import Extension
from Cython.Distutils import build_ext

setup(
    cmdclass = {'build_ext': build_ext},
    ext_modules = [Extension("hermes2d", [
    "hermes2d.pyx",
    "hermes2d.pxd",
    "../config.pxi",
    "../translate_exceptions/translate_exception.cpp",
    "../translate_exceptions/raise_exception.pxd",
    "../translate_exceptions/raise_exception.pxi",
    "include/hermes2d_common_defs.pxd",
    "src/hermes2d_common_defs.pxi",
    "include/asmlist.pxd",
    "src/asmlist.pxi",
    "include/shapeset/precalc.pxd",
    "src/shapeset/precalc.pxi",
    "include/function/solution.pxd",
    "src/function/solution.pxi",
    "include/mesh/traverse.pxd",
    "src/mesh/traverse.pxi",
    "include/function/exact_solution.pxd",
    "src/function/exact_solution.pxi",
    "include/calculation_continuity.pxd",
    "src/calculation_continuity.pxi",
    "include/boundary_conditions/essential_boundary_conditions.pxd",
    "src/boundary_conditions/essential_boundary_conditions.pxi",
    "include/shapeset/shapeset.pxd",
    "src/shapeset/shapeset.pxi",
    "include/space/space.pxd",
    "src/space/space.pxi",
    "include/mesh/mesh.pxd",
    "src/mesh/mesh.pxi",
    "include/function/transformable.pxd",
    "src/function/transformable.pxi",
    "include/mesh/hash.pxd",
    "src/mesh/hash.pxi",
    "include/mesh/curved.pxd",
    "src/mesh/curved.pxi",
    "include/views/view.pxd",
    "src/views/view.pxi",
    "include/views/mesh_view.pxd",
    "src/views/mesh_view.pxi",
    "include/views/order_view.pxd",
    "src/views/order_view.pxi",
    "include/function/function.pxd",
    "src/function/function.pxi",
    "include/quadrature/quad.pxd",
    "src/quadrature/quad.pxi",
    "include/function/mesh_function.pxd",
    "src/function/mesh_function.pxi",
    "include/mesh/refmap.pxd",
    "src/mesh/refmap.pxi",
    "include/views/scalar_view.pxd",
    "src/views/scalar_view.pxi",
    "include/views/linearizer_base.pxd",
    "src/views/linearizer_base.pxi",
    "include/views/linearizer.pxd",
    "src/views/linearizer.pxi",
    "include/views/base_view.pxd",
    "src/views/base_view.pxi",
    "include/space/space_h1.pxd",
    "src/space/space_h1.pxi",
    "include/space/space_l2.pxd",
    "src/space/space_l2.pxi",
    "include/space/space_hcurl.pxd",
    "src/space/space_hcurl.pxi",
    "include/space/space_hdiv.pxd",
    "src/space/space_hdiv.pxi",
    "include/forms.pxd",
    "src/forms.pxi",
    "include/projections/ogprojection.pxd",    
    "src/projections/ogprojection.pxi",    
    "include/weakform/weakform.pxd",
    "src/weakform/weakform.pxi",
    "custom_classes/exact_solution.pxi",
    "custom_classes/exact_solution.cpp",
    "custom_classes/weakform.pxi",
    "custom_classes/weakform.cpp",
    "include/mesh/mesh_reader_h2d_xml.pxd",
    "src/mesh/mesh_reader_h2d_xml.pxi",
    "include/mesh/mesh_reader_h1d_xml.pxd",
    "src/mesh/mesh_reader_h1d_xml.pxi",
    "include/discrete_problem.pxd",
    "src/discrete_problem.pxi",
    "include/adapt/adapt.pxd",
    "src/adapt/adapt.pxi",
    "include/refinement_selectors/optimum_selector.pxd",
    "src/refinement_selectors/optimum_selector.pxi",
    "include/views/vector_view.pxd",
    "src/views/vector_view.pxi",
    "include/newton_solver.pxd",
    "src/newton_solver.pxi",
    "include/picard_solver.pxd",
    "src/picard_solver.pxi",
    "include/function/filter.pxd",
    "src/function/filter.pxi",
    "include/runge_kutta.pxd",
    "src/runge_kutta.pxi",
    "src/weakform_library/weakforms_h1.pxi",
    "include/weakform_library/weakforms_h1.pxd"
    ],language="c++",libraries=["hermes2d"])]
)
