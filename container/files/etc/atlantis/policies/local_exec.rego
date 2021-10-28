package main

############################################################
# Disallow non-allowlisted commands

deny_bad_commands[msg] {
    # This grabs all the resources in this module - NOT just changing ones
    # This is because the planned_values block doesn't include the actual command to run
    x := input.configuration.root_module.resources[_]

    # Only apply to local-exec
    x.provisioners[_].type == "local-exec"

    # Then grab the command thats going to run
    c := x.provisioners[_].expressions.command.constant_value

    # Check it against the allow list
    allowlist := {
        #  This is the exception list for commands blessed by security
        # "ls -lah" # <link to jira ticket allowing this>
    }

    not allowlist[c]

    # Create a nice, human-readable error
    msg := sprintf("local-exec not allowed in resource: %s", [x.address])
}