# Forge_Server_Restart_script
Minecraft Forge Server Auto Restart scripts
This bash script based on Ubuntu 20.04 LTS

If you want this script run automatically, combine crontab with this script

# Requirements
- Screen

# Project Structure
```
📂src
 ┣ 📜announcement.sh
 ┣ 📜players.py
 ┗ 📜restart.sh
 📜integrated.sh
 📜README.md
```

# Installation
1. Clone the repository
```
git clone https://github.com/DGKwak/Forge_Sever_Restart_Script.git
```

2. Install requirements
```
apt-get install screen
```

3. Make screen session (use session name as server for example)
```
screen -S server
```

4. Start integrated.sh
```
bash integrated.sh
```

If you use different session name than mine, edit scripts with your session name