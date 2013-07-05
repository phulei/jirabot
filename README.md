jirabot
=======
This is a [Cinch](https://github.com/cinchrb/cinch) based IRC bot that I wrote
to watch an internal IRC channel and monitor for Jira tickets.  If it sees a
ticket, it will fetch that ticket's title, and post the title and a link to
the ticket in the channel.

This bot uses [Configatron](https://github.com/markbates/configatron/tree/v3) for
its configuration file.  Default config included, make sure to replace values
with the types listed.

This code is licensed under the Creative Commons License, CC-BY-SA-NC
(c) 2013, Christopher McCoy, a.k.a. Vanamar