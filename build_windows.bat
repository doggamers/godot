set MINGW_PREFIX=D:\dog\llvm-mingw
scons platform=windows target=editor arch=x86_64 use_mingw=yes production=yes lto=full module_mono_enabled=yes
scons platform=windows target=template_release arch=x86_64 use_mingw=yes production=yes lto=full module_mono_enabled=yes winrt=no
bin\godot.windows.editor.x86_64.mono --headless --generate-mono-glue modules/mono/glue
python .\modules\mono\build_scripts\build_assemblies.py --godot-output-dir ./bin --push-nupkgs-local "D:\dog\MyLocalNugetSource" --godot-platform=windows