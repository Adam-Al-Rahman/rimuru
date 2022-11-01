workspace(name = "rimuru")

# Initialize the Rimuru repo and all its dependencies.

# The cascade of load() statements and rr_workspace?() calls works around the
# restriction that load() statements need to be at the top of .bzl files.
# E.g. we can not retrieve a new repository with http_archive and then load()
# a macro from that repository in the same file.

load("@//rimuru:workspace0.bzl", "rr_workspace0")

rr_workspace0()
