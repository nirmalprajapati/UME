
set(USE_MPI False CACHE BOOL "Enable support for MPI code")

if(USE_MPI)
  find_package(MPI REQUIRED)
  set(COMMON_LINK_LIBRARIES MPI::MPI_CXX)
  set(COMMON_COMPILE_DEFINITIONS
    ${COMMON_COMPILE_DEFINITIONS}
    HAVE_MPI
    )
endif()
