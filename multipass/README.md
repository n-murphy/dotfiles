#### Testing with multipass

I've used multipass to spin up a LTS (focal) instance and test out the dotfiles setup.

##### Spin up a multipass instance

If you don't have multipass installed already then head over to <https://multipass.run/install> for instructions.

With multipass installed run the following:

```zsh
multipass launch --name lts --cpus 2 --mem 3G --disk 8G --cloud-init ./cloud-init.yaml focal
```

##### ssh into lts instance

> I've used cloud-init to enable password authentication and I have added a couple of public keys as well for a `nmurphy` user
> Feel free to update this file to suit your own needs.

```zsh
# no need to specify an ip address thanks to avahi-daemon and the password for the nmurphy user is password
ssh nmurphy@lts.local 

# alternatively you can ssh using multipass
multipass shell lts
```

##### Running the install

To configure dotfiles run the following commands:

```zsh
mkdir github ; cd github 

git clone https://github.com/n-murphy/dotfiles.git

cd dotfiles

# as part of the install you will be prompted a couple of times for a password (which is 'password')
./install
```

Finally, in order to see the impact of the changes made you will need to start a new shell.

