struct test
{
    unsigned char  field1;
    unsigned short field2;
    unsigned long  field3;
} __attribute__((__packed__));

typedef struct test test_t;


int main() {
    test_t var1, var2;
    return 0;
}

