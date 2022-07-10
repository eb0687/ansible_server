# Ansible server

ansible configuration for servers and/or virtual machines

---

## Introduction

Playing around with virtual machines and servers is fun, however replicating the setup can be quite tedious. This projects aim is to have a consistent basic setup across various VMs and servers using ansible's automation features.

This [video](https://youtu.be/gIDywsGBqf4) tutorial will be used as a starting base to create my own template for ansible automation techniques.

---

## Instructions

Intall ansible usign the below command.

```
sudo apt install ansible
```

Run the below command in a terminal to pull my config.

```
sudo ansible-pull -U https://github.com/eb0687/ansible_server.git
```

---


