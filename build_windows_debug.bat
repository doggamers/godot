scons platform=windows target=template_debug arch=x86_64 use_mingw=yes production=yes debug_symbols=yes lto=full module_mono_enabled=yes

bin\godot.windows.editor.x86_64.mono --headless --generate-mono-glue modules/mono/glue
python .\modules\mono\build_scripts\build_assemblies.py --godot-output-dir ./bin --push-nupkgs-local "D:\dog\MyLocalNugetSource" --godot-platform=windows