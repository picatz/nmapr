module Nmapr
  module Options
    module Evasion 

      def fragment
        add_argument("-f")
      end
      
      def interface(value) 
        add_argument("-e " << value)
      end
      
      def mtu(value) 
        add_argument("-mtu " << value.to_s)
      end
      
      def ttl(value) 
        add_argument("-ttl " << value.to_s)
      end

      def decoy(value)
        add_argument("-D " << value)
      end
      
      def decoys(value)
        add_argument("-D " << value.join(","))
      end
      
      def spoof(type, value)
        case type
        when :ip
          add_argument("-S " << value)
        when :mac
          add_argument("--spoof-mac " << value)
        end
      end
      
      def bad_sum
        add_argument("--badsum")
      end
      
      def adler32
        add_argument("--adler32")
      end

      def proxy(value)
        add_argument("--proxies " << value)
      end

      def proxies(type)
        case type
        when String
          proxy(type)
        when Array
          add_argument("--proxies " << type.join(","))
        end
      end
      
      def source_port(value)
        add_argument("--source-port " << value.to_s)
      end

      def data(type = :hex, value)
        case type
        when :hex
          add_argument("--data " << value)
        when :string
          add_argument("--data-string " << value.to_s)
        when :length
          add_argument("--data-length " << value.to_s)
        end
      end

      def randomize
        add_argument("--randomize-hosts")
      end
    
    end
  end
end
