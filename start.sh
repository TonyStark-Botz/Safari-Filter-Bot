if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/TonyStark-Botz/Safari-Filter-Bot.git /Safari-Filter-Bot
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /SuperBot
fi
cd /Safari-Filter-Bot
pip3 install -U -r requirements.txt
echo "Starting Safari-Filter-Bot...."
python3 bot.py
