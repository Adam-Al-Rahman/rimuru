load("//rimuru:rimuru.bzl", "rr_cc_test")
load("//rimuru/core/default:rules_cc.bzl", "cc_library")

cc_library(
    name = "etl",
    srcs = ["etl/etl.cc"],
    hdrs = ["etl/etl.h"],
    visibility = ["//rimuru:__pkg__"],
    deps = [
        "//third_party/eigen3",
        "@com_google_absl//absl/strings",
        "@glog",
    ],
)

rr_cc_test(
    name = "etl_test",
    srcs = ["etl/etl_test.cc"],
    deps = [
        ":etl",
        "@googletest//:gtest_main",
    ],
)
