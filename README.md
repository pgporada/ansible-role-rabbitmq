# Ansible Role: pgporada.rabbitmq
Installs and configures RabbitMQ, primarily for Sensu.

- - - -
# Example Playbook

    ---
    - hosts: localhost
      connection: local
      become: true
      become_method: sudo
      roles:
        - ansible-role-rabbitmq

- - - -
# How to hack away at this role
Before submitting a PR, please create a test and run it through test-kitchen. You will need to have at least Ruby 2.x, probably through rbenv, gem, and Bundler.

Running test-kitchen

    bundle install
    bundle update
    bundle exec kitchen create
    bundle exec kitchen converge
    bundle exec kitchen verify
    bundle exec kitchen destroy

or as one shot

    bundle install

Please run the yaml files through pyamllint.

    find -type f -name "*.yml" -exec yamllint -f parsable {} \;

- - - -
# Theme Music
[The Debonaires - Same Way](https://www.youtube.com/watch?v=Y5erad_FX9U)

- - - -
# Author Information and License
GPLv3

(C) 2016 - [Phil Porada](https://philporada.com)
