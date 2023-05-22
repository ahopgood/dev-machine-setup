set-global-java:
  cmd.run:
    - name: "jenv global 17"
#    - runas: alexander
    - require:
      - pkg: jenv