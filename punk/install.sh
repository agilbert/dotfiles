# P'unk specific open A2 / node.js / PHP development stuff
brew install node mongo mysql55 imagemagick netpbm

# Set up mongodb to run on the regular
mkdir ~/Library/LaunchAgents
ln -sfv /usr/local/opt/mongodb/*.plist ~/Library/LaunchAgents
launchctl load ~/Library/LaunchAgents/homebrew.mxcl.mongodb.plist

# mysql 5.5 formula is "keg only" so we need to make our own symlinks
cd /usr/local/bin
ln -s ../Cellar/mysql55/5.5.30/bin/* .

# Set up mysql to run on the regular
ln -sfv /usr/local/opt/mysql55/*.plist ~/Library/LaunchAgents
launchctl load ~/Library/LaunchAgents/homebrew.mxcl.mysql55.plist

# Set the root mysql password
mysqladmin -u root password "root"

# Downgrade PHP to 5.3, needed for Way to Health development / Doctrine 1.2
# see http://justinhileman.info/article/reinstalling-php-on-mac-os-x/
brew tap homebrew/dupes
brew tap josegonzalez/homebrew-php
brew install php53 --with-mysql

# Fix PEAR permissions
chmod -R ug+w `brew --prefix php53`/lib/php
pear config-set php_ini /usr/local/etc/php/5.3/php.ini

# Fix PEAR config and upgrade
pear config-set auto_discover 1
pear update-channels
pear upgrade

# Install PHP extensions
brew install php53-intl php53-apc php53-mongo php53-memcache

# These are the PEAR packages I use. You might want something else.
# pear install pear.phpunit.de/PHPUnit PHP_CodeSniffer

# Link installed PEAR executables into the $PATH
# ... You could also add "`brew --prefix php54`/bin" to your $PATH
brew unlink php53; brew link php53

# Set "PSR-2" as your default coding standard
phpcs --config-set default_standard PSR2

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