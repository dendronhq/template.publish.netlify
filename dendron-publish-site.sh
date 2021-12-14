#!/usr/bin/env bash
# dendron-publish-site.sh
# This script should exist in the root of your workspace

# Remove cached or otherwise present directories meant to be replaced
rm -rf .next
rm -rf docs
rm -rf node_modules

# Install latest version of Dendron
npm install @dendronhq/dendron-cli@latest
# OPTIONALLY
# Install version of Dendron from package-lock.json in workspace root
# To use:
# Uncomment the next line, and comment out the other `npm install ...` line
# npm install

# Generate static site with nextjs
npx dendron publish init
npx dendron publish export

# Move generated website to docs directory in workspace root
mv .next/out docs
