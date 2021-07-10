#!/bin/bash

# Add Toolserver public key to instances
sudo echo 'ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDhwMr1clCK4VSxg1W6nXUX326B0kRLrN7+l6NPnxN4quV4dHyBt7sqWDjmP+4ArYKyfTtlkxEzY1LF3l/dX/zEQAuSKqsXYQcWaGWRKAP+IUJwRTd6p+aKdc0RzNIzUtujLjzp5IGSMEyVt5bMUCKQfujbpLxMOKPqzNc11RvUv1Xwby6qmtXh7c6omKuzcqMEHDuMbBwuzOINmYuN+nDhsrpWdsErolI2z7jNPXbpqp6zZZEtm/h6d/Ec9foNY4zyj51uhwP4QU80HIeLKZepf+i2bOCtWMc/N+r+lIwnp/HbAo4bDUrjETpxJ6UEgZ5PkX5wEtUWtq7oq9TxKz0r ec2-user@ip-10-0-0-85.eu-west-1.compute.internal' >> /home/ec2-user/.ssh/authorized_keys
