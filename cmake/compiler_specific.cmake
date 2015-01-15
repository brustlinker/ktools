if(CMAKE_COMPILER_IS_GNUCC OR CMAKE_COMPILER_IS_GNUCXX)
	set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -fstack-protector -pipe -std=gnu++98")
	add_definitions(-DFORTIFY_SOURCE=2)
	set(CMAKE_CXX_FLAGS_RELEASE "-O3")
	set(CMAKE_EXE_LINKER_FLAGS_RELEASE "-s")
elseif(MSVC)
	add_definitions(-D_SECURE_SCL=0 -D_CRT_SECURE_NO_WARNINGS)
endif()
