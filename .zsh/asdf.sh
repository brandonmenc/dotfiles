ASDF_DIR=$(brew --prefix asdf)
[ ! -d $ASDF_DIR ] && ASDF_DIR=$HOME/.asdf

. $ASDF_DIR/asdf.sh
. $ASDF_DIR/completions/asdf.bash

