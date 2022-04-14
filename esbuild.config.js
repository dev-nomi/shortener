const path = require('path')
const rails = require('esbuild-rails')
const vue = require('esbuild-vue');

require("esbuild").build({
  entryPoints: ["application.js"],
  bundle: true,
  outdir: path.join(process.cwd(), "app/assets/builds"),
  absWorkingDir: path.join(process.cwd(), "app/javascript"),
  watch: process.argv.includes("--watch"),
  plugins: [rails(),vue()],
}).catch(() => process.exit(1))