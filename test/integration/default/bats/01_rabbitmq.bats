#!/usr/bin/env bats

@test "Ensure rabbitmq is installed" {
    run rpm -q rabbitmq-server
    [ "$status" -eq 0 ]
}

@test "SELinux boolean nis_enabled is true" {
    run getsebool nis_enabled
    [ "$status" -eq 0 ]
    [[ "$output" == "nis_enabled --> on" ]]
}

@test "Ensure rabbitmq is enabled" {
    run systemctl is-enabled rabbitmq-server
    [ "$status" -eq 0 ]
}

@test "Ensure rabbitmq is running" {
    run systemctl is-active rabbitmq-server
    [ "$status" -eq 0 ]
}

@test "rabbitmqctl status works" {
    run rabbitmqctl status
    [ "$status" -eq 0 ]
}
