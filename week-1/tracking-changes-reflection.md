How does tracking and adding changes make developers' lives easier?
Version control makes developer's lives easier by allowing them to work on a project simultaneously without conflict and allowing them to track the origin of buggy bits of code.
What is a commit?
A commit is like a save point for your code.  A commit has it's own unique ID, author and time stamp, and a comment that you use to describe exactly what changes you made, in command form.
What are the best practices for commit messages?
You should be doing a lot of small commits, say one every 30 minutes to be safe with your work.
What does the HEAD^ argument mean?
The HEAD^ argument is used when you have already committed but want to go back to work on some of the code some more. HEAD^ refers to the last commit, HEAD~3 is the 3rd commit from HEAD respectively and so on and so forth.
What are the 3 stages of a git change and how do you move a file from one stage to the other?
Write a handy cheatsheet of the commands you need to commit your changes.
git checkout -b branch_name
git add ________
git commit -m "commit message"
git push origin branch_name
git checkout master
git fetch origin master
git merge origin master
git branch -d
What is a pull request and how do you create and merge one?
A pull request are just a way to merge the code from a branch into the master branch to avoid adding code directly to the master branch.  First you would create a new branch from the command line, write and commit some code, push the branch up to your repository on Github, and then issue a pull request.  Then you would use the command git pull origin master to merge the code back into the master.
Why are pull requests preferred when working with teams?
As mentioned before, pull requests are useful as they circumvent the danger of adding code directly to the master branch. Also, when working with a team you should never merge your own pull request, as this would upload all of your changes to the master branch.  Instead you would make the pull request and then one of your team members would review the code before selecting merge.
