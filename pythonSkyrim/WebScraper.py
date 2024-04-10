import requests
from bs4 import BeautifulSoup
import os


def scrape_website(url, folder_path):
    response = requests.get(url)

    if response.status_code == 200:
        soup = BeautifulSoup(response.content, 'html.parser')

        text = soup.get_text()

        file_path = os.path.join(folder_path, 'scraped_page.txt')
        with open(file_path, 'w', encoding='utf-8') as file:
            file.write(text)

        print("Saved to {file_path}")

    else:
        print("Failed")


url = "url goes here"
folder_path = "scrapedFiles"
scrape_website(url, folder_path)
