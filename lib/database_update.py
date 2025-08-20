import os
import shutil
import csv

# Reads CSV files and sends them to the database
def update_database(file_path):
    
    # Reading all of the rows of the CSV file
    with open(file_path, mode='r') as file:
        reader = csv.reader(file)
        for row in reader:
            # Process each row
            print(row)

    # Creating the directory if it doesn't exist
    upload_dir = os.path.join(file_path, "uploaded_files")
    if not os.path.exists(upload_dir):
        os.makedirs(upload_dir)

    # Move CSV files to the upload directory
    for file in os.listdir(file_path):
        if file.endswith(".csv"):
            try:
                shutil.move(os.path.join(file_path, file), os.path.join(upload_dir, file))
                print(f"Successfully moved {file} to {upload_dir}")
            except Exception as e:
                print(f"Error moving {file}: {e}")
