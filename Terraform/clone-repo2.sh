
git --bare clone https://github.com/lmfespinosa/test-repo.git
cd test-repo
git add --all
git push --mirror ${azuredevops_git_repository.repository.name}