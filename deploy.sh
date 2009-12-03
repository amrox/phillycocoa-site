rsync -avz --exclude='*svn*' --exclude='.DS_Store' output/ -e ssh $1
