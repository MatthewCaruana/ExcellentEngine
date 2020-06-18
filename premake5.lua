workspace "ExcellentEngine"
	location "Generated"
	language "C++"
	architecture "x64"
	
	configurations {"Debug", "Release"}
	
	filter { "configurations:Debug"}
		symbols "On"
		
	filter { "configurations:Release" }
		optimize "On"
	

project "Math"
	kind "StaticLib"
	
	targetdir ("build/bin/%{cfg.longname}/%{prj.name}")
	objdir ("build/obj/%{cfg.longname}/%{prj.name}")
	
	files {
		"ExcellentEngine/Math/**.cpp",
		"ExcellentEngine/Math/**.h"
	}
	
project "ExcellentEngine"
	kind "ConsoleApp"
	targetdir ("build/bin/%{cfg.longname}/%{prj.name}")
	objdir ("build/obj/%{cfg.longname}/%{prj.name}")
	
	files{
		"ExcellentEngine/Application/**.cpp",
		"ExcellentEngine/Application/**.h"
	}
	
	vpaths{
		["imgui/*"] = { "ExcellentEngine/Application/imgui/*.cpp", "ExcellentEngine/Application/imgui/*.h" }
	}
	
	includedirs{
		"ExcellentEngine/Math", "vendor/GLFW/include", "vendor/GLEW/include"
	}
	links {
		"Math", "glfw3", "glew32", "glew32s"
	}
	
	libdirs{
		"vendor/GLEW/lib/Release/x64", "vendor/GLFW/lib-vc2019"
	}
	
	
	
	filter { "system:windows" }
		links { "opengl32" }
		
	filter { "system:not windows" }
		links { "GL" }
	