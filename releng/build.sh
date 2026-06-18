#!/bin/bash
# Copyright (C) Eclipse Foundation, Inc. and others. 
# 
# This program and the accompanying materials are made available under the
# terms of the Eclipse Public License v. 2.0 which is available at
# https://www.eclipse.org/legal/epl-2.0.
# 
# SPDX-License-Identifier: EPL-2.0

# TODO incorporate this script into the Maven build.
# 
# This script likely only runs on Wayne's desktop.

cd "${BASH_SOURCE%/*}"

# Generate the commits file for document history
# Output to the Antora content location
git log --no-merges --pretty=format:"- %cs %s" --since "$(date --date='-3 month')" \
	| sed -e 's|#\([0-9]\+\)|https://gitlab.eclipse.org/eclipse/technology/dash/org.eclipse.dash.handbook/-/issues/\1[#\1]|g' \
	> ../modules/ROOT/pages/chapters/commits.adoc

# Also keep the legacy source location for Maven backward compatibility
cp ../modules/ROOT/pages/chapters/commits.adoc ../source/chapters/commits.adoc

# Legacy Maven build
mvn -f ../pom.xml clean process-resources
cp ../target/generated-docs/eclipse.html /gitroot/www.eclipse.org/projects/handbook/.
