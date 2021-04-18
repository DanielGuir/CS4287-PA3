README file for project3

---Milestone Report---
For this project, we had some difficulties in milestone 1 and 2 which took us much more time than we expected. Specifically in milestone 2 where we had difficulties identifing the port and ip address to access our services.

---Teamwork---
We split the work as close to 50/50 as we could. For the milestones we usually take turns to do the work.

---Running the code---
To run the code you go to the directory and run vagrant up. You can go into the .vagrant folder
paths where the private key is stored to use to ssh into the vagrant machine to use the cleanup playbook
using ansible-playbook cleanup_playbook.yml to terminate the machines. Otherwise the steps
are the same as the previous project of running producer.py on a machine to send data.

Note: the key is not accessable in a github repository, so you have to move the key submitted to brightspace to the root directory before running the code.