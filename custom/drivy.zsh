if [ $host = "drivy" ]; then
    redashHost='redash.antoine-augusti.fr'

    # Airflow
    alias tunnelAirflow="ssh -L4242:127.0.0.1:8080 ubuntu@$redashHost"

    # Redah
    alias redashUbuntu="ssh ubuntu@$redashHost"
    alias redashEmbulk="ssh ubuntu@$redashHost -t 'sudo su embulk -c \"cd /home/embulk; /bin/bash\"'"
    alias redash="ssh ubuntu@$redashHost -t 'cd /opt/redash/current; /bin/bash'"

    # Folders
    alias etl="cd $HOME/Documents/etl"
    alias dags="cd $HOME/Documents/etl/dags"
fi
