# Git Definitions


**Instructions: ** Define each of the following Git concepts.

* What is version control?  Why is it useful?
	Version control is a tool that allows us to view the entire history of revisions to one or more files, as well as merge revisions made to the files. It is useful because it allows developers to roll back to previous versions of a project if needed, and it helps to control the workflow if the project is group-based.

* What is a branch and why would you use one?
	A branch is basically a copy of the master project repository that you can work on without changing the original master repo itself. You would use one to create new potential features for a project, without risking actually changing the master version and potentially throwing a few wrenches in your (and your group's) work.

* What is a commit? What makes a good commit message?
	A commit is like a save point for a branch so the edits you made are saved in a path within the branch. A good commit message is clear and concise with a transparent "what" and "why" explanation as to why you did something.

* What is a merge conflict?
	A merge conflict is a conflict that happens within the project when two (or more) developers do something like change the same lines in the same file, or one deletes a line while the other modifies the line, and then tries to merge their branches. Git will tell you where the merge occured, so it is fixable either by undoing the merge, or editing the mistake (which can be made easier with a good merge tool).