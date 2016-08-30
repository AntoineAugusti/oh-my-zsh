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

    # UDFs
    alias udf-docs="udf && ruby udf.rb doc| pbcopy && echo 'Copied!'"
    alias udf-test="udf && ruby udf.rb test $1"
    alias udf-load="udf && ruby udf.rb load $1"

    # Folders
    alias etl="cd $HOME/Documents/etl"
    alias dags="cd $HOME/Documents/etl/dags"
    alias udf="cd $HOME/Documents/etl/redshift-udfs"
fi
