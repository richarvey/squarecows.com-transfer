+++
author = "Ric Harvey"
title = "Migrating disks from GP2 to GP3"
date = "2022-10-05"
description = "Saving money on GP3 disks"
tags = [
    "aws",
]
+++

## Migrating from GP2 disks to GP3 to Save Money on Your AWS Bill
GP3 disks were announced back in December 2020 as a new and improved standard disk which promised the potential of 20% savings over the GP2 disks. Despite this, I rarely see a customer who's migrated their disks from GP2 to GP3, so here is a blog post that should get you started and on your way.

### Why GP3?
Well, to start with, you can save up to 20% on your bill, so this is an easy-win cost optimization to get done.
Secondly, the performance of GP3 disks is much better than GP2, with 3000 IOPs as the baseline vs. 100 IOPs on GP2. You can also scale the disks to a maximum of 16,000 IOPs if you need more. The throughput is also much better at 125MiB/s, which at top performance is four times better than GP2. Let's compare the disk's side by side in the table below:

![Comparison Table](/img/table.webp)

### Migrating from GP2 to GP3
There's good news in this you don't need to restart your machines as migrations can happen in place, but the catch is you need to be running a current lastest generation instance or one of the following: C1, C3, CC2, CR1, G2, I2, M1, M3, and R3.
#### To modify an Amazon EBS volume using the AWS Management Console
Open the Amazon EC2 console.
Choose Volumes, select the volume to modify, and then choose Actions, Modify Volume (you can also check instances and look at the attached volume to get to this stage).
The Modify Volume window displays the volume ID and the volume's current configuration, including type, size, IOPS, and throughput. Set new configuration values as follows:

 To modify the type, choose gp3 for Volume Type.
 To modify the size, enter a new value for Size.
 To modify the IOPS, enter a new value for IOPS.
 To modify the throughput, if the volume type is gp3, enter a new value for Throughput.
 After you have finished changing the volume settings, choose Modify. When prompted for confirmation, choose Yes.

__Note:__
It's worth noting that if you increase the volume size, you'll need to let the OS know it has more space. This guide: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/recognize-expanded-volume-linux.html will help you expand the volume on Linux instances.
#### Modify an EBS volume using Elastic Volumes (AWS CLI)
We'll use the modify-volume command to migrate from GP2 to GP3. The following is an example command to migrate an 8-GiB gp2 volume to gp3 with baseline performance.
aws ec2 modify-volume - volume-type gp3 -volume-id vol-11111111111111111
Following is an example output:

![Sample Output](/img/output.webp)

If you want to give your volume more IOPs or throughput, simply add the - iops or - throughput flags to the command line like so:
aws ec2 modify-volume - volume-type gp3 - iops 4000 - throughput 250 - volume-id vol-11111111111111111
### Time to wait
Once you commit to the volume modifications, it can take up to 24 hours to complete, and sometimes more. AWS says this happens when a disk isn't fully initialized. But all you have to do now is wait to receive better performing and more cost-effective disks.

