if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/mkg4320/V2.git /V2
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /V2
fi
cd /PiroAutoFilterBot
pip3 install -U -r requirements.txt
echo "Starting PiroAutoFilterBot...."
python3 bot.py
