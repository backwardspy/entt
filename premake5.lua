target_triple = "%{cfg.buildcfg}-%{cfg.system}-%{cfg.architecture}"

project "entt"
    kind "None"
    language "C++"
    cppdialect "C++17"

    targetdir ("bin/"..target_triple.."/%{prj.name}")
    objdir ("bin/obj/"..target_triple.."/%{prj.name}")

    files {
        "src/**.hpp",
        "src/**.cpp",
    }

    includedirs "src"

    filter "configurations:debug"
        defines "DEBUG"
        symbols "On"

    filter "configurations:release"
        defines "NDEBUG"
        optimize "On"
