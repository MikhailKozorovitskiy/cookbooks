# cookbooks
OpsWorks (Chef 12) automation scripts.

## OpsWorks Setup

Set the repository to be ssh based and upload a valid private key for your repo.

Once repo is successfully installed, include the following scripts in your setup (in order helps):
nginx, php56, php71 (or/and php70), mysql-local

Mysql root password is stored in mysql-local/recipes/default.rb
Mysql data dir currently set to /data but can be changed in same place.

I recommend more than 12+ gigs on your root volume.

Default nginx page in nginx/files/index.html

More soon.
