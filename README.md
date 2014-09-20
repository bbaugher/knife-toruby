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
