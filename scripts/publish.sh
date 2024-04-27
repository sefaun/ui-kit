#!/bin/sh

set -e

pnpm i --frozen-lockfile
pnpm update:version

pnpm build

cd dist/element-plus
npm publish --provenance
cd -

cd internal/eslint-config
npm publish
cd -

echo "✅ Publish completed"
