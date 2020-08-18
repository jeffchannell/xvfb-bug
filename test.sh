#!/usr/bin/env bash
for v in 7 8; do
    echo "==================="
    echo "Testing in CentOS $v"
    echo "==================="
    docker build -t demo_centos_$v -f Dockerfile.centos . --build-arg version=$v > /dev/null 2>&1
    docker run --rm -ti demo_centos_$v
done

for v in stable unstable; do
    echo "=========================="
    echo "Testing in Debian $v"
    echo "=========================="
    docker build -t demo_debian_$v -f Dockerfile.debian . --build-arg version=$v > /dev/null 2>&1
    docker run --rm -ti demo_debian_$v
done

for v in 18.04 20.04 20.10; do
    echo "======================="
    echo "Testing in Ubuntu $v"
    echo "======================="
    docker build -t demo_ubuntu_$v -f Dockerfile.ubuntu . --build-arg version=$v > /dev/null 2>&1
    docker run --rm -ti demo_ubuntu_$v
done
