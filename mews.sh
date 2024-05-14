DIRECTORY="$(dirname $(realpath "$0"))"
source $DIRECTORY/config.sh
source $DIRECTORY/utils.sh

function mews() {
  previousPath=`pwd`

  if [[ ! " ${MEWS_AVAILABLE_COMMANDS[*]} " =~ " $1 " ]]
  then
    echo -e $WARN_COLOR "\nCommand not found! 🤷🏼‍♂️\nCurrently available Mews commands:\n$INFO_COLOR${MEWS_AVAILABLE_COMMANDS[*]}"
    cd $previousPath
    return
  fi

  cd $MY_MEWS_JS_DIRECTORY_PATH

  case $1 in
    $HI)
      echo -e "\nHi there from Mews Commands!! 🤗\nAvailable commands:\n$INFO_COLOR${MEWS_AVAILABLE_COMMANDS[*]}"
      ;;

    $STORYBOOK)
      title $STORYBOOK_TITLE
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

    $DISTRIBUTOR)
      title $DISTRIBUTOR_TITLE
      open "$BASE_DEV_URL/$DISTRIBUTOR_URL_PARAMS" && yarn workspace mews-$1 start
      ;;

    $NAVIGATOR)
      title $NAVIGATOR_TITLE
      yarn workspace mews-$1 start
      ;;

    $NAVIGATOR_SB)
      title $NAVIGATOR_SB_TITLE
      yarn workspace @mews-navigator/storybook start
      ;;

    $COMMANDER)
      title $COMMANDER_TITLE
      yarn workspace mews-$1 start
      ;;

    $TS)
      if [[ ! " ${TS_AVAILABLE_COMMANDS[*]} " =~ " $2 " ]]
      then
        echo -e $WARN_COLOR "\nTS command not found! 🤷🏼‍♂️\nCurrently available TS commands:\n$INFO_COLOR${TS_AVAILABLE_COMMANDS[*]}"
        cd $previousPath
        return
      fi

      echo -e $INFO_COLOR🛡️ " Typescript check on" $2 "workspace" 🛡️

      case $2 in
        $OPTIMUS)
          yarn workspace @optimus-web/core typescript
          ;;
        $COMMANDER)
          yarn workspace @mews-commander/core typescript && yarn workspace @mews-commander/backend-bridge typescript && yarn workspace mews-commander typescript
          ;;
        $NAVIGATOR)
          yarn workspace @mews-navigator/core typescript
          ;;
        $DISTRIBUTOR)
          yarn workspace mews-distributor typescript
          ;;
        $FRAMEWORK)
          yarn workspace @mews/framework typescript
          ;;
        $ALL)
          yarn workspace @optimus-web/core typescript && yarn workspace @mews-commander/core typescript && yarn workspace @mews-commander/backend-bridge typescript && yarn workspace mews-commander typescript && yarn workspace @mews-navigator/core typescript && yarn workspace mews-distributor typescript && yarn workspace @mews/framework typescript
          ;;
        esac
        if [ $? -eq 0 ]; then
          echo -e $SUCCESS_COLOR"TS check succeeded"
        else
          echo -e $ERROR_COLOR"TS check failed"
        fi
  esac

  cd $previousPath
}