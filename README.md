# vs-code-fast_input
Guys, I have created a tool for competitive programmers in Visual Studio Code that runs on the Fedora operating system; this tool allows for rapid input handling.
# C++ Fast Input Tool for Linux (Bash)

A lightweight Bash script and terminal shortcut for Linux (tested on Fedora) to streamline competitive programming. It automatically compiles your latest `.cpp` file and feeds specific test cases from an `input.txt` file directly into your program without any extra clutter.

## Features

- **Auto-detection**: Automatically finds the most recently modified `.cpp` file in the current directory.
- **Quick Compilation**: Compiles with C++20 and optimizations (`-O2`) using `g++`.
- **Test Case Management**: Easily run specific test cases (from `in1` to `in20`) using an `input.txt` file separated by `---`.
- **Clean Output**: Displays only your program's raw output.

## Installation & Setup

Open your terminal and open your bash configuration file:
```
nano ~/.bashrc
```
Copy the script from the repository and paste it at the very end of the file.

Save and exit the editor:

Press Ctrl + O, then hit Enter.

Press Ctrl + X to exit.

Reload your terminal to apply the changes:
```
source ~/.bashrc
```
