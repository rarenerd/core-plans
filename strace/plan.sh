pkg_name=strace
pkg_origin=core
pkg_version=5.1
pkg_license=("LGPL-2.1-or-later")
pkg_description="strace is a system call tracer for Linux"
pkg_maintainer="The Habitat Maintainers <humans@habitat.sh>"
pkg_upstream_url="https://strace.io/"
pkg_source="https://github.com/strace/strace/releases/download/v${pkg_version}/${pkg_name}-${pkg_version}.tar.xz"
pkg_shasum=f5a341b97d7da88ee3760626872a4899bf23cf8dee56901f114be5b1837a9a8b
pkg_deps=(
  core/glibc
  core/libunwind
)
pkg_build_deps=(
  core/coreutils
  core/make
  core/gcc
  core/diffutils
)
pkg_bin_dirs=(bin)
pkg_lib_dirs=(lib)
pkg_include_dirs=(include)

do_check() {
  make check
}
