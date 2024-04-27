import os
from kaggle.api.kaggle_api_extended import KaggleApi

def create_folder(folder_name):
    # Get the path to the home directory
    home_directory = os.path.expanduser("~")

    #folder name that will be created
    folder_kaggle=folder_name

    # Join the home directory path with the folder name
    folder_path = os.path.join(home_directory, folder_kaggle)

    # Check if the folder already exists
    if not os.path.exists(folder_path):
        # Create the folder
        os.makedirs(folder_path)
        print(f"Folder '{folder_kaggle}' created in the home directory.")
    else:
        print(f"Folder '{folder_kaggle}' already exists in the home directory.")


def import_kaggle_data():
    # Initialize Kaggle API
    api = KaggleApi()
    api.authenticate()  # This will authenticate using your Kaggle API credentials

    # Define the dataset metadata
    dataset_metadata = {
        "title": "Brazilian E-Commerce Public Dataset by Olist",
        "id": "olistbr/brazilian-ecommerce",  # Change this to your desired dataset ID
        "licenses": [{"name": "CC0-1.0"}],  # License type, change if necessary
    }

    # Define the path to your dataset file
    dataset_file_path = "grab_restaurants.csv"

    # Upload the dataset
    api.dataset_create_new(dataset_metadata, dir_mode="auto", folder=dataset_file_path)

    print("Dataset uploaded successfully!")

kaggle datasets download -d olistbr/brazilian-ecommerce


create_folder('.kaggle')

kaggle datasets download -d olistbr/brazilian-ecommerce