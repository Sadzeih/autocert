#!/bin/sh

# Download the root certificate and set permissions
if [ "$DURATION" == "" ];
then
    step ca certificate $COMMON_NAME $CRT $KEY
else
    step ca certificate --not-after $DURATION $COMMON_NAME $CRT $KEY
fi

step ca federation $FEDERATED_PEM

chmod 644 $CRT $KEY $FEDERATED_PEM

step ca root $STEP_ROOT
chmod 644 $STEP_ROOT
