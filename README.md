# git-shortcuts

## Commands
|  Command  |                         Alias                          |
| --------- | ------------------------------------------------------ |
| **g**     | git                                                    |
| **ga**    | git add                                                |
| **gaa**   | git add .                                              |
| **gb**    | git branch                                             |
| **gbd**   | git branch -d                                          |
| **gbD**   | git branch -D                                          |
| **gbdr**  | git branch -d -r                                       |
| **gbDr**  | git branch -D -r                                       |
| **gbv**   | git branch -v                                          |
| **gbvr**  | git branch -v -r                                       |
| **gco**   | git checkout                                           |
| **gcob**  | git checkout -b                                        |
| **gcof**  | git checkout -f                                        |
| **gcl**   | git clone                                              |
| **gc**    | git commit                                             |
| **gcm**   | git commit -m                                          |
| **gca**   | git commit --amend                                     |
| **gcam**  | git commit --amend -m                                  |
| **gd**    | git diff                                               |
| **gdn**   | git diff --name-only                                   |
| **gds**   | git diff --staged                                      |
| **gdsn**  | git diff --staged --name-only                          |
| **gdp**   | git diff @~1 @                                         |
| **gf**    | git fetch                                              |
| **gfa**   | git fetch --all                                        |
| **gl**    | git log                                                |
| **glo**   | git log --oneline                                      |
| **gm**    | git merge                                              |
| **gp**    | git push                                               |
| **gpl**   | git pull                                               |
| **gpu**   | git push --set-upstream origin                         |
| **grh**   | git reset --hard                                       |
| **grs**   | git restore --staged                                   |
| **grm**   | git rm                                                 |
| **grmr**  | git rm -r                                              |
| **grmc**  | git rm --cached                                        |
| **grmcr** | git rm --cached -r                                     |
| **gst**   | git stash                                              |
| **gstp**  | git stash pop                                          |
| **gs**    | git status                                             |
| **gnu**   | git checkout -b $1 ; git push --set-upstream origin $1 |

## How to use
#### ZSH shell
```bash
./install.sh zsh
```
#### Bash shell
```bash
./install.sh bash
```
##### Get new version from GitHub
```bash
./install.sh fetch
```
##### Just update .git-shortcuts from local git directory
```bash
./install.sh update
```
##### Show current installed .git-shortcuts
```bash
./install.sh show
```
##### Show difference between local git and your current installed version
```bash
./install.sh diff
```
##### Show install script help message
```bash
./install.sh help
```
or
```bash
./install.sh --help
```

## Note
To use installed .git-shortcuts just restart your terminal or run command:
##### ZSH shell
```bash
source ~/.zshrc
```
##### Bash shell
```bash
source ~/.bashrc
```