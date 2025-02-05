RESOURCES_LIBRARY()



INCLUDE(${ARCADIA_ROOT}/build/platform/python/resources.inc)

IF (OS_LINUX)
    IF (ARCH_ARM64 OR ARCH_AARCH64)
        DECLARE_EXTERNAL_RESOURCE(EXTERNAL_PYTHON27 ${PYTHON27_LINUX_ARM64})
    ELSE()
        DECLARE_EXTERNAL_RESOURCE(EXTERNAL_PYTHON27 ${PYTHON27_LINUX})
    ENDIF()
ELSEIF (OS_DARWIN)
    DECLARE_EXTERNAL_RESOURCE(EXTERNAL_PYTHON27 ${PYTHON27_DARWIN})
ELSEIF (OS_WINDOWS)
    DECLARE_EXTERNAL_RESOURCE(EXTERNAL_PYTHON27 ${PYTHON27_WINDOWS})
ENDIF()

END()
