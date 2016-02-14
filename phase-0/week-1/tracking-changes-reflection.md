Tracking and adding changes make allows developers' to see the history of the changes made to a file and easily access and compare each of them.

A commit is a save point.

The best practices for commit messages are to write informative messages that should be read like commands and include description of changes and sources used.

The HEAD^ argument means the last commit.

The 3 stages of a git change are add & commit changes, push them, and pull & merge changes. To move a file from one stage to the other, one has to create a new feature branch, make changes to the file, merge the changes from master to the feature branch, push the feature branch to the remote fork on GitHub, make a pull request and merge the changes into the remote master branch. Afterwadrs, one can clean the branches both locally and remotely.


The commands needed to commit changes are as follows:
1) "git add ..." to include in what will be committed;
2) "git status" to check the status of all the files in the local repo;
3) "git commit -m 'message'" to commit the changes;
4) "git reset -- soft HEAD ..." to remove a file form the added section and bring it back to untracked;
5) "git log" to check the commit history of a repository.

A pull request is a way to merge code from a feature branch into the master branch. 
To create a pull request, one has to click the "compare and pull request" buttton in the repository on GutHub, verify if the base branch is the master branch and the comparison branch is the new feature branch, fill in the title and description of the changes and click the "create pull request" button.
To merge a pull request, one has to press the "merge pull request" button that appears on the "Conversation" tab of the pull request and confirm the merge by clicking on the "congirm merge" button.

Pull requests are preferred when working with teams are adding code directly to the master branch of a repository is a bad practice and it can cause mess when several developers are working on the same project.