FROM ubuntu:latest
RUN apt-get update && apt-get -y update
RUN apt-get install -y build-essential python3.6 python3-pip python3-dev
RUN apt-get install libssl-dev
RUN pip3 -q install pip --upgrade
RUN pip3 install jupyter
RUN pip install -U bigchaindb-driver
CMD ["jupyter", "notebook", "--port=8888", "--no-browser", "--ip=0.0.0.0", "--allow-root"]