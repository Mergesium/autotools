---
layout: page
title: Maintainer Mode
permalink: /maintainer-mode/
---

In general, whether a software project that uses the Autotools build system should be distributed with maintainer mode enabled or disabled depends on the intended audience and purpose of the distribution.

### Distributing with Maintainer Mode Enabled

If the software is intended for developers, contributors, or individuals who plan to modify and contribute to the project, it might be beneficial to distribute the project with maintainer mode enabled. Maintainer mode includes additional checks, tests, and features that aid developers in the development and debugging process.

To distribute with maintainer mode enabled, you can configure the project with:

```bash
./configure --enable-maintainer-mode
```

This ensures that additional debugging features and checks are included in the build, providing a more comprehensive environment for developers actively working on the codebase.

### Distributing with Maintainer Mode Disabled

On the other hand, if the software is intended for end-users who simply want to install and use the application without engaging in development or debugging activities, it may be preferable to distribute the project with maintainer mode disabled. This results in a leaner and more optimized build without the extra features and checks that are primarily useful for developers.

To distribute with maintainer mode disabled, you can use the default configuration command:

```bash
./configure
```

This produces a build tailored for users who are not actively involved in the development process and prioritizes a more streamlined and efficient installation.

In summary, the decision to distribute with maintainer mode enabled or disabled depends on the target audience and the goals of the distribution. For developer-focused distributions, maintainer mode can be enabled, while user-focused distributions may benefit from maintainer mode being disabled.

### "Disable Maintainer Mode" setting

When checked, the `autotools.disableMaintainerMode` causes the extension to append `--disable-maintainer-mode` to the command line whenever it calls the `configure` script, for all builds of a project.

If you are a **developer** and want to **manually** regenerate the configure script and Makefiles, best practice is:
  * leave the project's default disabled (by omitting `AM_MAINTAINER_MODE` from your `configure.ac`)
  * add `--enable-maintainer-mode` to the `configureArgs` for each build configuration.

If you are a **user** (will not be modifying the build system), best practice is:
  * leave the `autotools.disableMaintainerMode` to its default setting (checked)
