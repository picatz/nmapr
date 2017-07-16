module Nmapr
  module Options
    module Debugging 
      def debug
        add_argument("-d")
      end
      def open
        add_argument("--open")
      end
      def packet_trace 
        add_argument("--packet-trace")
      end
      def reason 
        add_argument("--reason")
      end
    end
  end
end
