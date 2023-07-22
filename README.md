# git-hooks
Miscellaneous git hook scripts

## check_shell.sh
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

