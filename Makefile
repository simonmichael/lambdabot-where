# https://wiki.haskell.org/IRC_channel#lambdabot

default: where.tsv

.PHONY: where.db
where.db:
	curl -s  http://silicon.int-e.eu/lambdabot/State/where | zcat >$@

where.txt: where.db
	-iconv -c $< >$@

where.tsv: where.txt
	paste -s -d '\t\n' $< >$@

commit:
	@( git commit -m "update" -- where.tsv where.db 2>&1 | grep -E '(^\[|files? changed)' ) || echo "no changes"

