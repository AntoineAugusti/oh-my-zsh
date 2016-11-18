if [ $host = "Antoine-MacBook-Pro" ]; then
    # Airflow
    alias airflowTunnel="ssh -L4242:127.0.0.1:8080 airflow"
    alias airflowEmbulk="ssh airflow-embulk -t 'cd etl; bash --login'"

    # Redah
    alias redash="ssh redash -t 'cd /opt/redash/current; /bin/bash'"
    alias redash-socks="ssh -D 1337 -C -N redash -v"

    # Caravel
    alias caravel="ssh caravel"

    # UDFs
    alias udf-docs="udf && ruby udf.rb doc| pbcopy && echo 'Copied! Opening browser to copy and paste' && open https://github.com/drivy/etl/wiki/Redshift-UDFs-documentation/_edit"
    alias udf-test="udf && ruby udf.rb test $1"
    alias udf-load="udf && ruby udf.rb load $1"

    # Folders
    alias etl="cd $HOME/Documents/etl"
    alias dags="cd $HOME/Documents/etl/dags"
    alias udf="cd $HOME/Documents/etl/redshift-udfs"
    alias crails="cd $HOME/Documents/drivy-rails/"

    # Autoload Embulk env variables
    source $HOME/embulk-env.sh

    # Rails
    alias dstart='foreman start -f Procfile.dev'
    alias drestart='pgrep unicorn | xargs kill -USR2'

    # Aliases
    alias reqFile='rm -f $HOME/Desktop/req.sql && stt $HOME/Desktop/req.sql'
fi
