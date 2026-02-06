import pandas as pd
import requests
from bs4 import BeautifulSoup

URL = "https://en.wikipedia.org/wiki/Robotic_process_automation"

r = requests.get(URL, timeout=30)
r.raise_for_status()

soup = BeautifulSoup(r.text, "html.parser")
paras = [p.get_text(" ", strip=True) for p in soup.select("p")[:10]]

df = pd.DataFrame({"source": [URL]*len(paras), "content": paras})
df.to_csv("docs/sample_scraped_data.csv", index=False)

print("Saved: docs/sample_scraped_data.csv")

