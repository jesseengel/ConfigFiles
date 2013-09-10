#! /bin/bash

emacs -Q -batch -L . \  # don't forget the dot!
    -L ~/.emacs.d/python/ein_helpers/websocket.el \
    -L ~/.emacs.d/auto-complete-1.3.1/auto-complete.el \  # optional
    -L ~/.emacs.d/python/ein_helpers/popup.el \
    -L ~/.emacs.d/smartrep/smartrep.el      \  # optional
    -f batch-byte-compile *.el \

#    -L PATH/TO/rst-mode/      \  # optional
#    -L PATH/TO/fuzzy/         \  # optional (for auto-complete)
#    -L PATH/TO/nxhtml/util/   \  # optional (for MuMaMo)
