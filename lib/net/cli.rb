# frozen_string_literal: true

require 'thor'

module Net
  # Handle the application command line parsing
  # and the dispatch to various command objects
  #
  # @api public
  class CLI < Thor
    # Error raised by this runner
    Error = Class.new(StandardError)

    desc 'version', 'net version'
    def version
      require_relative 'version'
      puts "v#{Net::VERSION}"
    end
    map %w[--version -v] => :version

    desc 'ping', 'Command description...'
    method_option :help, aliases: '-h', type: :boolean,
                         desc: 'Display usage information'
    def ping(*)
      if options[:help]
        invoke :help, ['ping']
      else
        require_relative 'commands/ping'
        Net::Commands::Ping.new(options).execute
      end
    end
  end
end
