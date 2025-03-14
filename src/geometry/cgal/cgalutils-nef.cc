
// Portions of this file are Copyright 2021 Google LLC, and licensed under GPL2+. See COPYING.
#include "geometry/cgal/cgalutils.h"

namespace CGALUtils {

template <typename K>
void inPlaceNefUnion(CGAL::Nef_polyhedron_3<K>& lhs, const CGAL::Nef_polyhedron_3<K>& rhs)
{
  lhs += rhs;
}

template <typename K>
void inPlaceNefDifference(CGAL::Nef_polyhedron_3<K>& lhs, const CGAL::Nef_polyhedron_3<K>& rhs)
{
  lhs -= rhs;
}

template <typename K>
void inPlaceNefIntersection(CGAL::Nef_polyhedron_3<K>& lhs, const CGAL::Nef_polyhedron_3<K>& rhs)
{
  lhs *= rhs;
}

} // namespace CGALUtils
