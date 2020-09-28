cd ansible && \
ansible-galaxy install -r requirements.yml -p roles && \
cd .. && \
cd packer && \
./run.sh

