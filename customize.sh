mmrl_exec() {
    if [ "$MMRL_INTR" = "true" ]; then
    local command=$1
    shift
    local args=$(printf "|%s" "$@")
    args=${args:1}
    echo "#!mmrl:<$command=($args)>"
    fi
}

mmrl_exec color "<FG.MAGENTA>MMRL<R> <FG.BLUE>Install<R> <BG.RED>V3 API Test<R>"

echo "$MODPATH"

mmrl_exec addImage "/$MODPATH/cover.png"

abort "Not installed"
