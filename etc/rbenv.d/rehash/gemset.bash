VERSION=`rbenv version-name`

SHIM_PATH=$HOME/.rbenv-usergems/shims

mkdir -p $SHIM_PATH

shopt -s nullglob
gemset_bin=($HOME/.rbenv-usergems/${VERSION}/bin/*)
shopt -s nullglob

cd "$SHIM_PATH"
make_shims ${gemset_bin[@]}
cd "$CUR_PATH"

shopt -s nullglob
gemset_bin=($RBENV_ROOT/versions/${VERSION}/bin/*)
shopt -s nullglob

cd "$SHIM_PATH"
make_shims ${gemset_bin[@]}
cd "$CUR_PATH"
