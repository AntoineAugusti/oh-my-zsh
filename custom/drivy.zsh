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
    alias udf-drop="udf && ruby udf.rb drop $1"

    # Folders
    alias etl="cd $HOME/Documents/etl"
    alias dags="cd $HOME/Documents/etl/dags"
    alias udf="cd $HOME/Documents/etl/redshift-udfs"
    alias crails="cd $HOME/Documents/drivy-rails/"
    alias ops="cd $HOME/Documents/ops/"
    alias tools="cd $HOME/Documents/drivy-tools/"

    # Autoload Embulk env variables
    source $HOME/embulk-env.sh
    # Autoload Airflow env variables
    source $HOME/airflow-env.sh

    # Rails
    alias dstart='foreman start -f Procfile.dev'
    alias drestart='pgrep unicorn | xargs kill -USR2'
    alias circle='open https://circleci.com/gh/drivy/drivy-rails/tree/`git rev-parse --symbolic-full-name --abbrev-ref HEAD`'
    alias specs='zeus rspec $(git diff --name-only master..HEAD | grep -e "^spec/.*_spec.rb$")'
    alias pullRails='crails && gpp && bundle && yarn && bin/rake db:migrate RAILS_ENV=test && bin/rake db:migrate'

    # Aliases
    alias reqFile='rm -f $HOME/Desktop/req.sql && stt $HOME/Desktop/req.sql'
    alias ddl='etl && cd cli && ruby main.rb generate_ddl $1 $2'
fi
