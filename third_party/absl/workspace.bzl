"""Provides the repository macro to import absl."""

load("//third_party:repo.bzl", "rr_http_archive")

def repo():
    """Imports absl."""

    ABSL_COMMIT = "273292d1cfc0a94a65082ee350509af1d113344d"
    ABSL_SHA256 = "94aef187f688665dc299d09286bfa0d22c4ecb86a80b156dff6aabadc5a5c26d"

    SKYLIB_SHA256 = "f7be3474d42aae265405a592bb7da8e171919d74c16f082a5457840f06054728"

    # bazel_skylib is dependency of abseil
    rr_http_archive(
        name = "bazel_skylib",
        url = "https://github.com/bazelbuild/bazel-skylib/releases/download/1.2.1/bazel-skylib-1.2.1.tar.gz",
        sha256 = SKYLIB_SHA256,
    )

    rr_http_archive(
        name = "com_google_absl",
        sha256 = ABSL_SHA256,
        build_file = "//third_party/absl:com_google_absl.BUILD",
        strip_prefix = "abseil-cpp-{commit}".format(commit = ABSL_COMMIT),
        url = "https://github.com/abseil/abseil-cpp/archive/{commit}.tar.gz".format(commit = ABSL_COMMIT),
    )
