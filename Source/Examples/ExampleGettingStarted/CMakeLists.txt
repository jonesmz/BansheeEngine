# Source files and their filters
include(CMakeSources.cmake)

# Includes
set(ExampleGettingStarted_INC 
	"./"
	"../../bsf/Source/Foundation/bsfUtility"
	"../../bsf/Source/Foundation/bsfCore"
	"../../bsf/Source/Foundation/bsfEngine")

include_directories(${ExampleGettingStarted_INC})	
	
# Target
if(WIN32)
	add_executable(ExampleGettingStarted WIN32 ${BS_EXAMPLEPROJECT_SRC})
else()
	add_executable(ExampleGettingStarted ${BS_EXAMPLEPROJECT_SRC})
endif()
	
# Libraries
## Local libs
target_link_libraries(ExampleGettingStarted bsf)

# IDE specific
set_property(TARGET ExampleGettingStarted PROPERTY FOLDER Examples)

# Plugin dependencies
add_engine_dependencies(ExampleGettingStarted)
add_dependencies(ExampleGettingStarted bsfFBXImporter bsfFontImporter bsfFreeImgImporter)
