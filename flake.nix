{
  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
  inputs.flake-utils.url = "github:numtide/flake-utils";

  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = nixpkgs.legacyPackages.${system};
      in
      {
        devShells.default = pkgs.mkShell {
          nativeBuildInputs = with pkgs; [ pkg-config autoPatchelfHook ];
          runtimeDependencies = with pkgs; [
            libGL
            vulkan-loader
            xorg.libX11
            xorg.libXcursor
            xorg.libXext
            xorg.libXi
            xorg.libXrandr
          ];
          buildInputs = with pkgs; [ scons mold clang ffmpeg-full ];
          shellHook = ''export LD_LIBRARY_PATH="'' + nixpkgs.lib.makeLibraryPath [ pkgs.ffmpeg-full ] + ''"'';
        };
      });
}
