export HTTP_PROXY_HOST=child-prc.intel.com
export HTTP_PROXY_PORT=913
export HTTPS_PROXY_HOST=child-prc.intel.com
export HTTPS_PROXY_PORT=913
export AZURE_BLOB_ACCOUNT_NAME=azureopendatastorage
export AZURE_BLOB_CONTAINER_NAME=nyctlc
export AZURE_BLOB_RELATIVE_PATH=yellow
export AZURE_BLOB_SAS_TOKEN=r

sudo docker build \
    --build-arg AZURE_BLOB_ACCOUNT_NAME=$AZURE_BLOB_ACCOUNT_NAME \
    --build-arg AZURE_BLOB_CONTAINER_NAME=$AZURE_BLOB_CONTAINER_NAME \
    --build-arg AZURE_BLOB_RELATIVE_PATH=$AZURE_BLOB_RELATIVE_PATH \
    --build-arg AZURE_BLOB_SAS_TOKEN=$AZURE_BLOB_SAS_TOKEN \
    --build-arg AZURE_SQL_AE_JDBC=$AZURE_SQL_AE_JDBC \
    -t xiangyut/bigdl-ppml-azure-occlum:0.13 -f ./Dockerfile .
