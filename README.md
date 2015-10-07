#Translatr OS X
Translatr is a seamlessly integrated Google Translation tool for Mac OS X 10.8 up to 10.11 included!

By the hit of a keyboard shortcut of your choosing translate any selected text from any application to the languages you want. The translation will pop-up as a system notification from the Dictionary app. Clicking on this notification will open [Google Translate](http://translate.google.com) if you want to see more details and synonyms. Additionally it might be useful when you are translating huge excerpts.
![Translatr Notification](http://s13.postimg.org/gmchih14n/translatr_notification.png)
![Translatr Notification Center](http://s24.postimg.org/e9lgqn66t/translatr_nc.png)

Since you might not want to set a keyboard shortcut for every language, Translatr also implements itself inside the contextual menus when you right-click on a selected text.
![Translatr Contextual Menu](http://s30.postimg.org/kha860nzl/translatr_menu.png)

###Supported Languages
Translatr supports eight languages.
  - English
  - French
  - Spanish
  - German
  - Italian
  - Russian
  - Japanese
  - Chinese

To add configure shortuctq for the languages you want, go to *System Preferences > Keyboard > Shortcuts > Services*.

From this panel you may also disable translation services for the languages you do not want.

##Installation
Translatr is really easy to install. It requires 3 steps. Thus 3 command lines.

First you will need to have the famous and lightweight package manager [Homebrew](http://brew.sh/) because Translatr depends on two of its packages. So paste this in a terminal prompt. The script explains what it will do and then pauses before it does it.
```
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```
Then install these two dependencies, this step might take some time, be patient.
```
brew install terminal-notifier http://www.soimort.org/translate-shell/translate-shell.rb
```
And finally this line will install Translatr.
```
curl -s http://translate.valhook.com/install.sh | bash
```
Translatr will automatically be available.

###Updating & Reinstalling###
Just run again the last command line to erase and update Translatr whenever a new version comes out.

##Uninstallation
In the given order, uninstall Translatr
```
curl -s http://translate.valhook.com/uninstall.sh | bash
```
then the brew packages if you want to
```
brew uninstall terminal-notifier translate-shell
```
and finally [Homebrew](http://brew.sh/) if you don't need it
```
cd `brew --prefix`
git checkout master
git ls-files -z | pbcopy
rm -rf Cellar
bin/brew prune
pbpaste | xargs -0 rm
rm -r Library/Homebrew Library/Aliases Library/Formula Library/Contributions 
test -d Library/LinkedKegs && rm -r Library/LinkedKegs
rmdir -p bin Library share/man/man1 2> /dev/null
rm -rf .git
rm -rf ~/Library/Caches/Homebrew
rm -rf ~/Library/Logs/Homebrew
rm -rf /Library/Caches/Homebrew
```
