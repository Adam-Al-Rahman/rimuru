""" Rimuru workspace initialization. Consult the WORKSPACE on how to use it."""

# Import external repository rules.
load("@hedron_compile_commands//:workspace_setup.bzl", "hedron_compile_commands_setup")

def workspace():
    """ workspace of the rimuru folders """
    hedron_compile_commands_setup()

# Alias so it can be loaded without assigning to a different symbol to prevent
# shadowing previous loads and trigger a buildifier warning.
rr_workspace1 = workspace
