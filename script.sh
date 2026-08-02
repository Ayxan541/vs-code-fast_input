# Silent C++ Competitive Programming Auto-Tester
run_cpp_case() {
    local case_num=$1

    # Check for input.txt
    if [ ! -f "input.txt" ]; then
        echo "Error: input.txt not found!"
        return 1
    fi

    # Find the most recently modified .cpp file
    local cpp_file=$(ls -t *.cpp 2>/dev/null | head -n 1)

    if [ -z "$cpp_file" ]; then
        echo "Error: No .cpp file found!"
        return 1
    fi

    # Compile the .cpp file silently
    g++ -O2 -std=c++20 "$cpp_file" -o a

    # If compilation fails, g++ will print its own error, so we just stop here
    if [ $? -ne 0 ]; then
        return 1
    fi

    # Extract the test case and run the program (NO extra prints)
    python3 -c "
import sys
try:
    case_idx = $case_num - 1
    with open('input.txt', 'r') as f:
        content = f.read()
    cases = [c.strip() for c in content.split('---') if c.strip()]
    if 0 <= case_idx < len(cases):
        print(cases[case_idx])
except:
    pass
" | ./a
}

# Create shortcuts from in1 to in20
for i in {1..20}; do
    alias in$i="run_cpp_case $i"
done
