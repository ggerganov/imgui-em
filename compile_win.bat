@echo off
For /f "tokens=2-4 delims=/ " %%a in ('date /t') do (set mydate=%%c-%%a-%%b)
For /f "tokens=1-2 delims=/:" %%a in ('time /t') do (set mytime=%%a%%b)

echo static const char * BUILD_TIMESTAMP="%mydate%_%mytime%"; > build_timestamp.h

em++ -std=c++11 -s USE_SDL=2 ^
    ./main.cpp ./imgui_impl_sdl_em.cpp ./external/imgui/imgui.cpp ./external/imgui/imgui_draw.cpp ^
    ./external/imgui/imgui_widgets.cpp ./external/imgui/imgui_demo.cpp ^
    -o imgui.js ^
    -I ./external/imgui/ ^
    -s "EXPORTED_FUNCTIONS=['_setArticleWidth', '_main']" ^
    -s "EXTRA_EXPORTED_RUNTIME_METHODS=['ccall', 'cwrap']"
