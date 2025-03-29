Remove-Item buildeps -Recurse -Force
New-Item -ItemType Directory buildeps

# Windows ffmpeg
Invoke-WebRequest https://github.com/EIRTeam/FFmpeg-Builds/releases/download/latest/ffmpeg-master-latest-win64-lgpl-godot.tar.xz -OutFile "buildeps/ffmpeg.tar.xz"
tar xf buildeps/ffmpeg.tar.xz -C buildeps

# SDL for windows
Invoke-WebRequest https://github.com/libsdl-org/SDL/releases/download/release-2.30.9/SDL2-devel-2.30.9-VC.zip -OutFile "buildeps/SDL.zip"
Expand-Archive -Path buildeps/SDL.zip -DestinationPath "buildeps/sdl_msvc"
mv buildeps/sdl_msvc/SDL2-2.30.9/* buildeps/sdl_msvc