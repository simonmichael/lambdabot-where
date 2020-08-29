A periodically-updated snapshot of the facts stored by the `lambdabot`
IRC bot's `@where` command.

[lambdabot] is used eg in the #haskell IRC channel on Freenode.
The @where command can be useful for storing and sharing answers
to FAQs, to provide support more efficiently and reduce noise.

Running "make" in this repo fetches the latest @where database, kindly
provided by lambdabot's operator int-e, and converts it to
tab-separated-value format for easier reading. This is committed here
periodically, facilitating maintenance and more effective use.

This is a read-only mirror; changes to the db can be made in IRC using
the `@where+` command. (Tip: query with `@where` first to avoid
collisions.)

If you're an IRC user who prefers to think of @where as an infinite
box of surprises, perhaps avoid reading this db snapshot.

[lambdabot]: https://wiki.haskell.org/IRC_channel#lambdabot
