source "http://rubygems.org"

#############
# WARNING: Separate from the Gemspec. Please update both files
#############

gem "json_pure", "~> 1.6"
gem "multi_json", "~> 1.3"
gem "rake"
gem "gem-release"

gem "interact", :git => "git://github.com/vito/interact.git",:ref=>"18f1dd528b"
gem "cfoundry", :git => "git://github.com/cloudfoundry/vmc-lib.git",:ref=>"98a8e7be93"
gem "clouseau", :git => "git://github.com/vito/clouseau.git",:ref =>"af05617556"
gem "mothership", :git => "git://github.com/vito/mothership.git",:ref =>"18ac405ac3"

git "git://github.com/cloudfoundry/vmc-plugins.git",:ref=>"29b03f1fb4"  do
  gem "admin-vmc-plugin"
  gem "console-vmc-plugin"
  gem "mcf-vmc-plugin"
  gem "manifests-vmc-plugin"
  gem "tunnel-vmc-plugin"
end

group :test do
  gem "rspec", "~> 2.11"
  gem "webmock", "~> 1.9"
  gem "rr", "~> 1.0"
end
