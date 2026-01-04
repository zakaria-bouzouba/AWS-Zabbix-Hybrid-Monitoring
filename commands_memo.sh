# --- 1. Installation Docker (Sur le Serveur) ---
sudo apt update
sudo apt install -y docker.io docker-compose-v2
sudo usermod -aG docker $USER
# Logout/Login required here

# --- 2. Démarrage Zabbix ---
docker compose up -d
docker compose ps

# --- 3. Client Linux (Agent) ---
sudo add-apt-repository universe
sudo apt update
sudo apt install -y zabbix-agent
# Edit config: sudo nano /etc/zabbix/zabbix_agentd.conf
# Change: Server=10.0.1.X
sudo systemctl restart zabbix-agent

# --- 4. Client Windows ---
# Installer MSI -> IP Serveur: 10.0.1.X -> Port 10050
