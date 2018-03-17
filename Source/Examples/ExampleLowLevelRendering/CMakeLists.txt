# Source files and their filters
include(CMakeSources.cmake)

# Includes
set(ExampleLLR_INC 
	"./"
	"../../bsf/Source/Foundation/bsfUtility"
	"../../bsf/Source/Foundation/bsfCore"
	"../../bsf/Source/Foundation/bsfEngine")

include_directories(${ExampleLLR_INC})	
	
# Target
if(WIN32)
	add_executable(ExampleLowLevelRendering WIN32 ${BS_EXAMPLELLR_SRC})
else()
	add_executable(ExampleLowLevelRendering ${BS_EXAMPLELLR_SRC})
endif()
	
# Libraries
## Local libs
target_link_libraries(ExampleLowLevelRendering bsf)

# IDE specific
set_property(TARGET ExampleLowLevelRendering PROPERTY FOLDER Examples)

# Dependencies
add_engine_dependencies(ExampleLowLevelRendering)
add_dependencies(ExampleLowLevelRendering bsfFBXImporter bsfFontImporter bsfFreeImgImporter)
