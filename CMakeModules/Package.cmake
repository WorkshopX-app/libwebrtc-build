#
# Create package
set(CPACK_PACKAGE_NAME "LibWebRTC")
set(CPACK_PACKAGE_VERSION_MAJOR "${LIBWEBRTC_MAJOR_VERSION}")
set(CPACK_PACKAGE_VERSION_MINOR "${LIBWEBRTC_MINOR_VERSION}")
set(CPACK_PACKAGE_VERSION_PATCH "${LIBWEBRTC_PATCH_VERSION}")

set(CPACK_INSTALL_CMAKE_PROJECTS
    "${CPACK_INSTALL_CMAKE_PROJECTS};${CMAKE_BINARY_DIR}/libwebrtc;libwebrtc;ALL;/")

if (WIN32)
  set(CPACK_GENERATOR "7Z")
else (WIN32)
  set(CPACK_GENERATOR "TGZ")
endif (WIN32)

set(CPACK_INCLUDE_TOPLEVEL_DIRECTORY 0)
set(CPACK_PACKAGE_FILE_NAME "libwebrtc-${LIBWEBRTC_VERSION}-${TARGET_OS}-${TARGET_CPU}")
set(CPACK_PACKAGE_INSTALL_DIRECTORY "libwebrtc")

include(CPack)
