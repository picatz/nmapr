module Nmapr
  module Options
    module DNS 
      def dns(type, value = false)
        case type
        when :disable
          add_argument("-n")
        when false
          dns(:disable)
        when :reverse
          add_argument("-R")
        when true
          reverse(:reverse)
        when :system
          add_argument("--system-dns")
        when :server
          add_argument("--dns-servers " << value)
        when :servers
          add_argument("--dns-servers " << value.join(","))
        end
      end
    end
  end
end
