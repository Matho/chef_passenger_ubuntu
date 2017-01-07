name 'passenger_ubuntu'
maintainer 'The Authors'
maintainer_email 'you@example.com'
license 'all_rights'
description 'Installs/Configures passenger_ubuntu'
long_description 'Installs/Configures passenger_ubuntu'
version '0.1.1'

depends 'rvm_passenger_nginx', '~> 1.0.0'

depends 'postgresql', '~> 6.0.1'
depends 'monit-ng', '~> 2.3.1'
depends 'imagemagick', '~> 0.2.3'
depends 'swap_tuning', '~> 0.2.0'
# depends 'sudo', '~> 3.3.0'
depends 'sshd', '~> 1.3.0'
depends 'fail2ban', '~> 3.1.0'

# If you upload to Supermarket you should set this so your cookbook
# gets a `View Issues` link
# issues_url 'https://github.com/<insert_org_here>/passenger_ubuntu/issues' if respond_to?(:issues_url)

# If you upload to Supermarket you should set this so your cookbook
# gets a `View Source` link
# source_url 'https://github.com/<insert_org_here>/passenger_ubuntu' if respond_to?(:source_url)
