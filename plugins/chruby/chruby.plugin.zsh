function {
  typeset chruby_path=$1

  # Use /usr/share/chruby as the default chruby path
  [ -z $chruby_path ] && chruby_path="/usr/share/chruby/"

  if [ -f "$chruby_path/chruby.sh" ]; then
    source "$chruby_path/chruby.sh"
  else
    echo "chruby.sh not found in $chruby_path"
  fi

  if [ -f "$chruby_path/auto.sh" ]; then
    source "$chruby_path/auto.sh"
  else
    echo "auto.sh not found in $chruby_path"
  fi

} "$CHRUBY_PATH"
