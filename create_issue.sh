#!/bin/bash

rm -rf /opt/test/jenkins-pipeline-tutorial
cd /opt/test
git clone https://github.com/athorat940/jenkins-pipeline-tutorial.git
cd /opt/test/jenkins-pipeline-tutorial
git checkout feature
cat >> xyz.txt <<- "EOF"
"Hello everyone!!"
EOF
git add .
git commit -m "Updated file"
git push
gh pr create --fill
ranNum=$[RANDOM%60+1]
echo "Please wait for $ranNum seconds to merge"
sleep $ranNum's'
#list=$(gh pr list | awk '{print $1}' | head -n1)
git checkout master
git merge feature -m "Merged into master"
git push
