{% from "telegraf/map.jinja" import telegraf with context %}

influxdata_repo:
  pkgrepo.managed:
    - humanname: Influxdata repo
    - name: deb https://repos.influxdata.com/ubuntu trusty stable
    - key_url: https://repos.influxdata.com/influxdb.key
    - file: /etc/apt/sources.list.d/influxdata.list
    - require_in:
      - pkg: telegraf

telegraf_pkg:
  pkg.installed:
    - name: telegraf

telegraf_conf:
  file.managed:
    - name: /etc/telegraf/telegraf.conf
    - source: salt://telegraf/templates/telegraf.conf
    - template: jinja

telegraf_service:
  service.running:
    - name: telegraf
    - enable: True
    - watch:
      - file: telegraf_conf
    - require:
      - pkg: telegraf
