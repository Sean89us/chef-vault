name 'chef-vault'
maintainer 'Chef Software, Inc.'
maintainer_email 'cookbooks@chef.io'
license 'Apache-2.0'
description 'Installs the chef-vault gem and provides chef_vault_item recipe helper'
version '3.1.2'

source_url 'https://github.com/chef-cookbooks/chef-vault'
issues_url 'https://github.com/chef-cookbooks/chef-vault/issues'
chef_version '>= 12.9'

if `chef-client --version`.split[1].to_f < 13
  gem 'chef-vault', '< 4.0'
else
  gem 'chef-vault'
end

supports 'any'
