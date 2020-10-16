cd ansible && \
ansible-galaxy install -f -r requirements.yml -p roles && \
cd .. && \
cd packer && \
./run.sh

