# git-hooks
Miscellaneous git hook scripts

## hook-creator
hook-creator allows you for automatic hook setup to install it run 
```bash
install.sh
```
then go to your repo and run 
```bash
hook-creator <hook-name> <type>
```
hook-name is name of a hook  
hook-type is a type of hook for example `post-commit`, to use default type leave 
this argument empty

## Manual add
### check_shell.sh
Check correctness of bash scripts, only scripts with `.sh` extensions will be used
Installation:
1. Navigate to your project repository
2. Run
```bash
cd .git/hooks
curl https://raw.githubusercontent.com/koszalix/git-hooks/main/check_shell.sh \
-o post-commit
chmod +x post-commit
```
