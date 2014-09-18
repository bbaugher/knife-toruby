Knife To Ruby
=============

A [Chef]() Knife plugin to print Chef objects (Role/Environment) in ruby code,

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

Chef Objects Supported
----------------------

 * Role
 * Environment
