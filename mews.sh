##############################################
#                                            #
# Mews useful stuff                          #
#                                            #
##############################################
WARN_COLOR='\033[1;33m'
INFO_COLOR='\033[1;35m'
NEUTRAL_TEXT_COLOR='\033[0;37m'
MEWS_AVAILABLE_COMMANDS=("commander" "navigator" "distributor" "ds-sb" "pull-js")
MY_MEWS_JS_PATH=~/Dev/Mews/mews-js

function mews() {
  if [[ ! " ${MEWS_AVAILABLE_COMMANDS[*]} " =~ " $1 " ]]
  then
    echo -e $WARN_COLOR "\nCommand not found 🤷🏼‍♂️\nCurrent available Mews commands: $INFO_COLOR${MEWS_AVAILABLE_COMMANDS[*]}"
    return
  fi

  previousPath=`pwd`
  cd $MY_MEWS_JS_PATH

  case $1 in
    ds-sb)
      yarn workspace @mews-ui/storybook start
      ;;

    pull-js)
      currentBranch=$(git symbolic-ref --short HEAD)
      echo -e $INFO_COLOR"Current branch is ${currentBranch}"${NEUTRAL_TEXT_COLOR}
      git checkout master
      git pull origin master
      echo -e $INFO_COLOR"Checking out to previous branch ${currentBranch}"${NEUTRAL_TEXT_COLOR}
      git checkout $currentBranch
      ;;

    *)
      yarn workspace mews-$1 start
      ;;
  esac

  cd $previousPath
}