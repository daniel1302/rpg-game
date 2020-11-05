
set(LIB_SOURCES

)

set(APP_HEADERS
)

set(APP_SOURCES
main.cpp
)


find_package(SDL2 REQUIRED)
include_directories(${SDL2_INCLUDE_DIRS})

add_executable(RPGGame ${APP_SOURCES} ${APP_HEADERS})
target_link_libraries(RPGGame ${SDL2_LIBRARIES})