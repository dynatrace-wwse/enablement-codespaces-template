#!/bin/bash
# Load framework
source .devcontainer/util/source_framework.sh

# Load tests
source $REPO_PATH/.devcontainer/test/test_functions.sh

#TODO: Modify the assertions so they match your deployment and anything you want to assert after the codespace was created.
#You can test the integration by typing in the terminal `runIntegrationTests`
printInfoSection "Running integration Tests for $RepositoryName"

#assertRunningPod dynatrace operator

#assertRunningPod dynatrace activegate

#assertRunningPod dynatrace oneagent

assertRunningPod todoapp todoapp

assertRunningApp 30100
