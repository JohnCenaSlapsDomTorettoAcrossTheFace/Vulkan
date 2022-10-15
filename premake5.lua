include "Dependencies.lua"

workspace "VulkanAPI"
   architecture "x86_64"
   startproject "VulkanAPI"

	configurations
	{
		"Debug",
		"Release",
	}

project "VulkanAPI"
   kind "ConsoleApp"
   language "C++"
   cppdialect "C++17"
   staticruntime "off"

outputdir = "%{cfg.buildcfg}-%{cfg.system}-%{cfg.architecture}"

targetdir ("%{wks.location}/bin/" .. outputdir .. "/%{prj.name}")
objdir ("%{wks.location}/bin-int/" .. outputdir .. "/%{prj.name}")

files
{
   "src/**.h",
   "src/**.cpp",
   "include/GLFW/glfw3.h",
   "include/GLFW/glfw3native.h",
   "Vendor/glm/glm/**.hpp",
	"Vendor/glm/glm/**.inl",
}

includedirs
{
	"src",
	"%{IncludeDir.VulkanSDK}",
   "%{IncludeDir.GLFW}",
   "%{IncludeDir.GLM}",
   "%{IncludeDir.STBImage}",
   "%{IncludeDir.imgui}",
   "%{IncludeDir.tol}",
}

libdirs
{
   "%{LibraryDir.VulkanSDK}",
   "%{LibraryDir.GLFW}";
}

links 
{
   "%{Library.Vulkan}",
   "%{Library.VulkanUtils}",
   "%{Library.GLFW}",
}

   filter "configurations:Debug"
      defines { "VulkanAPI_DEBUG" }
      symbols "On"

   filter "configurations:Release"
      defines { "VulkanAPI_RELEASE" }
      optimize "On"