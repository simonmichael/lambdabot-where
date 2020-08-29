# https://wiki.haskell.org/IRC_channel#lambdabot

.PHONY: where.db
where.db:
	curl -s  http://silicon.int-e.eu/lambdabot/State/where | zcat >$@

where.txt:
	iconv -c $< >$@

where.tsv: where.txt
	paste -s -d '\t\n' $< >$@
