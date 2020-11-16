# chrome 설치
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sudo sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
sudo apt-get update
sudo apt-get install google-chrome-stable -y

# chrome 버전 확인
google-chrome --version

# chrome driveer 설치
# 최신 버전 URL로 변경 필요 : https://sites.google.com/a/chromium.org/chromedriver/
wget -N https://chromedriver.storage.googleapis.com/index.html?path=86.0.4240.22/
unzip chromedriver_linux64.zip
rm -rf chromedriver_linux64.zip