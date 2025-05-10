## 🛠 Bash Automation Scripts

This repository contains Bash scripts that I create for practice.

### `one_macro_push.sh`

This script automates the process of pushing changes to your GitHub repository. It:

- Navigates to the local GitHub project directory 
- Adds all new or modified files using `git add --all`
- Commits the changes with a predefined message
- Pushes the changes to  branch on GitHub
- Displays a confirmation message and exits

📌 Ideal for quick one-line updates to your repository without typing each command manually.

---

### `back_up_script.sh`

This script creates a timestamped backup of important files and folders. It:

- Defines the source directory to back up 
- Creates a destination directory with the current date and time
- Archives the source folder into a `.tar.gz` file
- Verifies if the backup was successful and prints the result
- You can add cron task to get automatic backups
  
🗂️ Backups are saved in: Dir you specify

🕒 Filenames follow this format: `backup_MM-DD-HH-MM.tar.gz` (no `:` to ensure compatibility)

---
