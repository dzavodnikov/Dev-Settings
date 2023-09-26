# GitHub/GitLab Configuration

1.  Set environment variables:

    ```sh
        $ COMPUTER_NAME=MyComputer
        $ SITE_NAME=github.com
    ```

2.  Generate:

    ```sh
        $ ssh-keygen -t rsa -b 2048 -C ${COMPUTER_NAME} -f ~/.ssh/${SITE_NAME}_rsa
    ```

    You are can skip passphrase by pressing <Enter>.

3.  Add public key to repository (in web-site):

    ```sh
        $ cat ~/.ssh/${SITE_NAME}_rsa.pub
    ```

4.  Add key and check the connection (type "yes" for question):

    ```sh
        $ ssh-agent
        $ ssh-add ~/.ssh/${SITE_NAME}_rsa
        $ ssh -T git@${SITE_NAME}
    ```

    and check the response:

    ```sh
        Hi <USERNAME>! You've successfully authenticated, but GitHub does not provide shell access.
    ```

    or

    ```sh
        Welcome to GitLab, <USERNAME>!
    ```

5.  Add common configuration:

    ```sh
        $ git config --global user.name "<NAME>"
        $ git config --global user.email "<EMAIL>"
    ```

> Be sure that you are clone your repository using SSH, not HTTPS!
> You are can check it in `<REPOSITORY>/.git/config` file, `[remote "origin"]` section, `url` field.
