#!/bin/bash

HUGO="hugo"

# Get commit hashes and versions for Build Commit message
BUILD_HASH=$(git rev-parse --short HEAD)
BUILD_DESCRIPTION=$(git log --format=%B -n 1 $SITE_HASH)
HUGO_VERSION=$($HUGO version)
COMMIT_MESSAGE="repo: ${BUILD_HASH}, hugo: ${HUGO_VERSION:6:7}"
COMMIT_DESCRIPTION_1=""
COMMIT_DESCRIPTION_2="${BUILD_DESCRIPTION}"

# Remove all files, because Hugo cannot detect deleted pages and files
# Do not remove .git!
find ./public -mindepth 1 ! -regex '^./public/\.git\(/.*\)?' -delete

$HUGO
npx -y pagefind --site public  # Pagefind site search

cd public
git restore .domains  # Domain configuration for Codeberg Pages
git restore _redirects  # Redirects configuration for Codeberg Pages <https://docs.codeberg.org/codeberg-pages/redirects>
git add pagefind
git diff

echo "${COMMIT_MESSAGE}"
echo "${COMMIT_DESCRIPTION_1}"
echo "${COMMIT_DESCRIPTION_2}"
read -p "Publish the site? " -n 1 -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]; then
    git add ./*  # Include EVERYTHING
    git commit -m "$COMMIT_MESSAGE" -m "$COMMIT_DESCRIPTION_1" -m "$COMMIT_DESCRIPTION_2"
    git push
    git fetch  # Refresh things and ensure the repo is synced
fi

exit 0
