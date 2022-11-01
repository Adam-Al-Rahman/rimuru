cc_library(
    name = "core_fib",
    srcs = ["fib.cc"],
    hdrs = ["fib.h"],
    visibility = ["//visibility:public"],
)

cc_test(
    name = "fib_test",
    srcs = ["fib_test.cc"],
    deps = [
        "//rimuru/core:core_fib",
        "@googletest//:gtest_main",
    ],
)
