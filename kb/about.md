---
layout: page
title: About
permalink: /about/
---

This KB is used by [Mergesium](https://mergesium.com) to publish up-to-date workarounds when available for projects that are built with autotools and editted with VScode, using the <a href='https://marketplace.visualstudio.com/items?itemName=mergesium.autotools'>Mergesium Autotools Integration</a>

Projects that rely on [autotools](https://www.gnu.org/software/automake/manual/html_node/GNU-Build-System.html) (aka. the GNU Build System) to build frequently do not implement autotool's built-in functionality, and instead opt for home-grown scripts to accomplish building and testing tasks.

The Autotools Integration is able to distinguish build targets and test suites automatically, and is able to drive the build, test and debug tasks using VScode semantics (eg, using Build Tasks, Testing UI, or built-in debugging), but only if they are implemented in the straightforward, conventional manner documented in the [autotools documentation](https://www.gnu.org/software/automake/manual/html_node/GNU-Build-System.html)

Since the Autotools Integration extension is not able to work with the variety of non-standard home-grown scripts, many projects don't integrate smoothly with vscode editing, and are not able to access many of the powerful features of vscode like syntax highlighting, turn-key testing and debugging.

This knowledgebase documents how unconventional project can be used with the integration, and frequently how they can be modified to make them more conventional.

More importantly, the Autotools Integration extension may contain bugs, despite the maintainer's best efforts. In those cases, a missing KB page (404) for the project you are editing indicates that the maintainer is unaware of the behaviour you've encountered. You are invited to report these cases with an [issue report](https://github.com/Mergesium/autotools/issues/new)
