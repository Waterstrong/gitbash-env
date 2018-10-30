# shall
Auto setup Shell(Bash/Zsh) to ehnace shell experience for all on Mac and Windows! - sh all.

## Change Log 

| Version | Date | Description |
| :------ | :--- | :---------- |
| Beta v1.0 | 30/10/2018 | Implement the basic functions for Windows Git Bash, including install, java, git, project and command alias. |

## Getting Started with Shall

- Clone or copy the `shall` into your local machine. Make sure you have the write access.

- Open Git Bash(Windows) or iTerm2(Mac) and goto the `shall` directory, then run `./install.sh`. It will reload the shell profile automatically.

- Provide your HOME values in file `home.yml`, e.g.

    ```
    project: ~/Projects
    java6: ~/Java/jdk1.6.0_35
    java7: ~/Java/jdk1.7.0_71
    java8: ~/Java/jdk1.8.0_65
    ```

- (Optional) Setup Git Bash in ConsoleEmulator or Cmder
  Run application `ConsoleEmulator`, then goto `Settings->Startup->Specified` name task, set it as `Bash::Git Bash xxx (1)`.

## Usage of Commands

Make sure the Git home/bin is already in environment PATH variable

Click and open `ConEmu64.exe`, the command terminal supports automatic completion by pressing TAB. Here are abbreviation:

#### Java Version
```
jdk6   # Switch to Java 6
jdk7   # Switch to Java 7
jdk8   # Switch to Java 8
```

#### Git Alias
```
gst    # git status
gcmsg  # git commit -m <message>
gau    # git add -u
gaa    # git add .
gup    # git pull --rebase
gups   # git stash; git pull -r; git stash pop
gp     # git push
gba    # git branch -a
gb     # git branch [new_branch]
gco    # git checkout <branch_name>
glog   # git log --oneline --decorate --color --graph
```

#### Project Alias
```
<project|stash>    # Goto the Project folder
<project|stash> list    # list all cloned projects
script    # Go into the bashnator folder
script usage     # Goto the shall usage page

# Goto specific project by typing the project name, press tab for complement
<tw-vpn|.tw-vpn>  # Go into the tw-vpn project
<api-stencil|.api-stencil>  # Go into the api-stencil project and switch to Java 8 
```

#### Command Alias
```
glw    # Execute ./gradlew
build  # build action based on different project
run    # run server based on different project
debug  # start server in debug mode based on different project
reload # reload the IntelliJ IDEA and refresh the dependencies
checkstyle  # run checkstyle for current project
repo   # open the current project repository
pull_request | plr   # create the pull request for current project
code_review | review # goto the code review page for current project
```

The demo screen shot:
![](images/demo.png)

## Developer Instruction
The 'master' branch is used for release with tag. The `develop` branch is used for developing.

```
.
├── LICENSE.md
├── README.md
├── apps.yml
├── boot                            # Boot load the configuration and alias
│   ├── load_app_alias.sh
│   ├── load_cmd_alias.sh
│   └── load_git_alias.sh
├── boot.sh                         # This is the entry to load the boot configuraiton
├── command                         # Some common used commands
│   ├── build.sh
│   ├── checkstyle.sh
│   ├── debug.sh
│   ├── jdk6.sh
│   ├── jdk7.sh
│   ├── jdk8.sh
│   ├── code_review.sh
│   ├── pull_request.sh
│   ├── reload.sh
│   ├── run.sh
│   ├── sonar.sh
│   └── ...
├── home-template.yml               # Config HOME directory in home.yml file
├── install.sh                      # Install the Shall
├── library                         # Third party libaray
│   └── parse_yaml.sh
├── profile                         # Determine your profile and system version
│   └── profile.sh
├── tools                           # Tools, softwares and useful files
├── uninstall.sh
└── upgrade.sh
```