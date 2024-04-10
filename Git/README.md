# Git

## GitHub/GitLab Configuration

### Generate SSH Keys

Execute following script (use `github.com` or `gitlab.com` as a site name):

```sh
$ ./repo_add.sh
Enter computer name:
MyComputerName
Enter site name:
github.com
Add following public key to repository in 'github.com':
ssh-rsa ...
...
... MyComputerName
```

### Test

Run following command (use `git@github.com` or `git@gitlab.com`):

```sh
$ ssh -T git@github.com
```

and check the response:

```sh
Hi <USERNAME>! You've successfully authenticated, but GitHub does not provide shell access.
```

or

```sh
Welcome to GitLab, <USERNAME>!
```

### Add common configuration

Finally execute:

```sh
$ git config --global user.name "<NAME>"
$ git config --global user.email "<EMAIL>"
```

> Be sure that you are clone your repository using SSH, not HTTPS!
> You are can check it in `<REPOSITORY>/.git/config` file, `[remote "origin"]` section, `url` field.
