# imgui-em
Emscripten port of [Dear ImGui](https://github.com/ocornut/imgui)

**Note:** This repo is outdated and no longer maintained. Instead, consider using the Emscripten example coming with Dear ImGui.

For Dear ImGui over WebSockets check this repo: https://github.com/ggerganov/imgui-ws

---

Dear ImGui 'master' branch demo:  https://ggerganov.github.io/jekyll/update/2018/02/11/imgui-em.html

Dear ImGui 'docking' branch demo: https://ggerganov.github.io/jekyll/update/2018/02/11/imgui-em.html?branch=docking

Many thanks to Omar Cornut for the awsome lib https://github.com/ocornut/imgui

# Build

    $ git clone https://github.com/ggerganov/imgui-em/
    $ cd imgui-em
    $ git submodule update --init
    $ ./compile.sh

Windows:

    > compile_win.bat
