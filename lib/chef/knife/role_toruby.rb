require 'chef/knife'
require 'chef/ruby_compat'

class Chef
  class Knife
    # Captialization has to be this way to make toruby one word in the command
    class RoleToruby < Chef::Knife

      banner "knife role toruby ROLE [options]"
      
      def run
        
        #Get Arguments
        if @name_args.size != 1
          ui.info("Please specify a role name")
          show_usage
          exit 1
        end

        role_name = @name_args.first

        role = Chef::Role.load(role_name)

        output(Chef::RubyCompat.to_ruby(role))

      end

    end
  end
end