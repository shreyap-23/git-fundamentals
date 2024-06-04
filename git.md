#GIT FUNDAMENTALS

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

>> ### to unstage ---  $ git reset
>> ### to delete the changes --- $ git checkout - .


>> ### to delete the commit  ---  $ git revert commitID

 >> vim ---editor  
 to enter ------$vim name of the file u want    
 to quit ------:wq  
 j-downwards   k-upwards L--right h--left ll

 >> verb + number +movement
