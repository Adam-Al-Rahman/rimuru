
#include "etl.h"

#include <gtest/gtest.h>

TEST(ETLREADCSVTEST, ETLREADCSVTESTRETURN) {
  rimuru::ETL etl_test(false);
  EXPECT_EQ(etl_test.read_csv("dataset/test.csv"),
            "hello world in the world of mine");
}
