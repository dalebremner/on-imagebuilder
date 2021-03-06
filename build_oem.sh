#!/bin/bash
set -e

# intel overlay
sudo ansible-playbook -i hosts common/overlay_wrapper.yml -e "config_file=vars/oem/intel.yml provisioner=roles/oem/overlay/provision_intel_flashing_overlay"

# quanta overlay
sudo ansible-playbook -i hosts common/overlay_wrapper.yml -e "config_file=vars/oem/quanta.yml provisioner=roles/oem/overlay/provision_quanta_flashing_overlay"

# dell overlay
sudo ansible-playbook -i hosts common/overlay_wrapper.yml -e "config_file=vars/oem/dell_raid_overlay.yml provisioner=roles/oem/overlay/provision_dell_raid_overlay"

# raid overlay
sudo ansible-playbook -i hosts common/overlay_wrapper.yml -e "config_file=vars/oem/raid_overlay.yml provisioner=roles/oem/overlay/provision_raid_overlay"

# secure erase overlay
sudo ansible-playbook -i hosts common/overlay_wrapper.yml -e "config_file=vars/oem/secure_erase_overlay.yml provisioner=roles/oem/overlay/provision_secure_erase_overlay"
