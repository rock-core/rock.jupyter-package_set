# Using Jupyter in Rock workspaces

This package sets provides a way to install Jupyter and use it within a Rock
workspace, for instance to analyze and plot Rock log data.

For now, adding the package set and selecting `rock.jupyter.osdeps` within your layout
will enable Jupyter and the Jupyter Ruby kernel in a workspace-local way (i.e.
the jupyter config within the workspace will be local to the workspace).  The
config and the data is currently in the workspace prefix, under the `jupyter`
folder.
