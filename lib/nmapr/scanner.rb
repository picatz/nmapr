require_relative "options/options.rb"
require_relative "builders/builders.rb"

module Nmapr

  # A scanner class to take care of a generic nmap scan.
  class Scanner
    include Options::Ping
    include Options::Targets
    include Options::Ports
    include Options::TCP
    include Options::UDP
    include Options::SCTP
    include Options::DNS
    include Options::Detection
    include Options::Evasion
    include Options::Output
    include Options::Verbose
    include Options::Debugging
    include Options::Miscellaneos
    include Options::Performance
    include Builders::Argument
    include Builders::Command

    def initialize
      @targets     = []
      @not_targets = []
      @ports       = []
      @arguments   = ""
    end
  end

end
