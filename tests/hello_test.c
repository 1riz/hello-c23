#include "hello.h"
#include "unity/unity.h"

void setUp(void) {}

void tearDown(void) {}

void test_function_should_return_hello(void)
{
    TEST_ASSERT_EQUAL_STRING(S_HELLO, hello());
}

int main(void)
{
    UNITY_BEGIN();
    RUN_TEST(test_function_should_return_hello);
    return UNITY_END();
}
