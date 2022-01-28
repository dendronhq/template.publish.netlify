#!/usr/bin/env bash
# dendron-publish-site.sh
# This script should exist in the root of your workspace

# Remove docs directory if present
rm -rf docs

# Uncomment if wishing to remove cache
# Recommended: Leave cache alone to increase speed of deployments
#rm -rf .next
#rm -rf node_modules

# Install latest version of Dendron
# yarn install @dendronhq/dendron-cli@latest
# OPTIONALLY
# Install version of Dendron from yarn.lock in workspace root
# To use:
# Uncomment the next line, and comment out the other `yarn install ...` line
yarn

# Generate static site with nextjs
yarn dendron publish init
yarn dendron publish export

# Move generated website to docs directory in workspace root
mv .next/out docs
