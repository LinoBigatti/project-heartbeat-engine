set -e

mkdir -p buildeps
cd buildeps

# Linux ffmpeg
wget https://github.com/EIRTeam/FFmpeg-Builds/releases/download/latest/ffmpeg-master-latest-linux64-lgpl-godot.tar.xz
tar xf ffmpeg-master-latest-linux64-lgpl-godot.tar.xz

# Windows ffmpeg
wget https://github.com/EIRTeam/FFmpeg-Builds/releases/download/latest/ffmpeg-master-latest-win64-lgpl-godot.tar.xz
tar xf ffmpeg-master-latest-win64-lgpl-godot.tar.xz

git clone https://github.com/libsdl-org/SDL -b SDL2 sdl