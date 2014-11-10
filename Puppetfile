# This file manages Puppet module dependencies.
#
# It works a lot like Bundler. We provide some core modules by
# default. This ensures at least the ability to construct a basic
# environment.

# Shortcut for a module from GitHub's boxen organization
def github(name, *args)
  options ||= if args.last.is_a? Hash
    args.last
  else
    {}
  end

  if path = options.delete(:path)
    mod name, :path => path
  else
    version = args.first
    options[:repo] ||= "boxen/puppet-#{name}"
    mod name, version, :github_tarball => options[:repo]
  end
end

# Shortcut for a module under development
def dev(name, *args)
  mod name, :path => "#{ENV['HOME']}/src/boxen/puppet-#{name}"
end

# Includes many of our custom types and providers, as well as global
# config. Required.

github "boxen", "3.4.2"

# Support for default hiera data in modules

github "module-data", "0.0.3", :repo => "ripienaar/puppet-module-data"

# Core modules for a basic development environment. You can replace
# some/most of these if you want, but it's not recommended.

github "dnsmasq",     "1.0.1"
github "foreman",     "1.2.0"
github "gcc",         "2.0.100"
github "git",         "2.3.1"
github "go",          "1.1.0"
github "homebrew",    "1.9.2"
github "hub",         "1.3.0"
github "inifile",     "1.0.3", :repo => "puppetlabs/puppetlabs-inifile"
github "nginx",       "1.4.3"
github "nodejs",      "3.7.0"
github "openssl",     "1.0.0"
github "phantomjs",   "2.3.0"
github "pkgconfig",   "1.0.0"
github "repository",  "2.3.0"
github "ruby",        "8.1.2"
github "stdlib",      "4.1.0", :repo => "puppetlabs/puppetlabs-stdlib"
github "sudo",        "1.0.0"
github "xquartz",     "1.1.1"

# Optional/custom modules. There are tons available at
# https://github.com/boxen.

github "sysctl", "1.0.1"
github "sublime_text_2", "1.1.2"
github "chrome", "1.1.2"
github "firefox", "1.1.9"
github "macvim", "1.0.0"
github "flowdock", "1.0.0"
github "java", "1.5.0"
github "elasticsearch", "2.2.0"
github "postgresql", "3.0.1"
github "imagemagick", "1.2.1"
github "irssi", "1.0.1"
github "ohmyzsh", "1.0.0", :repo => "samjsharpe/puppet-ohmyzsh"
github "github_for_mac", "1.0.2"
github "heroku", "2.1.1"
github "skitch", "1.0.2"
github "python", "1.3.0"
github "redis", "3.1.0"
github "lastpass", "1.1.0", :repo => "dieterdemeyer/puppet-lastpass"
github "screenhero", "1.0.1"
github "mongodb", "2.6.1"
