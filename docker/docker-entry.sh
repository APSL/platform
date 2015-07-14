#!/bin/bash
# Copyright (c) 2015 Spinpunch, Inc. All Rights Reserved.
# See License.txt for license information.

mkdir -p web/static/js

echo "127.0.0.1 dockerhost" >> /etc/hosts
/etc/init.d/networking restart

echo starting postfix
/etc/init.d/postfix restart

envtpl /go/src/github.com/mattermost/platform/config/config_docker.json.tpl  --allow-missing --keep-template

echo starting react processor
cd /go/src/github.com/mattermost/platform/web/react && npm start &

echo starting go web server
cd /go/src/github.com/mattermost/platform/; go run mattermost.go -config=config_docker.json &

echo starting compass watch
cd /go/src/github.com/mattermost/platform/web/sass-files && compass watch
