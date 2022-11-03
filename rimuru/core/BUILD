load("//rimuru:rimuru.bzl", "rr_cc_test")
load("//rimuru/core/default:rules_cc.bzl", "cc_library")

cc_library(
    name = "core_fib",
    srcs = ["fib.cc"],
    hdrs = ["fib.h"],
    visibility = ["//rimuru:__pkg__"],
)

rr_cc_test(
    name = "fib_test",
    srcs = ["fib_test.cc"],
    deps = [
        ":core_fib",
        "@googletest//:gtest_main",
    ],
)
