#!/bin/bash

rm -rf /opt/test/jenkins-pipeline-tutorial.git
cd /opt/test
git clone https://github.com/athorat940/jenkins-pipeline-tutorial.git
cd /opt/test/jenkins-pipeline-tutorial
commit=$(git log |  awk '{print $2}' | head -n1)
echo $commit
gh issue create --title "Build Failure" --body "Root cause : $commit" --label "Incident"
