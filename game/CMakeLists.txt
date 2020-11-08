cmake_minimum_required(VERSION 3.7)
set(CMAKE_MODULE_PATH ${CMAKE_MODULE_PATH} ${CMAKE_CURRENT_SOURCE_DIR}/../cmake)

set(CMAKE_RUNTIME_OUTPUT_DIRECTORY "${CMAKE_BINARY_DIR}/bin")
set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY "${CMAKE_BINARY_DIR}/lib") 
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY "${CMAKE_BINARY_DIR}/lib")

set(PROJECT_NAME RPGGame)

set(LIB_SOURCES

)

set(APP_HEADERS
)

set(APP_SOURCES
    src/main.cpp
)


find_package(SDL2 REQUIRED)
include_directories(${SDL2_INCLUDE_DIRS})

add_executable(${PROJECT_NAME}  ${APP_SOURCES} ${APP_HEADERS})
target_link_libraries(${PROJECT_NAME}  ${SDL2_LIBRARIES})

if (EMSCRIPTEN)
    set(CMAKE_C_LINK_FLAGS "")
    set(CMAKE_CXX_LINK_FLAGS "")
    set(CMAKE_C_COMPILER emcc)
    set(CMAKE_CXX_COMPILER emcc)
    set(CMAKE_EXECUTABLE_SUFFIX ".html")

    target_link_libraries(${PROJECT_NAME} "-s USE_SDL=2")
    
    if (WASM)
        target_link_libraries(${PROJECT_NAME} "-s WASM=1")
    else()
        target_link_libraries(${PROJECT_NAME} "-s WASM=0")
    endif()
else()

endif()