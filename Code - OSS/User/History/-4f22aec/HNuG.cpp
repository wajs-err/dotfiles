#include <iostream>
#include <vector>


consteval int f() {
	std::vector v = {1, 2 ,3, 4, 5};
	v.push_back(6);
	return 0;
}


int main() {
	std::cout << f() << '\n';
}
