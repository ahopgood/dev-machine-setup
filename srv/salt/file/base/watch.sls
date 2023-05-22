{% set os = salt['grains.get']('os:MacOS', MacOS) %}
{% if os == "MacOS" %}
watch:
  pkg.installed:
    - pkgs:
        - watch
{% endif %}