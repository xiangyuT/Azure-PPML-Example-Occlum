# Nytaxi example in a no-sgx spark image

Run Nytaxi example without SGX and occlum to compare the benchmark.

## Prerequisites

Pull image from dockerhub:
```bash
docker pull xiangyut/bigdl-ppml-azure-occlum:0.13
```
Or build image with `build-docker-image.sh` (Need to build `nytaxi/target/spark-azure-nytaxi-1.0-SNAPSHOT-jar-with-dependencies.jar` first): 
```bash
bash build-docker-image.sh
```

## Nytaxi on AKS (No SGX)
Check configure of environment variables in `run_nytaxi_k8s.sh`, `../driver.yaml` and `../executor.yaml`. Then you can submit Nytaxi query task with `run_nytaxi_k8s.sh`.
```bash
bash run_nytaxi_k8s.sh
```
