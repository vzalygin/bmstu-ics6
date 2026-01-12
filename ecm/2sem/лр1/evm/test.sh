JOPA=1
if [[ "$JOPA" ]]; then
    for entry in "."/*; do
        cat $entry
    done
else
    echo 321
fi

ls 1 || echo 1