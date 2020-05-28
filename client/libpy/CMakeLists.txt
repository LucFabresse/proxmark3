# version
cmake_minimum_required(VERSION 3.4.1)

add_definitions(-DHAVE_STDINT_H)

# Root path into client
set(PM3_ROOT ../../)

find_package(PkgConfig)
pkg_search_module(PYTHON3 QUIET python3)
pkg_search_module(PYTHON3EMBED QUIET python3-embed)

if (PYTHON3EMBED_FOUND)
    message("Python3-embed library found, building with python3 support :)")
    set(ADDITIONAL_DIRS ${PYTHON3EMBED_INCLUDE_DIRS} ${ADDITIONAL_DIRS})
    set(ADDITIONAL_LNK ${PYTHON3EMBED_LIBRARIES} ${ADDITIONAL_LNK})
    set(ADDITIONAL_LNKDIRS ${PYTHON3EMBED_LIBRARY_DIRS} ${ADDITIONAL_LNKDIRS})
elseif (PYTHON3_FOUND)
    message("Python3 library found, building with python3 support :)")
    set(ADDITIONAL_DIRS ${PYTHON3_INCLUDE_DIRS} ${ADDITIONAL_DIRS})
    set(ADDITIONAL_LNK ${PYTHON3_LIBRARIES} ${ADDITIONAL_LNK})
    set(ADDITIONAL_LNKDIRS ${PYTHON3_LIBRARY_DIRS} ${ADDITIONAL_LNKDIRS})
endif (PYTHON3EMBED_FOUND)

# client resources
add_library(_libpm3 SHARED
        libpm3_wrap.c
        )

# includes
target_include_directories(_libpm3 PRIVATE
        ${CMAKE_CURRENT_SOURCE_DIR}
        ${PM3_ROOT}/include/
        ${PM3_ROOT}/common
        ${PM3_ROOT}/common_fpga
        ${PM3_ROOT}/client/src
        ${ADDITIONAL_DIRS}
)

target_compile_options(_libpm3 PUBLIC -Wall -Werror -O3)
target_link_libraries(_libpm3 PRIVATE pm3rrg_rdv4)
target_link_directories(_libpm3 PRIVATE ../lib/build)
