set(BS_EXAMPLEPHYSICALLYBASEDSHADING_INC_NOFILTER
	"CameraFlyer.h"
	"ObjectRotator.h"
)

set(BS_EXAMPLEPHYSICALLYBASEDSHADING_SRC_NOFILTER
	"CameraFlyer.cpp"
	"ObjectRotator.cpp"
	"Main.cpp"
)

source_group("Header Files" FILES ${BS_EXAMPLEPHYSICALLYBASEDSHADING_INC_NOFILTER})
source_group("Source Files" FILES ${BS_EXAMPLEPHYSICALLYBASEDSHADING_SRC_NOFILTER})

set(BS_EXAMPLEPHYSICALLYBASEDSHADING_SRC
	${BS_EXAMPLEPHYSICALLYBASEDSHADING_INC_NOFILTER}
	${BS_EXAMPLEPHYSICALLYBASEDSHADING_SRC_NOFILTER}
)