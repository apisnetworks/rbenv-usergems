VERSION=`rbenv version-name`

if [ "$VERSION" = "system" ]; then
  RBENV_GEMSET_ROOT="$RBENV_GEMSET_SYSTEM_ROOT"
else
  RBENV_GEMSET_ROOT="$HOME/.rbenv_gems/$VERSION"
fi

command="${RBENV_GEMSET_ROOT}/bin/$RBENV_COMMAND"
if [ -x "$command" ]; then
  RBENV_COMMAND_PATH="$command"
  break
fi
