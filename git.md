# GIT FUNDAMENTALS
>>Linus torvalds   
the creator and lead developer of the Linux kernel. He also created the distributed version control system Git.    

### GIT--version control system.  
  (maintains versions)  
tracks the changes in the source code 

open_.(folders cmd)--opens vscode  

>> ctrl + -> shoe/hide terminal  

$ git . --- adds all the files 
$ git commit -m "start of my git fundamentals" -----create the commit stmt
$ git status 
$ git log --- shows no of commits we have done and what time and msg was given 
shows updated commits first  
press q to quit when its stuck

$git checkout - (q)
 $ git checkout hashval -  (to get into the path of the perticular commit)    
 $ git checkout - (to back to the previous head pointing commit)    
 $ git checkout master  or $ git switch - (goes to master terminal/branch  )       

 # commands of git log  
 $ git log -1(shows the latest commit )    
 $ git log --author=shr(showes the author name ,it filters acc to the bit given )  
 $ git log --help(shows the commands )  
 $ git log --n (no of commits)  
 $ git log -p(shows the patch[code added or deleted]) changes done   
### -S-->pick-axe--SEARCH (to search regression bug ie wen it got over chnge)
 $ git log -Ssum   (Svaluto be searched)(search the perticular function in commits )  

 $ git log -Ssum -p ( space -- page down , /double--  the search gets highligted(in terminal it replaces the colon ) , n -- forwards to nxt match , N backwards towards the match , )  
  
githud -- place to store files in online.    
git---software     
gitlab--store files       

working--code part 
staging --- select perticular file to commit 
commit----
- logical change 
- small commits 
- multiple commits 
- code shld work" always commit wen everything is working"
message - it shld state why the changes r done (what made code run / bug is removed )  

> ### to unstage ---  $ git reset 

>### to delete the changes --- $ git checkout - .


>> ### to delete the commit  ---  $ git revert commitID

 >> vim ---editor  
 to enter ------$vim name of the file u want    
 to quit ------:wq  
 j-downwards   k-upwards L--right h--left ll

 >> verb + number +movement

# Git vs Git Hub
Git | Git Hub |
---| ----|
Its an actual s/w | Its a place to store files
Its the VCS | bitbucket, gitlab are similar to github
Its an offline s/w | It cannot work without internet
 
 
## Git Fundamentals
Pushing the code through command line
1. git init -> To initialize a repository
2. git add path -> To stage the changes
3. git status -> To check the file's current state
4. git commit -m "message" -> savepoint with a message
5. git log -> To Track the commits
To exit from git log press 'q'
6. git checkout hashvalue - to jump to particular commit
7. git checkout - --> it brings back to the previous head pointing commit
8. git switch - -> Switch to the master branch
8. git checkout master -> To bring back to recent commit  
9. git branch --a/--all --> to see all the branches.
9. git clone url ----to clone the git repository.
11. git pull --- pulls what all chnages done in online to offline
12. pit push --- pushes offline to online.
13. git rebase --abort (moves to the first step undo the rebase)
 
### Git Log
1. git log -> to see commits
2. git log -n -> n number of recent commits will be shown  
Filters
- --author==`<pattern>`
- -n `<n is number>`
3. git log -p -> patch (What code added or deleted), which lines modified in the files
4. git log -S -> pick-axe command
5. git log -S -p -> to track through the specific functions
    - `/<word>` - Highlight search
    - `<space>` - Page down
    - `n` - Next match
    - `N` - Prev match
6. git revert ---> undo the commit
7. git reset --soft HEAT~1 -->delte the commit but changes r remained
8. git reset hard ------->delete the commit and changes from the sys.
### COMMIT
1. Why Commit is needed?
    - When there is logical change
2. Small Commits should made
3. Message should be proper
 
 
## VIM
Vim is an editor which will only open in git bash command line
- How to open vim?
> vim filename
- Shortcut in vim
> verb + number + movement
// VIM tutor & Vim games
### Different verbs in VIM
1. Move up - k
2. MOve down - j
3. Move left - h
4. Move right - l
5. Delete - d
    - Delete one word - d + 1 (Where you want to delete a word)
    - Delete multiple words - d + n (n words are deleted)
    - Delete a line - d + d
    - Delete a para - d + ip (inside para)
    - Delete a selected word - d + iw (inside word)
    - Delete characters till a particular char - d + char(ex:a,b,c)
6. Save - w
7. Exit - q
8. forcefully quit -q!
9. To repeat recent command - .
10. yank (copy)  
## Git Cheat Sheet  
https://docs.google.com/presentation/d/1Za5LTulMB0whRkrvOF2zbQWRdcPR02j8AlwgQQctQPQ/edit?usp=sharing

![vim](vim.png)  

git branch dev (create branch )
#### types of merge 
- merge commit   (it automatically merges and commit a new branch )  
- fast merge (when there r no commits in staging or master where its getting merge )  

![merge](merge.png)

> GIT   
what-it is a software (version control system )
WHY--- saving data offline
how-copy 
who-  

we merge online to review the code (make merge online )
pull req - merge oline 
- dev branch needs to commit(feat branch ) and push online 
- create pull request feat branch to dev and add description , add reviewer. 
- reviewer will check and comments if the codequality is not good and then the dev will make changes and pushes it back adding comments.
- we need mark it as resolved and then the reviewer will check and approves the changes .
- we can merge feat with dev branch .  
- devops will merge to the master / main .(there will be no local merge )

![ahead/behind](behind.png)
ahead-------->commits which are not done in main or not available  
behind----> commits which are present in main not in branch 
  

Semantic version (sem ver)--->12.0.1
![semantic version](semver.png)
# Merging with github
### stash - finsh the unfinished work and then continue with the work
### git rebase - keeping history in a straight line 
>how - we need to do fast forward merge but not possible all the time so , it is in straight line bz its  easy to find the bug.

$ git rebase -i HEAD~4(4 is no of commits )

### squash dropping revert
-  edit (changes can be done in what we changed and commited)

hot fix- P0 bug is raised n need to be solved at that time.
git pull --rebase branchname (updates made in dev comes to feat)
- to delete the branch -->git branch -D origin dev

# KEY TERMS:
these are used with bussiness ppl not the dev.
### configuration management :

- CI- configuration items------>
### (maintain files)
git files related to relese manag   ----->branching strategrys. -->master 
- audits: 
1. commits:signing
2. git blame: used in audits , the audits will get to know what all commits are made ,by whome ,at what time they will check .
3. git diff

- baseline : save points(assigns that from that point we are secure )
1. commits 
2. Tags 

- accounting: responsiblity for the code 
1. git log -->find who did what
2. git blame (who did what)

- change management : (maintain a proces how efficiently we can bring changes inside the sys )
1. branches 
2. creating PR (pullreq)*

## key benifits :
- easy traceability - who ?--dev why?--bug or code  
- code quality & consistency - (by pr we maintain)
- reduces risk & errors - backup of code
- change management -- it is smooth 

![release](release terms.png)

![release](image-4.png)

1. planning 
- branching strategy 

2. governance 
 - access level each branch (staging can be accessed by qa)

3. scheduling
- sprints
- agile

4. automation 
- ci/cd (continuoes integration continuoes deployment)
- no human error
  
5. contingency (backups)
- rollback - old ver 


paas <--- release code
SAAS - Software as a Service.
ex: netflix
- PAAS- Platform as a service
- which are there to build the apps , they provide an environment to build the apps.
- All the installation is done previously.
ex: netlify, render, railway,heronku
- IAAS- it's like renting the house without any OS installed
    - ex: azure,aws,gcp
    - we just rent the computer and we can install anything we want.
    
![CI/CD](image-6.png)
git hub to netlify its CI   
Build to customer its CD   

# what is CI/CD?
- continuous integration and continuous deployment
- when there are changes and pull request is requested to the master branch, the DevOps will merge to the master.
- Lets say netlify for example when there is change in the master it knows that there is change and then build system is started like
   - comments, extra spaces are removed.  
   - variables are shortened
> - this is known as Uglifying (improve the performance.)
- once done it should run the automation tests, if it fails the stop.
- if yes then it gets to customer.
has context menu

