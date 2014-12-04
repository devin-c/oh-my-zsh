#
# Color grep results
# Examples: http://rubyurl.com/ZXv
#

grep_options="--color=auto"

# avoid VCS folders (if the necessary grep flags are available)
grep-flag-available() {
    echo | grep $1 "" >/dev/null 2>&1
}
if grep-flag-available --exclude-dir=.cvs; then
    for PATTERN in .cvs .git .hg .svn; do
        grep_options+=" --exclude-dir=$PATTERN"
    done
elif grep-flag-available --exclude=.cvs; then
    for PATTERN in .cvs .git .hg .svn; do
        grep_options+=" --exclude=$PATTERN"
    done
fi
unfunction grep-flag-available

alias grep="grep $grep_options"
export GREP_COLOR='1;32'
