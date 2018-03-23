#!/bin/sh

if [ -z "$URL" ]; then
    echo "URL environment variable not set.   should be URL=www.example.com"
    exit 1
fi

exp="s#www.example.com#${URL}#g"
sed -i -e $exp /usr/local/apache2/conf/httpd.conf


/usr/local/bin/httpd-foreground

