#!/bin/bash

# enable GCP agents
systemctl enable google-guest-agent.service
systemctl enable google-osconfig-agent.service
systemctl enable cloud-init.service
