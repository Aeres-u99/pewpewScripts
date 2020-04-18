source "`ueberzug library`"

# process substitution example:
ImageLayer 0< <(
    ImageLayer::add [identifier]="example0" [x]="$2" [y]="$3" [path]=$1
    read
    )

# group commands example:

