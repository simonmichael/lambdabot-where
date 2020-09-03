# https://wiki.haskell.org/IRC_channel#lambdabot

default: where.tsv

.PHONY: where.db
where.db:
	curl -s  http://silicon.int-e.eu/lambdabot/State/where | zcat >$@

where.txt: where.db
	-iconv -c $< >$@

where.tsv: where.txt
	(printf "key\tvalue (note that double quotes have been replaced by “ and ” to work around a TSV parsing issue on github)\n"; <$< sed -re 's="([^"]*)"=“\1”=g' -e 's="=“=' | paste -s -d '\t\n') >$@
