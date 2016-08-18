if [ $host = "Antoine's MacBook Pro" ]; then
    redashHost='redash.drivy.com'

    # Airflow
    alias tunnelAirflow="ssh -L4242:127.0.0.1:8080 ubuntu@$redashHost"

    # Redah
    alias redashUbuntu="ssh ubuntu@$redashHost"
    alias redashEmbulk="ssh embulk@$redashHost -t 'cd etl; bash --login'"
    alias redash="ssh ubuntu@$redashHost -t 'cd /opt/redash/current; /bin/bash'"
    alias redash-socks="ssh -D 1337 -C -N ubuntu@$redashHost -v"

    # Caravel
    alias caravel="ssh caravel"

    # Folders
    alias etl="cd $HOME/Documents/etl"
    alias dags="cd $HOME/Documents/etl/dags"
fi
