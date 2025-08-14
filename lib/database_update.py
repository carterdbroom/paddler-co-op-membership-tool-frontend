import os
import csv

def update_database(file_path):
    with open(file_path, mode='r') as file:
        reader = csv.reader(file)
        for row in reader:
            # Process each row
            print(row)
