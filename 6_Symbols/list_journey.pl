# python /workspaces/OpenShiftEventRouter/6_Symbols/list_journey.pl
import os
import subprocess
from datetime import datetime

def get_files_sorted_by_creation(repo_path):
    # Change to the repository directory
    os.chdir(repo_path)

    # Get all files excluding the .git directory
    files = []
    for root, dirs, filenames in os.walk(repo_path):
        if '.git' in dirs:
            dirs.remove('.git')
        for filename in filenames:
            filepath = os.path.join(root, filename)
            files.append(filepath)

    # Get creation times for each file
    files_with_ctime = []
    for file in files:
        ctime = os.path.getctime(file)
        files_with_ctime.append((file, ctime))

    # Sort files by creation time
    files_with_ctime.sort(key=lambda x: x[1])

    # Format the output
    sorted_files = []
    for file, ctime in files_with_ctime:
        folder = os.path.dirname(file)
        creation_time = datetime.fromtimestamp(ctime).strftime('%Y-%m-%d %H:%M:%S')
        sorted_files.append(f"{creation_time} - {folder}/{os.path.basename(file)}")

    return sorted_files

# Example usage
repo_path = '/workspaces/OpenShiftEventRouter'
sorted_files = get_files_sorted_by_creation(repo_path)
for file in sorted_files:
    print(file)
