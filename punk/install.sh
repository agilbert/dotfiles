# P'unk specific open A2 / node.js / PHP development stuff
brew install node mongo mysql imagemagick netpbm

# Set up mongodb to run on the regular
ln -sfv /usr/local/opt/mongodb/*.plist ~/Library/LaunchAgents
launchctl load ~/Library/LaunchAgents/homebrew.mxcl.mongodb.plist

# Set up mysql to run on the regular
ln -sfv /usr/local/opt/mysql/*.plist ~/Library/LaunchAgents
launchctl load ~/Library/LaunchAgents/homebrew.mxcl.mysql.plist

# Set the root mysql password
mysqladmin -u root password "root"

cat <<EOF
#--------------------------------- MANUAL STEPS FROM HERE ON OUT ---------------------------------#
#
# 1. sudo cp ~/.dotfiles/punk/php.ini /etc/php.ini
#
# 2. Edit /etc/apache2/httpd.conf and update with the contents of ~/.dotfiles/punk/httpd.conf
#
# 3. Restart Apache with sudo apachectl start
#
# 4. If you are moving from an old machine, you can copy .ssh config stuff / keys from that one
#-------------------------------------------------------------------------------------------------#
EOF