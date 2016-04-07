{% from 'telegraf/map.jinja' import telegraf with context %}

include:
  - telegraf

telegraf_config:
  file.managed:
    - name: {{ telegraf.conf_file }}
    - source: salt://telegraf/templates/conf.jinja
    - template: jinja
    - context:
      config: {{ telegraf_config }}
    - watch_in:
      - service: telegraf
    - require:
      - pkg: telegraf
