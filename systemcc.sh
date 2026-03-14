sudo tee /etc/systemd/system/classchat.service <<EOF
[Unit]
Description=ClassChat System Service
After=network.target

[Service]
Type=simple
ExecStart=/bin/bash %h/classchat/startcc.sh
Restart=on-failure
User=%u

[Install]
WantedBy=multi-user.target
EOF

sudo systemctl daemon-reload
sudo systemctl enable classchat.service
sudo systemctl start classchat.service
