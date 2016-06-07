#include <iostream>

int main() {
  unsigned msb = __builtin_clz(1 << (31 - 8));
  std::cout << "msb: " << msb << std::endl;
  return 0;
}
