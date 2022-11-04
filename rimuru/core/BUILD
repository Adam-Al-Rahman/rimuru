load("//rimuru:rimuru.bzl", "rr_cc_test")
load("//rimuru/core/default:rules_cc.bzl", "cc_library")

cc_library(
    name = "core_lib",
    srcs = ["fib.cc"],
    hdrs = ["fib.h"],
    visibility = ["//rimuru:__pkg__"],
    deps = [
        "@com_google_absl//absl/strings:str_format",
        "@glog",
    ],
)

rr_cc_test(
    name = "core_test",
    srcs = ["fib_test.cc"],
    deps = [
        ":core_lib",
        "@googletest//:gtest_main",
    ],
)
