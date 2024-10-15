# dotfiles
This is my personal repository for all my current dotfiles. 

Before cloning this repository, make sure to install GNU stow with your prefered package manager. 

After you cloned this repository go to the directory. 
```
cd dotfiles
```

Create symlinks using stow to you .config directory or any your prefered location of your dotfiles.
```
stow . -t ~/.config
```
Symlinks can be removed by using the following command.
```
stow -D .
```

