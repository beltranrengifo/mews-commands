# Allow the user to set the title.
function title {
   PROMPT_COMMAND="echo -ne \"\033]0;$1 (on $HOSTNAME)\007\""
}