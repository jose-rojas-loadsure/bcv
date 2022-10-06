import requests
from bs4 import BeautifulSoup

requests.packages.urllib3.disable_warnings()

URL = "https://www.bcv.org.ve/"
page = requests.get(URL, verify=False)

soup = BeautifulSoup(page.content, "html.parser")
dolar_soup = soup.find(id="dolar").text
dolar = dolar_soup.split()[1]
print(dolar)
