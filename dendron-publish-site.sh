rm -rf .next
rm -rf docs
rm -rf node_modules
npm install -g npm
npm install @dendronhq/dendron-cli@latest
npx dendron publish init
npx dendron publish export
mv .next/out docs
