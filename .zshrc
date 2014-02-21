# hight cat
alias pcat="pygmentize -f terminal256 -O style=native -g"

# colorful json
alias json='python -m json.tool | pcat'

# hight less
export LESS='-R'
export LESSOPEN='|~/.lessfilter %s'

# clear
alias c='clear'

# simple http server
alias httpsvr='python -m SimpleHTTPServer' $1

#auto jump
[[ -s ~/.autojump/etc/profile.d/autojump.sh ]] && . ~/.autojump/etc/profile.d/autojump.sh

# mark
export MARKPATH=$HOME/.marks
function jump { 
    cd -P "$MARKPATH/$1" 2>/dev/null || echo "No such mark: $1"
}
function mark { 
    mkdir -p "$MARKPATH"; ln -s "$(pwd)" "$MARKPATH/$1"
}
function unmark { 
    rm -i "$MARKPATH/$1"
}
function marks {
    ls -l "$MARKPATH" | awk -F' ' 'NR!=1 {print $(NF-2), $(NF-1), $NF}' 
}

function swap {
    mv $1 $2 -b && mv $2~ $1
}
