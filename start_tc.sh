docker run -d --name teamcity-server-instance --rm  \
    -v /Users/vladimirstovpovoj/devops_lessons/docker/team-city:/data/teamcity_server/datadir \
    -p 8111:8111 \
    jetbrains/teamcity-server

