#!/usr/bin/python

import requests

def post(path, data):
    url = 'http://localhost:5601{}'.format(path)
    headers = {
        'Content-Type': 'application/json',
        'kbn-xsrf': 'true',
    }
    r = requests.post(url, headers=headers, data=data)
    print(r.status_code, r.text)

post('/api/saved_objects/index-pattern/access', '{"attributes":{"title":"access-*","timeFieldName":"@timestamp"}}')
post('/api/saved_objects/index-pattern/error', '{"attributes":{"title":"error-*","timeFieldName":"@timestamp"}}')
post('/api/kibana/settings/defaultIndex', '{"value":"access"}')
