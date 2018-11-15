#!/bin/bash
add () { echo "192.168.99.100    dev.kube" >> /etc/hosts
}

remove () { sed '/192.168.99.100    dev.kube/d' /etc/hosts
}

$1 $2