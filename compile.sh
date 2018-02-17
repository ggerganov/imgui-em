#!/bin/bash

echo "static const char * BUILD_TIMESTAMP=\"`date`\";" > build_timestamp.h

em++ -std=c++11 -s USE_SDL=2 \
    ./main.cpp ./imgui_impl_sdl_em.cpp ./external/imgui/imgui.cpp ./external/imgui/imgui_draw.cpp \
    ./external/imgui/imgui_demo.cpp \
    -o imgui.js \
    -I ./external/imgui/ \
    -s EXPORTED_FUNCTIONS='["_setArticleWidth", "_main"]' \
    -s EXTRA_EXPORTED_RUNTIME_METHODS='["ccall", "cwrap"]'
