# Git Interview Questions and Answers

1. Create/Initialize a git repository - `git init`
2. Check status of a repository - `gir status`
3. Add files/changes - `git add .` (To add all changed files) or `git add filename` (To add a specific file)
4. To see changes made - `git diff`
5. To remove a file/changes - `git checkout filename`
6. To commit changes - `git commit -m "message"`
7. To list the commits made in a repository - `git log --oneline`
8. To push the changes - `git push`
9. **What is the git workflow used? - `git add && git commit -m "" && git push`**
10. Clone a repository - `git clone url`
11. To check the remote reference - `git remote -v`
12. To add a remote - `git remote add gitlocation(github.com/reponame)`
13. **What is the difference between git clone and fork? - Cloning is downloading a repository to your personal computer while forking is creating a copy of the repository to your own account.**
14. To create a branch - `git branch branch-name` or `git checkout -b branch-name` (Create a branch and check into it).
15. Switch between branches - `git checkout branch-name`
16. To add/merge changes from one branch to another or main - `git cherry-pick commit-id`(Only appropriate if there are only one or two commits) or `git merge branch-name` or `git rebase branchname` 
