alias st='svn st --ignore-externals | grep -v ^X'
alias sd='svn diff | subl'
alias sup='svn up'
alias sc='svn commit'
alias sadd='svn status | grep "^?" | awk "{print $2}" | xargs svn add'