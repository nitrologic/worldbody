cmake_minimum_required(VERSION 3.22)

#simon was here
if(APPLE)
SET(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -w -std=c++17")
add_definitions( -D__MACOSX_CORE__ )
endif()
if(WIN32)
#box2d rule
add_definitions( -D_M_X64 )
add_definitions( -D_WIN64 )
add_definitions( -DWIN32 )
add_definitions( -DUNICODE )
add_definitions( -D_UNICODE )
endif(WIN32)

add_subdirectory( box2c )


project(worldbody)

include_directories(
    box2c/include
)

add_executable(worldbody worldbody.cpp)
target_link_libraries(worldbody box2d)