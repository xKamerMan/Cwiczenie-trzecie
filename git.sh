#CZĘŚĆ GŁÓWNA


#Zadanie 1.1 Wprowadzenie do commitów Gita

git commit
git commit

#Zadanie 1.2 Rozgałęzienia w Gicie

git branch bugFix
git checkout bugFix

#Zadanie 1.3 Merge w Gicie

git checkout -b bugFix    
git commit  
git checkout main
git commit
git merge bugFix

#Zadanie 1.4  Wprowadzenie do Rebase

git checkout -b bugFix    
git commit    
git checkout main   
git commit    
git checkout bugFix    
git rebase main

#Zadanie 2.1 Odczep sobie HEAD

git checkout C4

#Zadanie 2.2 Referencje względne (^)

git checkout C4^

#Zadanie 2.3 Referencje względne #2 (~)

git branch -f main C6
git branch -f bugFix C0
git checkout C1

#Zadanie 2.4 Odwracanie zmian w Gicie

git reset local~1
git checkout pushed
git revert pushed

#Zadanie 3.1 Wprowadzenie do cherry-pick

git cherry-pick C3 C4 C7

#Zadanie 3.2 Wprowadzenie do interaktywnego rebase'a 

git rebase -i main~4 --aboveAll

#Zadanie 4.1 Wzięcie tylko 1 commita

git checkout main
git cherry-pick C4

#Zadanie 4.2 Żonglowanie commitami

git rebase -i caption~2 --aboveAll
git commit --amend
git rebase -i caption~2 --aboveAll
git branch -f main caption

#Zadanie 4.3 Żonglowanie commitami #2

git checkout main
git cherry-pick C2
git commit --amend
git cherry-pick C3

#Zadanie 4.4 Tagi Gita

git tag v0 C1
git tag v1 C2
git checkout C2

#Zadanie 4.5 Git Describe

git commit

#Zadanie 5.1 Rebase ponad 8000 razy

git rebase main bugFix
git rebase bugFix side
git rebase side another
git rebase another main

#Zadanie 5.2 Wielu rodziców

git branch bugWork main^^2^

#Zadanie 5.3 Spaghetti gałęzi

git checkout one
git cherry-pick C4 C3 C2
git checkout two
git cherry-pick C5 C4 C3 C2
git branch -f three C2


#CZĘŚĆ ZDALNA


#Zadanie 1.1 Wstęp do klonowania (clone)

git clone

#Zadanie 1.2 Zdalne gałęzie

git commit
git checkout o/main
git commit

#Zadanie 1.3 Git fetch

git fetch

#Zadanie 1.4 Git pull

git pull

#Zadanie 1.5 Symulacja pracy zespołowej

git clone
git fakeTeamwork main 2
git commit
git pull

#Zadanie 1.6 Git push

git commit
git commit
git push

#Zadanie 1.7 Rozbieżna historia

git clone
git fakeTeamwork
git commit
git pull --rebase
git push

#Zadanie 1.8 Zablokowany main

git reset --hard o/main
git checkout -b feature C2
git push

#Zadanie 2.1 Wypychanie dla wytrwałych!

 git rebase side1 side2
 git rebase side2 side3
 git rebase side3 main
 git pull --rebase
 git push

#Zadanie 2.2 Scalanie z remote

git checkout main
git pull
git merge side1
git merge side2
git merge side3
git push

#Zadanie 2.3 Śledzenie zdalnych repo

git checkout -b side o/main
git commit
git pull --rebase
git push

#Zadanie 2.4 Argumenty git push

git push origin main
git push origin foo

#Zadanie 2.5 Argumenty git push -- Głębiej!

git push origin main~1:foo
git push origin foo:main

#Zadanie 2.6 Argumenty fetch

git fetch origin c3:foo
git fetch origin c6:main
git checkout foo
git merge main

#Zadanie 2.7 Źródło nicości

git push origin :foo
git fetch origin :bar

#Zadanie 2.8 Argumenty pull

git pull origin c3:foo
git pull origin c2:side