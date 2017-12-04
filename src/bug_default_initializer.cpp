struct test
{
private:
    static const int foo = 0xAFFE;
public:
    int bar = foo;
};

int main() {
    test var1{};
    return 0;
}
