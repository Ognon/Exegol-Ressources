echo wpscan --api-token $api_key --url "http://$TARGET/" --no-banner --plugins-detection aggressive > ~/.exegol/my-resources/setup/zsh/history
mv ./win/* /opt/resources/windows
mv ./Linux* /optresources/linux
mv ./setup.sh /opt
cd ..
rm -rf Exegol-Ressources
