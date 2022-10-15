--VulkanAPI Dependencies

--VULKAN_SDK = os.getenv("VULKAN_SDK")

IncludeDir = {}
IncludeDir["VulkanSDK"] = "C:/VulkanSDK/1.3.224.1/Include"
IncludeDir["GLFW"] =  "%{wks.location}/VulkanAPI/Vendor/GLFW/include"
IncludeDir["GLM"] = "%{wks.location}/VulkanAPI/Vendor/glm"
IncludeDir["STBImage"] = "%{wks.location}/VulkanAPI/Vendor/stb"
IncludeDir["imgui"] = "%{wks.location}/VulkanAPI/Vendor/imgui"
IncludeDir["tol"] = "%{wks.location}/VulkanAPI/Vendor/tinyobjloader"

LibraryDir = {}
LibraryDir["VulkanSDK"] = "C:/VulkanSDK/1.3.224.1/Lib"
LibraryDir["GLFW"] = "%{wks.location}/VulkanAPI/Vendor/GLFW/lib-vc2022"

Library = {}
Library["Vulkan"] = "vulkan-1.lib"
Library["VulkanUtils"] = "VkLayer_utils.lib"
Library["GLFW"] = "glfw3.lib"

