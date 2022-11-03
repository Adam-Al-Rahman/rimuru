"""Define a bazel macro that creates for rimuru."""

load("//rimuru/core/default:rules_cc.bzl", "cc_test")

# rimuru cc_test macro
def rr_cc_test(
        name,
        srcs,
        deps,
        data = [],
        suffix = "",
        **kwargs):
    cc_test(
        name = "%s%s" % (name, suffix),
        srcs = srcs,
        deps = deps,
        data = data,
        **kwargs
    )
