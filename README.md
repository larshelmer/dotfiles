# a gathering of dotfiles

## installation

create symlinks:
```
➜ make link
```
remove symlinks:
```
➜ make unlink
```
makefile shamlessly stolen from [this blog post](https://polothy.github.io/post/2018-10-09-makefile-dotfiles/).

## secrets

`.zshrc` loads a file called `.localrc` which is intended for secrets and the like that you want to keep out of a public github repository.
