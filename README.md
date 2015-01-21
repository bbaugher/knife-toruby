Knife To Ruby
=============

A [Chef](https://github.com/opscode/chef) Knife plugin to print Chef objects (Role/Environment) in ruby code,

    $ knife role toruby role_name
    name "role_name"

    description "my description"

    default_attributes({
      "a" => "b"
    })

    override_attributes({
      "a" => "b"
    })

    run_list("recipe[cookbook_a]", "recipe[cookbook_b]")

Should be equivalent to `knife show role -Fj` but for ruby.

Check the [change log](CHANGELOG.md) to see what has changed.

Installation
------------

    /opt/chef/embedded/gem install knife-toruby

How to Use
----------

    knife role toruby [ROLE]
    knife environment toruby [ENVIRONMENT]

Chef Objects Supported
----------------------

 * Role
 * Environment

Transform .json file to .rb locally
-----------------------------------

If you want to transform your .json role/environment files locally without uploading them to the chef-server you can do that using this script,

    require 'chef/ruby_compat'
    require 'chef/knife'
    require 'chef/knife/core/object_loader'
    require 'json'
    
    loader = ::Chef::Knife::Core::ObjectLoader.new(Chef::Role, nil)
    role = loader.load_from("roles", 'MY_ROLE.json')
    
    puts Chef::RubyCompat.to_ruby(role)

Update this script with your file name and if you are using an environment instead of a role. Save this file as something like `transform.rb`, make sure to have `knife-toruby` installed in knife and then run the command,

    knife exec transform.rb
