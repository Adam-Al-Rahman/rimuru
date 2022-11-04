"""Utilities for defining Rimuru Bazel dependencies."""

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def rr_http_archive(
        name,
        url,
        build_file = None,
        sha256 = None,
        strip_prefix = None):
    """ Downloads and creates Bazel repos for dependencies."""

    # TODO(@Adam-Al-Rahman):  Implement a swappable replacement for both http_archive() and
    # new_http_archive().
    http_archive(
        name = name,
        url = url,
        build_file = build_file,
        sha256 = sha256,
        strip_prefix = strip_prefix,
    )
