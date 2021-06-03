<!--
 * Copyright (C) 2015 Eclipse Foundation, Inc. and others. 
 * 
 * This program and the accompanying materials are made available under the
 * terms of the Eclipse Public License v. 2.0 which is available at
 * http://www.eclipse.org/legal/epl-2.0.
 * 
 * SPDX-FileType: DOCUMENTATION
 *
 * SPDX-FileCopyrightText: 2015 Eclipse Foundation, Inc.
 * SPDX-FileCopyrightText: 2015 Contributors to the Eclipse Foundation
 *
 * SPDX-License-Identifier: EPL-2.0
-->
 
# Contributing to Eclipse Dash, Tools for Committers

Thanks for your interest in this project.

## Project description

Eclipse Dash is a place where the community itself collaborates on tools for
community awareness and collaboration in support of our ultimate objective of
committer quality and cooperation.

* https://projects.eclipse.org/projects/technology.dash

## Developer resources

The source for the Eclipse Project Handbook is maintained in the the following 
source code repository.

* http://git.eclipse.org/c/dash/org.eclipse.dash.handbook.git

Note that the repository includes some submodules, clone using 
`--recurse-submodules` to ensure that you have all of the content. 

e.g.

    git clone --recurse-submodules git://git.eclipse.org/gitroot/dash/org.eclipse.dash.handbook.git

This project uses GitLab issues to track ongoing development and issues.

* Search for issues: https://gitlab.eclipse.org/eclipse/dash/org.eclipse.dash.handbook/-/issues
* Older bugs were being tracked in bugzilla: https://bugs.eclipse.org/bugs/buglist.cgi?product=Dash&component=Handbook
* Create a new report: https://gitlab.eclipse.org/eclipse/dash/org.eclipse.dash.handbook/-/issues/new

Be sure to search for existing bugs before you create another one. Remember that
contributions are always welcome!

We use Maven to build.

    mvn compile

Content is rendered into the `./target` folder in HTML, PDF, and EPUB formats.

The `README.md` file contains information regarding how we structure documents
and other guidelines regarding content.

## Eclipse Contributor Agreement

Before your contribution can be accepted by the project team contributors must
electronically sign the Eclipse Contributor Agreement (ECA).

* http://www.eclipse.org/legal/ECA.php

Commits that are provided by non-committers must have a Signed-off-by field in
the footer indicating that the author is aware of the terms by which the
contribution has been provided to the project. The non-committer must
additionally have an Eclipse Foundation account and must have a signed Eclipse
Contributor Agreement (ECA) on file.

For more information, please see the Eclipse Committer Handbook:
https://www.eclipse.org/projects/handbook/#resources-commit

## Contact

Contact the project developers via the project's "dev" list.

* https://dev.eclipse.org/mailman/listinfo/dash-dev