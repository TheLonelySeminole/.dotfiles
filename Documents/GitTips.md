# Git/Github Tips

Using hard links to mirror the .config files I want to keep in the repository ~/.dotfiles.

Although hard links don't support recursive linking, 'cp -lR' does.

So far so good, although I need to test sync with base .config files.


### Create hard links to directories 
cp -lR src-dir dest-dir


