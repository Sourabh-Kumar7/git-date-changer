# git-date-changer
This is a versatile command-line tool that allows you to easily customize commit dates in Git repositories.
This tool simplifies the process of backdating or setting specific commit timestamps, making it useful for various Git version control workflows, such as testing, historical data correction, and more."

`This is tested on mac os`<br/>

## Installation
In case you don't have git<br/>

```bash
sudo apt-get install git
```

Clone the repo<br/>

```bash
git clone https://github.com/Sourabh-Kumar7/git-date-changer.git
```

## Usage
### 1. By using the given script

```
cd git-date-changer
```
```
sudo bash commit_back.sh "Your commit message" "DDMMYYYY HHMMSS"
```

### 2. By making this functionality a command in your environment

1. Open your shell configuration file (e.g., ~/.bashrc for Bash or ~/.zshrc for Zsh) using a text editor.
2. Add the following lines at the end of the file:
   
```
mygitcommit() {
    if [ $# -ne 2 ]; then
        echo "Usage: mygitcommit <commit_message> <commit_date>"
        return 1
    fi

    local now
    now=$(date +"%m%d%H%M%Y.%S")

    local commit_msg="$1"
    local commit_date="$2"

    sudo date "${commit_date:2:2}${commit_date:0:2}${commit_date:9:2}${commit_date:11:2}${commit_date:4:4}.${commit_date:13:2}" && git commit -m "$commit_msg" && sudo date "$now"
}
```
3. Save the file and exit the text editor.

4. Close and reopen your terminal or run source ~/.bashrc (or source ~/.zshrc for Zsh) to apply the changes to your current shell session.

Now you can use the mygitcommit command in your terminal to execute the script with the specified date and commit message. For example:
```
mygitcommit "Your commit message" "DDMMYYYY HHMMSS"
```

##
`
If you like it, Please give a star.
Feel free to add more such trick functionalties.
`



