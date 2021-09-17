# Unifi Controller Helm Chart

## ToDos

- Add mongodb
- Add terraform

## Controller Ports used

UDP	3478	Port used for STUN.
UDP	5514	Port used for remote syslog capture.
TCP	8080	Port used for device and application communication.
TCP	8443	Port used for application GUI/API as seen in a web browser.
TCP	8880	Port used for HTTP portal redirection.
TCP	8843	Port used for HTTPS portal redirection.
TCP	6789	Port used for UniFi mobile speed test.
TCP	27117	Port used for local-bound database communication.
UDP	5656-5699	Ports used by AP-EDU broadcasting.
UDP	10001	Port used for device discovery.
UDP	1900	Port used for "Make application discoverable on L2 network" in the UniFi Network settings.
    


## Syslogng



Parameter	Function
-p 5514/udp	Syslog UDP
-p 6601/tcp	Syslog TCP
-p 6514/tcp	Syslog TLS
-e PUID=1000	for UserID - see below for explanation
-e PGID=1000	for GroupID - see below for explanation
-e TZ=Europe/London	Specify a timezone to use EG Europe/London.
-v /config	Stores config and application files
-v /var/log	Stores logs collected by the syslog-ng service

## Further reading

- releaser action used for releasing the charts: https://github.com/helm/chart-releaser-actionhttps://github.com/helm/chart-releaser-action
- https://help.ui.com/hc/en-us/articles/218506997-UniFi-Ports-Used
- syslogng: https://hub.docker.com/r/linuxserver/syslog-ng