# See: https://developers.upcloud.com/1.3/5-zones/
zone     = "fi-hel1"
username = "ubuntu"

# Prefix to use for all resources to separate them from other resources
prefix = "kubespray"

inventory_file = "inventory.ini"

#  Set the operating system using UUID or exact name
template_name = "Ubuntu Server 20.04 LTS (Focal Fossa)"

ssh_public_keys = [
  # Put your public SSH key here
  "ssh-rsa public key 1",
  "ssh-rsa public key 2",
]

# check list of available plan https://developers.upcloud.com/1.3/7-plans/
machines = {
  "master-0" : {
    "node_type" : "master",
    #number of cpu cores
    "cpu" : "2",
    #memory size in MB
    "mem" : "4096"
    # The size of the storage in GB
    "disk_size" : 250
    "additional_disks" : {}
  },
  "worker-0" : {
    "node_type" : "worker",
    #number of cpu cores
    "cpu" : "2",
    #memory size in MB
    "mem" : "4096"
    # The size of the storage in GB
    "disk_size" : 250
    "additional_disks" : {
      # "some-disk-name-1": {
      #   "size": 100,
      #   "tier": "maxiops",
      # },
      # "some-disk-name-2": {
      #   "size": 100,
      #   "tier": "maxiops",
      # }
    }
  },
  "worker-1" : {
    "node_type" : "worker",
    #number of cpu cores
    "cpu" : "2",
    #memory size in MB
    "mem" : "4096"
    # The size of the storage in GB
    "disk_size" : 250
    "additional_disks" : {
      # "some-disk-name-1": {
      #   "size": 100,
      #   "tier": "maxiops",
      # },
      # "some-disk-name-2": {
      #   "size": 100,
      #   "tier": "maxiops",
      # }
    }
  },
  "worker-2" : {
    "node_type" : "worker",
    #number of cpu cores
    "cpu" : "2",
    #memory size in MB
    "mem" : "4096"
    # The size of the storage in GB
    "disk_size" : 250
    "additional_disks" : {
      # "some-disk-name-1": {
      #   "size": 100,
      #   "tier": "maxiops",
      # },
      # "some-disk-name-2": {
      #   "size": 100,
      #   "tier": "maxiops",
      # }
    }
  }
}
