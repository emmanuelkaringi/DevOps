# Git Branching Strategy

- A branch in git is a pointer to a snapshot of your changes.
- Branching means you diverge from the main line of development continue to do work without messing with that main line.

### Branching Strategies
1. Create feature branches for every new feature being added then merge the branch to the main branch.
2. Create a release branch that will be used for deployment. Master/Main branch is used for active development.
3. Create hot fix branches used for fixing customer issues, these changes are merged to the main/master as well as release branches.
