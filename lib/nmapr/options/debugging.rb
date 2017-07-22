module Nmapr
  module Options
    module Debugging 
      # refactor to work like verbose / combine in to Verbose
      def debug
        add_argument("-d")
      end
      def open
        add_argument("--open")
      end
      alias show_open open
      def packet_trace 
        add_argument("--packet-trace")
      end
      def reason 
        add_argument("--reason")
      end
      def list_interfaces
        add_argument("--iflist")
      edn
    end
  end
end
