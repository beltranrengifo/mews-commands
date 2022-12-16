MY_MEWS_JS_DIRECTORY_PATH=~/Dev/Mews/mews-js

INFO_COLOR='\033[1;35m'
NEUTRAL_TEXT_COLOR='\033[0;37m'
WARN_COLOR='\033[1;33m'

## The available commands.
## Remember to add new commands here before modifying the `mews` function
# as the new command should exist in the `MEWS_AVAILABLE_COMMANDS` array
COMMANDER="commander"
NAVIGATOR="navigator"
DISTRIBUTOR="distributor"
STORYBOOK="storybook"
PULL_JS="pull-js"
# wrap commands in an array just for convenience
MEWS_AVAILABLE_COMMANDS=($COMMANDER $NAVIGATOR $DISTRIBUTOR $STORYBOOK $PULL_JS)