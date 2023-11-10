git clone https://github.com/lmfespinosa/test-repo
cd test-repo
git branch -a
git checkout master
git fetch --tags
git tag
git branch -a
git remote rm origin
git remote add origin https://lmfespinosaingeniero@dev.azure.com/lmfespinosaingeniero/SampleProject/_git/test-repo
git pull --allow-unrelated-histories origin master
git push --set-upstream origin master