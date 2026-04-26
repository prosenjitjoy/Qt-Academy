qt_add_library(ThirdPartyLibrary point2d.h point2d.cpp)

qt_extract_metatypes(ThirdPartyLibrary)

target_link_libraries(ThirdPartyLibrary PUBLIC
  Qt6::Core
)