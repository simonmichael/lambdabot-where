A periodically-updated snapshot of the facts stored by the `lambdabot`
IRC bot's `@where` command.

[lambdabot] is used eg in the #haskell IRC channel on Freenode.
The @where command can be useful for storing and sharing answers
to FAQs, to provide support more efficiently and reduce noise.

Running "make" in this repo fetches the latest @where db, kindly
provided by lambdabot's operator int-e, and converts it to
tab-separated-value format. 

Committing the db here periodically gives it more permanence and
visibility, allowing us to maintain and use it more effectively.
Note this is a read-only mirror; changes to the db can be made in IRC
using the `@where+` command.

[lambdabot]: https://wiki.haskell.org/IRC_channel#lambdabot