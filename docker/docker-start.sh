#!/bin/bash

#Coso para que furule el spark
echo "Iniciando spark....."
bin/spark-class org.apache.spark.deploy.master.Master &


echo "Instalando pyspark y notebook....."
pip install pyspark
pip install notebook

echo "Iniciando server de jupyter....."
~/.local/bin/jupyter-lab --ip=0.0.0.0 --port 8888 --no-browser --notebook-dir=/proyecto --NotebookApp.allow_origin="*" --allow-root --ServerApp.password='' --ServerApp.token='' --ServerApp.password_required=False
