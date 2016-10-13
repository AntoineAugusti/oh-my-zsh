os=`uname -s`
export OS=$os
host=`hostname | cut -d. -f1`
export HOST=host

if [ $host = "aaugusti" ] && [ $os = "Linux" ]; then
    export http_proxy='http://cachemad.insa-rouen.fr:3128'
    export https_proxy='http://cachemad.insa-rouen.fr:3128'
    export npm_config_proxy='cachemad.insa-rouen.fr:3128'
    export npm_config_https_proxy='cachemad.insa-rouen.fr:3128'
    export no_proxy=".insa-rouen.fr,.pic,localhost"
fi
