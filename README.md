# git-shortcuts

## Commands
| Command  | Alias |
| -------- | ----- |
| **g**    | *git* |
| **gs**   | *git status* |
| **gc**   | *git checkout* |
| **gcb**  | *git checkout -b* |
| **gr**   | *git reset --hard* |
| **gcl**  | *git clone* |
| **gp**   | *git push* |
| **gpu**  | *git push --set-upstream origin* |
| **gpl**  | *git pull* |
| **gf**   | *git fetch --all* |
| **gm**   | *git merge* |
| **gd**   | *git diff* |
| **gl**   | *git log --oneline* |
| **gla**  | *git log* |
| **gbv**  | *git branch -v* |
| **gbr**  | *git branch -r* |
| **gbd**  | *git branch -d* |
| **gbrd** | *git branch -r -d* |
| **ga**   | *git add* |
| **gaa**  | *git add .* |
| **gcm**  | *git commit -m* |
| **gst**  | *git stash* |
| **gstp** | *git stash pop* |
| **gnu**  | *git checkout -b $1 ; git push --set-upstream origin $1* |

## How to use
##### ZSH shell
```bash
./install.sh zsh
```
<br/>
##### Bash shell
```bash
./install.sh bash
```
<br/>
##### Get new version from GitHub
```bash
./install.sh fetch
```
<br/>
##### Just update .git-shortcuts from local git directory
```bash
./install.sh update
```
<br/>
##### Show current installed .git-shortcuts
```bash
./install.sh show
```
<br/>
##### Show difference between local git and your current installed version
```bash
./install.sh diff
```
<br/>
##### Show install script help message
```bash
./install.sh help
```
or
```bash
./install.sh --help
```