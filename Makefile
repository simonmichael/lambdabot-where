# https://wiki.haskell.org/IRC_channel#lambdabot

lambdabot-where-get:
	curl -s  http://silicon.int-e.eu/lambdabot/State/where | zcat  > lambdabot-where-db.txt
