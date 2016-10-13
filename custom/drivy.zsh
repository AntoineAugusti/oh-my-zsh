if [ $host = "Antoine's MacBook Pro" ]; then
    # Airflow
    alias tunnelAirflow="ssh -L4242:127.0.0.1:8080 redash"

    # Redah
    alias redashUbuntu="ssh redash"
    alias redashEmbulk="ssh redash-embulk -t 'cd etl; bash --login'"
    alias redash="ssh redash -t 'cd /opt/redash/current; /bin/bash'"
    alias redash-socks="ssh -D 1337 -C -N redash -v"

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
