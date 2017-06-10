# cookbooks
OpsWorks (Chef 12) automation scripts.

## OpsWorks Setup

Set the repository to be ssh based and upload a valid private key for your repo.

Once repo is successfully installed, include the following scripts in your setup (in order helps):
nginx, php56, php71 (or/and php70), mongodb

Dont forget to set root volume size, it defaults to 8gb.

Default nginx page in nginx/files/index.html

More soon.
