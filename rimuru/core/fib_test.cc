
#include "fib.h"

#include <gtest/gtest.h>

TEST(HWTEST, HWPRINTRETURN) {
  EXPECT_EQ(demo::hello_world("hello world"), "hello world");
}
