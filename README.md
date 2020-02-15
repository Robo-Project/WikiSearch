# WikiSearch
Requires docker


USAGE:
    
    docker run --rm \
    -v [output volume]:/opt/robotframework/reports:Z \
    -v $(pwd)/tasks:/opt/robotframework/tests:Z \
    -e ROBOT_OPTIONS="--variable SEARCH:[searchword]" \
    ppodgorsek/robot-framework
