"""Provides the repo macro to import pybind11_abseil.
pybind11_abseil requires pybind11 (which is loaded in another rule) and pybind11_bazel.
See https://github.com/pybind/pybind11_abseil#installation.
"""

load("//third_party:repo.bzl", "rr_http_archive")

def repo():
    """Imports pybind11_abseil."""

    PA_COMMIT = "2c4932ed6f6204f1656e245838f4f5eae69d2e29"
    PA_SHA256 = "0223b647b8cc817336a51e787980ebc299c8d5e64c069829bf34b69d72337449"
    rr_http_archive(
        name = "pybind11_abseil",
        sha256 = PA_SHA256,
        strip_prefix = "pybind11_abseil-{commit}".format(commit = PA_COMMIT),
        url = "https://github.com/pybind/pybind11_abseil/archive/{commit}.tar.gz".format(commit = PA_COMMIT),
        build_file = "//third_party/pybind11_abseil:BUILD",
    )

    # pybind11_bazel is a dependency of pybind11_abseil.
    PB_COMMIT = "72cbbf1fbc830e487e3012862b7b720001b70672"
    PB_SHA256 = "516c1b3a10d87740d2b7de6f121f8e19dde2c372ecbfe59aef44cd1872c10395"
    rr_http_archive(
        name = "pybind11_bazel",
        strip_prefix = "pybind11_bazel-{commit}".format(commit = PB_COMMIT),
        sha256 = PB_SHA256,
        url = "https://github.com/pybind/pybind11_bazel/archive/{commit}.tar.gz".format(commit = PB_COMMIT),
    )
