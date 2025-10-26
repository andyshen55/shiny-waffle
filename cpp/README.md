# C++ Learning Environment

A beginner-friendly C++ learning environment for practicing problem-solving and coding exercises.

## 🚀 Getting Started

### Quick Start

To compile and run the example program:
```bash
./run.sh problems/hello.cpp
```

The `run.sh` script will:
1. Compile your C++ program with helpful warnings
2. Put the executable in the `bin/` folder
3. Run it automatically after successful compilation

### Prerequisites

This setup uses `clang++` which comes pre-installed on macOS. If you don't have a C++ compiler, install one:

- **macOS**: Already installed with Xcode Command Line Tools
- **Linux**: `sudo apt-get install clang` or `sudo apt-get install g++`
- **Windows (WSL2)**: `sudo apt-get install clang`

## 📁 Folder Structure

```
cpp/
├── problems/          # Your C++ problem files
│   ├── hello.cpp     # Example program
│   └── ...           # Add more problems here
├── bin/              # Compiled executables (auto-created)
├── run.sh            # Compile-and-run helper script
├── README.md         # This file
└── .clang-format     # Code style configuration
```

## ✍️ How to Add a New Problem

1. **Copy an example:**
   ```bash
   cp problems/hello.cpp problems/my_problem.cpp
   ```

2. **Edit your problem:**
   Open `problems/my_problem.cpp` in any text editor and start coding!

3. **Run your program:**
   ```bash
   ./run.sh problems/my_problem.cpp
   ```

That's it! Your compiled program will be in `bin/my_problem`.

## 🛠️ How to Compile

### Using the Helper Script (Recommended for Beginners)

```bash
./run.sh problems/hello.cpp
```

This automatically compiles and runs your program.

### Manual Compilation

If you want to compile manually:

```bash
# Compile
clang++ -std=c++17 -Wall -Wextra -O2 -o bin/hello problems/hello.cpp

# Run
./bin/hello
```

**Compile flags explained:**
- `-std=c++17`: Use modern C++17 standard
- `-Wall -Wextra`: Show helpful warnings about potential bugs
- `-O2`: Optimize code for better performance

### Alternative Compilation (using g++)

```bash
g++ -std=c++17 -Wall -Wextra -O2 -o bin/hello problems/hello.cpp
```

## 🐛 Debugging Tips

### Enable Debug Information

Edit `run.sh` and change the compile line to include `-g`:

```bash
# Change this line in run.sh:
clang++ -std=c++17 -Wall -Wextra -O2 -g -o "$OUTPUT_NAME" "$SOURCE_FILE"
```

Now you can use a debugger like GDB or LLDB:

```bash
# With gdb
gdb bin/my_problem

# With lldb (macOS default)
lldb bin/my_problem
```

### Common Compilation Flags

- **`-g`**: Add debug symbols for debugging
- **`-fsanitize=address`**: Detect memory errors (very helpful!)
- **`-fsanitize=undefined`**: Detect undefined behavior

Example with sanitizers:
```bash
clang++ -std=c++17 -Wall -Wextra -fsanitize=address -g -o bin/my_problem problems/my_problem.cpp
```

## 💡 Tips

- **Start simple**: Begin with basic input/output programs
- **Use the warnings**: Pay attention to compiler warnings—they often point to bugs!
- **Read error messages**: They usually tell you exactly what's wrong
- **Format your code**: Run `clang-format -i problems/your_file.cpp` to auto-format

## 📚 Next Steps

1. Try modifying `hello.cpp` to solve different problems
2. Experiment with arrays, strings, and data structures
3. Practice with different algorithms (sorting, searching, etc.)
4. Add your own test cases and expected outputs

## 📝 Example Problem Structure

A typical problem file looks like this:

```cpp
#include <iostream>
#include <vector>
// Add more headers as needed

using namespace std;

int main() {
    // Your solution here
    int n;
    cin >> n;
    
    // Process input
    // Solve the problem
    // Output result
    
    return 0;
}
```

## 🔧 Troubleshooting

**Problem**: `./run.sh: Permission denied`  
**Solution**: Run `chmod +x run.sh` to make it executable

**Problem**: Compiler not found  
**Solution**: Install clang or g++ (see Prerequisites section)

**Problem**: Executable in wrong folder  
**Solution**: The script creates executables in `bin/` folder—this is intentional for organization

## 📄 License

This is a personal learning environment. Feel free to use and modify as needed!

