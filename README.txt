README file for project2

---Milestone Report---
This was a very frustrating milestone as many of the things seemed like they should work
and I just ran into very many little errors that made this take many many more hours than
I would have liked it to. This milestone required adding couchdb installation and configuration
to the ansible playbooks as well as a cleanup playbook. The cleanup playbook worked well from what
Daniel made. The couchdb installation took many many tries as there are many ways to potentially
install and configure it. The way that finally has seemed to work is to copy the local.ini file
into the system to overwrite the previous one after installing couchdb through the apt module
so that it would not spawn a gui.

---Teamwork---
We split the work as close to 50/50 as we could, mostly we took the individual parts
that we did for the previous project and implemented the parts we did in ansible respectively.

---Running the code---
To run the code you go to the directory and run vagrant up. You can go into the .vagrant folder
paths where the private key is stored to use to ssh into the vagrant machine to use the cleanup playbook
using ansible-playbook cleanup_playbook.yml to terminate the machines. Otherwise the steps
are the same as the previous project of running producer.py on a machine to send data.