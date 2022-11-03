"""Provides the repository macro to import Eigen."""

load("//third_party:repo.bzl", "rr_http_archive")

def repo():
    """Imports Hedron's Compile Commands Extractor for Bazel."""

    HEDRON_COMMIT = "12440540f4461cac006a357257d698aed74a2423"
    # HEDRON_SHA256 = "9808bf8fbd491bd9f1c69c8c86ca67a2fc62e3af56b434a8272111d526d7daec"

    # https://github.com/hedronvision/bazel-compile-commands-extractor
    rr_http_archive(
        name = "hedron_compile_commands",
        url = "https://github.com/hedronvision/bazel-compile-commands-extractor/archive/{commit}.tar.gz".format(commit = HEDRON_COMMIT),
        strip_prefix = "bazel-compile-commands-extractor-{commit}".format(commit = HEDRON_COMMIT),
        # sha256 = HEDRON_SHA256,
    )
