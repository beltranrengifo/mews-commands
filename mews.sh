DIRECTORY="$(dirname $(realpath "$0"))"
source $DIRECTORY/config.sh

function mews() {
  if [[ ! " ${MEWS_AVAILABLE_COMMANDS[*]} " =~ " $1 " ]]
  then
    echo -e $WARN_COLOR "\nCommand not found 🤷🏼‍♂️\nCurrent available Mews commands: $INFO_COLOR${MEWS_AVAILABLE_COMMANDS[*]}"
    return
  fi

  previousPath=`pwd`
  cd $MY_MEWS_JS_DIRECTORY_PATH

  case $1 in
    $STORYBOOK)
      yarn workspace @mews-ui/storybook start
      ;;

    $PULL_JS)
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