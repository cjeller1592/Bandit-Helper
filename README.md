# Bandit Helper

This script automates the process of logging into levels and storing level passwords for the OverTheWire wargame [Bandit](https://overthewire.org/wargames/bandit/).

## Requirements

- A `pass` folder for storing Bandit level passwords
- sshpass

## Using Script

This script only takes one argument — the number of the level you are trying to log into. 

```
./bandit.sh 1
```

If the password file already exists, it will log you into the level automatically.

If the password file doesn't exist, it will ask you to paste the password in. This will log you into the level and create a password file so you can log into the level later.

