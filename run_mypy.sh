#!/usr/bin/env bash

set -o errexit
count_changed_files() {
	local directory=$1
	echo $(git diff --cached --name-only --diff-filter=ACM $directory | wc -l)
}

# Change directory to the project root directory.
cd "$(dirname "$0")"

# Run mypy on Dex.
if test $(count_changed_files sample) -gt 0; then
	poetry run mypy sample tests
fi

if test $(count_changed_files tests) -gt 0; then
	poetry run mypy tests
fi
