VERSION=`rbenv version-name`

shopt -s nullglob
gemset_bin=($HOME/.rbenv-gems/${VERSION}/bin/*)
shopt -s nullglob

cd "$SHIM_PATH"
make_shims ${gemset_bin[@]}
cd "$CUR_PATH"
