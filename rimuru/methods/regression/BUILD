load("//rimuru:rimuru.bzl", "rr_cc_test", "rr_filegroup")
load("//rimuru/core/default:rules_cc.bzl", "cc_library")

package(
    default_visibility = ["//visibility:public"],
)

rr_filegroup(
    name = "rr_lir_src",
    srcs = ["linear_regression/linear_regression_main.cc"],
)

rr_filegroup(
    name = "rr_lir_hdrs",
    srcs = ["linear_regression/linear_regression_main.h"],
)

cc_library(
    name = "rr_lir",
    data = [
        ":rr_lir_hdrs",
        ":rr_lir_src",
    ],
)

cc_library(
    name = "rr_lor",
    srcs = ["logistic_regression/logistic_regression_main.cc"],
    hdrs = ["logistic_regression/logistic_regression_main.h"],
)

rr_cc_test(
    name = "rr_lir_test",
    srcs = ["linear_regression/linear_regression_main_test.cc"],
    deps = [
        ":rr_lir",
        "@googletest//:gtest_main",
    ],
)

# rr_cc_test(
#     name = "rr_lor_test",
#     srcs = [""],
#     deps = [
#         ":rr_lor",
#         "@googletest//:gtest_main",
#     ],
# )
