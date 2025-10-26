#include <iostream>
#include <string>

int main() {
    std::cout << "Hello, World!" << std::endl;
    
    // Example: Get user input
    std::string name;
    std::cout << "What's your name? ";
    std::getline(std::cin, name);
    
    std::cout << "Nice to meet you, " << name << "!" << std::endl;
    return 0;
}

