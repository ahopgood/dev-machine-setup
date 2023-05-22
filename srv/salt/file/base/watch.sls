{% set os = salt['grains.get']('os:MacOS', MacOS) %}
{% if os == "MacOS" %}
watch:
  pkg.installed:
    - version: '4.0.3'
{% endif %}