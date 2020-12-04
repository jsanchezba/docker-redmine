# Redmine
Redmine Docker image to allow an install of plugins & themes. This image pulls the latest redmine stable available 

# How to use

- Put your plugins **compressed with zip** on the /plugins directory
- Put your themes **compressed with zip** on the /themes directory

# Build image

> docker build -t redmine-plugins .

# Default plugins & themes

Plugins:

- [Redmine banner](https://www.redmine.org/plugins/redmine_banner)
- [Redmine checklists](https://www.redmine.org/plugins/redmine_checklists)
- [Redmine issue dynamic edit](https://www.redmine.org/plugins/redmine_issue_dynamic_edit)

Themes:

- [PurpleMine2](https://www.redmine.org/projects/redmine/wiki/theme_list#PurpleMine2)
- [Circle](https://www.redmine.org/projects/redmine/wiki/theme_list#Circle-theme)