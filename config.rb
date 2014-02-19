## configuration for the bot.

# base IRC server config
configatron.irc.server = "localhost" #STRING

# configure Jira information, don't forget /browse/ in the URL
configatron.jira.url = "https://jira.atlgeek.com/browse/" 
configatron.jira.user = "chris" #STRING - valid jira user
configatron.jira.pass = $stdin.gets.chomp # prompts for password
# ticket regex for jira.
configatron.jira.regex = /\b(gklnks)-([0-9]{1,7})\b/i #REGEXP
# example: /\b(project1|project2)-([0-9]{1,7})\b/i

# configure the bot itself.
configatron.jirabot.nick = "JiraBot" #STRING
configatron.jirabot.channels = ["#jirabot"] # ARRAY
configatron.jirabot.plugins = [AutoOp, Jira]
