project "ImGui"
  kind "StaticLib"
  language "C++"

    targetdir ("bin/" .. outputdir .. "/%{prj.name}")
    objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

    files {
      "imconfig.h",
      "imgui.h",
      "imgui.cpp",
      "imgui_draw.cpp",
      "imgui_internal.h",
      "imgui_tables.cpp",
      "imgui_widgets.cpp",
      "imgui_demo.cpp",
      "imstb_rectpack.h",
      "imstb_textedit.h",
      "imstb_truetype.h"
    }

    filter "system:windows"
    systemversion "latest"
    cppdialect "C++20"
    staticruntime "On"

    filter { "system:windows", "configurations:Release" }
      buildoptions "/MT"