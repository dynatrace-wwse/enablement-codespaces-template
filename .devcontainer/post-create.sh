#!/bin/bash
# --- Initializing terminal ----
# Loading functions to script
export SECONDS=0
source .devcontainer/util/source_framework.sh
setUpTerminal

# --- Below here is how the environment will be set up ---

startKindCluster

installK9s

#TODO: BeforeGoLive: remove this. This is only needed for professors to have the Mkdocs publish the documentation live in the container
#installMkdocs 

# Dynatrace Operator can be deployed automatically
#dynatraceDeployOperator

# You can deploy CNFS or AppOnly
#deployCloudNative
#deployApplicationMonitoring

# In here you deploy the Application you want
# The TODO App will be deployed as a sample
deployTodoApp

# If you want to deploy your own App, just create a function in the my_functions.sh file and call it here.
# deployMyCustomApp

# This step is needed, do not remove it
# it'll verify if there are error in the logs and will show them in the greeting as well a monitoring 
finalizePostCreation

printInfoSection "Your dev container finished creating"
