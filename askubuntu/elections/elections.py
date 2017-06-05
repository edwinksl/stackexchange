#!/usr/bin/env python

from bs4 import BeautifulSoup
# import requests

url = 'https://askubuntu.com/election/5?tab=primary'

# r = requests.get(url)
# soup = BeautifulSoup(r.text, 'html.parser')

soup = BeautifulSoup(open('elections.html'), 'html.parser')

user_details = soup.select('.user-details')
usernames = [i.find('a').string for i in user_details]

vote_count_post = soup.select('.vote-count-post')
votes = [i.string for i in vote_count_post]

table = dict(zip(usernames, votes))
print(table)
