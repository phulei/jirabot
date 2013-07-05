## configuration for the bot.

# base IRC server config
configatron.irc.server = #STRING

# configure Jira information, don't forget /browse/ in the URL
configatron.jira.url = #STRING
configatron.jira.user = #STRING - valid jira user
configatron.jira.pass = #STRING - user's pass
# ticket regex for jira.
configatron.jira.regex = #REGEXP
# example: /\b(project1|project2)-([0-9]{1,7})\b/i

# configure the bot itself.
configatron.jirabot.nick = #STRING
configatron.jirabot.channels = # ARRAY
configatron.jirabot.plugins = [AutoOp, Jira]