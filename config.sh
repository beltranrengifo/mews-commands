MY_MEWS_JS_DIRECTORY_PATH=~/Dev/Mews/mews-js

BASE_DEV_URL=http://localhost:8080
DISTRIBUTOR_URL_PARAMS="?location=https://api.mews-develop.com&ids=be054e6a-2e0b-4916-ab2f-f16863b63dfa;60098ea6-16a6-4a17-a908-aa5e00fd5be8"

INFO_COLOR='\033[1;35m'
NEUTRAL_TEXT_COLOR='\033[0;37m'
WARN_COLOR='\033[1;33m'
SUCCESS_COLOR='\033[1;32m'
ERROR_COLOR='\033[1;31m'

## The available commands.
## Remember to add new commands here before modifying the `mews` function
# as the new command should exist in the `MEWS_AVAILABLE_COMMANDS` array
COMMANDER="commander"
NAVIGATOR="navigator"
DISTRIBUTOR="distributor"
STORYBOOK="storybook"
PULL_JS="pull-js"
HI="hi"
TS="ts"
OPTIMUS="optimus"
FRAMEWORK="framework"
ALL="all"

# wrap commands in an array just for convenience
MEWS_AVAILABLE_COMMANDS=($COMMANDER $NAVIGATOR $DISTRIBUTOR $STORYBOOK $PULL_JS $HI $TS)
TS_AVAILABLE_COMMANDS=($COMMANDER $NAVIGATOR $DISTRIBUTOR $OPTIMUS $FRAMEWORK $ALL)

# Window titles
COMMANDER_TITLE="Mews Commander aka Mews Operations"
NAVIGATOR_TITLE="Mews Navigator aka Guest Portal"
DISTRIBUTOR_TITLE="Mews Distributor aka Booking Engine"
STORYBOOK_TITLE="Mews UI Storybook"