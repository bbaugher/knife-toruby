require 'chef/knife'
require 'chef/ruby_compat'

class Chef
  class Knife
    # Captialization has to be this way to make toruby one word in the command
    class EnvironmentToruby < Chef::Knife

      banner "knife environment toruby ENVIRONMENT [options]"
      
      def run
        
        #Get Arguments
        if @name_args.size != 1
          ui.info("Please specify an environment name")
          show_usage
          exit 1
        end

        env_name = @name_args.first

        env = Chef::Environment.load(env_name)

        output(Chef::RubyCompat.to_ruby(env))

      end

    end
  end
end