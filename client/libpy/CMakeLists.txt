# version
cmake_minimum_required(VERSION 3.4.1)

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

add_library(_libpm3 SHARED ../src/libpm3_pywrap.c)
target_include_directories(_libpm3 PRIVATE ../include ${ADDITIONAL_DIRS})
target_compile_options(_libpm3 PUBLIC -Wall -Werror -O3)
target_link_libraries(_libpm3 PRIVATE pm3rrg_rdv4)
target_link_directories(_libpm3 PRIVATE ../lib/build)
