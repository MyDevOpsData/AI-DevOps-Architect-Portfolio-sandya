VM Migration using AWS VM Import/Export:

* VM Import/Export enables you to import virtual machine (VM) images from your existing virtualization environment (On-Prem, DC) to Amazon EC2, and also to export them back to your On-Prem environment.
* You can import Windows and Linux VMs that use VMware ESX or Workstation, Microsoft Hyper-V, and Citrix Xen virtualization formats.
* VM Import will convert your VM into an Amazon EC2 AMI, which you can use to run Amazon EC2 instances.
* AWS SMS (Server Migration Service): For large VM infrastructures, automates the import process thereby reducing the workload of migrating large VM infrastructures.

Common usecases for VM Import/Export:
  Migrate your existing applications and workloads to Amazon EC2
  Import your VM Image Catalog to Amazon EC2
  Create a disaster recovery repository for your VM images

Pricing:
  VM Import/Export is available t no additional charge, but you are charged for standard usage of Amazon EC2 and Amazon S3.

VM Import and Export Working architecture:
   Phase1:  Stop VM --> Export from Virtualization Env in (Raw, VHD, VMDK, OVA) one of the formate -->Import(upload) to S3 --> 
   Phase2:  use ec2 Import-image Command which will create a AMI which is converting VM image(Ova)formate to AMI --> we can create VM by using AMI in this region also we copy AMI to anothr region to use image in other regiouns 
    Phase3:  Use create-instance-export-task Command to create VM in on-prem by convert back AMI to VM (Raw, VHD, VMDK, OVA) formate 
  VM-->Import to amazon s3--->vm catalog--create AMI--> AMI
      
VM Import Export Steps

Prerequisite:

* Download, install and configure AWS Command Line Interface.
* vmimport - VM Import Service Role

1. Export VM from its current environment as an OVA file (or VMDK, VHD, or RAW) (if you are testing this make sure the VM has at least one user configured with password)
2. Create a S3 bucket and upload the VM image to S3 using upload / drag and drop, or using AWS CLI
3. Import your VM using the ec2 import-image command
4. Use the ec2 describe-import-image-tasks command to monitor the import progress
5. Once Import is completed Launch EC2 Instance from the AMI created, or copy the AMI to other region

Project Dememonstration:
Migrate a Virtual Mechine from corporate data center or on premises data center to AWS cloud, using AWS VM import and Export feature.
1. Download, Install and configure AWS command line interface. https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html
2. Setup Environmnet variable-->advanced sys settings-->env variable--sys variable--path variable--edit-->add path--ok
3. run aws --version
4. configure aws --> aws configure-->access key, secret, region, output formate: json
5. 



  
