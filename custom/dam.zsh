if host proxy-rie.ac.i2 > /dev/null
then
  export http_proxy=http://proxy-rie.ac.i2:8080
  export HTTP_PROXY=$http_proxy
  export https_proxy=$http_proxy
  export HTTPS_PROXY=$http_proxy
else
  # no proxy
fi
