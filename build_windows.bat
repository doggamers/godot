scons platform=windows target=editor arch=x86_64 production=yes
scons platform=windows target=template_release arch=x86_64 use_mingw=yes production=yes lto=full
scons platform=windows target=template_debug arch=x86_64 use_mingw=yes production=yes debug_symbols=yes lto=full