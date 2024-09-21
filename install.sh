git clone https://github.com/Frozenka/Exegol-Ressources.git
cd Exegol-Ressources

cat tmux.conf >> ~/.tmux.conf
cat aliases >>  /opt/.exegol_aliases
cat history >> ~/.zsh_history

cp /opt/seclists/Passwords/xato-net-10-million-passwords-1000000.txt /opt/bigwl.txt

mv ./win/* /opt/resources/windows
mv ./Linux/* "/opt/resources/linux"
mv ./setup.sh /opt

cd ..
rm -rf Exegol-Ressources
cd /tmp
python3 -m pip install --user uploadserver
sudo apt install medusa -y
pip3 install wsgidav
pip install cheroot
pip3 install pyftpdlib

apt install snmp-mibs-downloader
apt install ripgrep

echo "PermitRootLogin prohibit-password" >> /etc/ssh/sshd_config
echo "PasswordAuthentication yes" >> /etc/ssh/sshd_config
#echo  "export TERM=xterm-256color" >> ~/.zshrc
echo "deb http://ftp.fr.debian.org/debian/ jessie main non-free" >> /etc/apt/sources.list
echo "deb-src http://ftp.fr.debian.org/debian/ jessie main non-free" >> /etc/

git clone https://github.com/r3motecontrol/Ghostpack-CompiledBinaries.git 
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

mv Ghostpack-CompiledBinaries /opt/resources/windows
cd /opt/resources/windows wget https://raw.githubusercontent.com/fashionproof/EnableAllTokenPrivs/master/EnableAllTokenPrivs.ps1
cd /opt/resources/windows wget https://raw.githubusercontent.com/Frozenka/linfast/main/winfast
cd /opt/resources/linux https://raw.githubusercontent.com/Frozenka/linfast/main/linfast

#Modification visuel uniquement :
sed -i 's/"#"/"%{$fg[green]%}➜ %{$reset_color%}"/g' /opt/.exegol_shells_rc
sed -i 's/"%m"/"${HOSTNAME#exegol-}"/g' /opt/.exegol_shells_rc
sed -i 's/(%Z)//g' ~/.zshrc

#Install Sublime text

wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/sublimehq-archive.gpg > /dev/null
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list

# Update + finalisation des install
apt update
apt install sublime-text

# On supprime l'install.sh
rm /workspace/install.sh
 
