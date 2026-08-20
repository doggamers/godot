scons platform=linux target=editor arch=x86_64 d3d12=no production=yes module_mono_enabled=yes
#scons platform=linux target=template_release arch=x86_64 d3d12=no production=yes module_mono_enabled=yes
#scons platform=linux target=template_debug arch=x86_64 d3d12=no production=yes module_mono_enabled=yes

# Generate glue sources
bin/godot.linuxbsd.editor.x86_64.mono --headless --generate-mono-glue modules/mono/glue
# Generate binaries
./modules/mono/build_scripts/build_assemblies.py --godot-output-dir ./bin --push-nupkgs-local "/home/sketched/Documents/dev/MyLocalNugetSource/" --godot-platform=linuxbsd
