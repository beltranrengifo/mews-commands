# MEWS COMMANDS

This script enables some shortcuts for the Mews JS monorepo

## Available commands

- `mews hi`: welcomes you and reminds the available commands
- `mews commander`: runs the Commander app
- `mews navigator`: runs the Navigator app
- `mews distributor`: runs the Distributor app and opens a new browser tab loading the URL mandatory params for the app to load properly
- `mews storybook`: runs the Design System Storybook server
- `mews pull-js`: updates the master branch of the Mews JS monorepo

This commands run globally, from any directory you would be in.

## I want to use this

- Fork the repo to a folder of your choice in your computer
- Modify the `MY_MEWS_JS_DIRECTORY_PATH` value in the `config` file, matching your directory path
- Add this script to your `.bash` or `.zshrc` file, something like:
  - `source ~/[my-path]/[my-folder]/mews-commands/mews.sh`
- Reload the terminal session or open another one
- Type `mews hi`, a greeting should appear in the terminal prompt
- If so, all set! Please contribute with useful commands and shortcuts!
