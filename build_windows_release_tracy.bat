scons platform=windows target=template_release arch=x86_64 debug_symbols=yes profiler=tracy profiler_path=D:/GitHub/tracy module_mono_enabled=yes

bin\godot.windows.editor.x86_64.mono --headless --generate-mono-glue modules/mono/glue
python .\modules\mono\build_scripts\build_assemblies.py --godot-output-dir ./bin --push-nupkgs-local "D:\dog\MyLocalNugetSource" --godot-platform=windows