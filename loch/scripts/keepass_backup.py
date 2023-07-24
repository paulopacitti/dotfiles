# Crontab: 0 10 * * 1,4 ${which python} /Users/paulopacitti/documents/scripts/keepass_backup.py

import os
import shutil
from datetime import datetime

# rclone path
rclone_exec = "/opt/homebrew/bin/rclone"
# scripts path
scripts_path = os.path.expanduser("~/documents/scripts") 
# Path to KeePass database
keepass_db_path = os.path.expanduser("~/Sync/crypto/PauloPacitti.kdbx")
keepass_db_filename = os.path.basename("~/Sync/crypto/PauloPacitti.kdbx")
# timestamp of the current day
now = datetime.now().strftime("%Y-%m-%d")
# rename file with timestamp
backuped_db_filename = f"{now}-{keepass_db_filename}"

# rclone copy to Google Drive
os.system(f"cp {keepass_db_path} {scripts_path}/{backuped_db_filename}")
os.system(f"{rclone_exec} copy {scripts_path}/{backuped_db_filename} keepass:")
print(f"Backed up {backuped_db_filename} to Google Drive!")

# delete uploaded file
os.system(f"rm -rf {backuped_db_filename}")