# Findpolyscope.cmake

#[============[
Findpolyscope
----------
find polyscope library.
Set 'polyscope_DIR' to the path of this file.

Result Variables
^^^^^^^^^^^^^^^^
``polyscope_FOUND``
``polyscope_INCLUDE_DIRS``
``polyscope_LIBRARIES``

Cache Variables
^^^^^^^^^^^^^^^

``polyscope_INCLUDE_DIR``
    the path include the polyscope.h.


]============]

# use find_path to get a path anchor
find_path(polyscope_INCLUDE_DIR
    NAMES polyscope.h
    PATHS ${CMAKE_CURRENT_LIST_DIR}/../include/polyscope
    PATH_SUFFIXES polyscope)
set(polyscope_DIR ${polyscope_INCLUDE_DIR}/../..)


if(${polyscope_INCLUDE_DIR} STREQUAL polyscope-NOTFOUND)
  message("can't found polyscope")
  set(polyscope_FOUND False)
else()
  message("found polyscope at path:" ${polyscope_INCLUDE_DIR})
  
  set(polyscope_FOUND True)
  set(polyscope_INCLUDE_DIRS ${polyscope_DIR}/include
                            ${polyscope_DIR}/deps/args
                            ${polyscope_DIR}/deps/glad/include
                            ${polyscope_DIR}/deps/glfw/include`
                            ${polyscope_DIR}/deps/glm
                            ${polyscope_DIR}/deps/happly
                            ${polyscope_DIR}/deps/json/include
                            ${polyscope_DIR}/deps/stb
                            ${polyscope_DIR}/deps/imgui/imgui
  )
  set(polyscope_LIBRARIES ${polyscope_DIR}/build/src
                        ${polyscope_DIR}/build/deps/glad/src
                        ${polyscope_DIR}/build/deps/glfw/src
                        ${polyscope_DIR}/build/deps/imgui
                        ${polyscope_DIR}/build/deps/stb
  )

endif()




