if [ "$MMRL_INTR" = "true" ]; then
    mmrl_exec() { ui_print "#!mmrl:$*"; }
    gui_print() { mmrl_exec color "\"$@\""; }
    mmrl_setLastLine() { mmrl_exec setLastLine "\"$@\""; }
    gui_image() { mmrl_exec addImage "$*"; }
else
    mmrl_exec() { true; }
    gui_print() { ui_print "$@" | sed 's/<[A-Z.]*>//g'; }
    mmrl_setLastLine() { true; }
    gui_image() { true; }
fi

gui_print "<FG.MAGENTA>MMRL<R> <FG.BLUE>Install<R> <BG.RED>V2 API Test<R>"

gui_image "$MODPATH/cover.png"

abort "Not installed"
