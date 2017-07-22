module Nmapr
  module Options
    module Miscellaneos 
      def ipv6
        add_argument("-6")
      end

      def privileged 
        add_argument("--privileged")
      end
      
      def unprivileged 
        add_argument("--unprivileged")
      end
      
      def release_memory 
        add_argument("--release-memory")
      end

      def aggressive 
        add_argument("-A")
      end

      def timing(value)
        add_argument("-T" << value.to_s)
      end
      
      def ip_protocol
        add_argument("-sO")
      end
      
      def just_list 
        add_argument("-sL")
      end
      
      alias list_targets just_list
      alias list_scan    just_list

      alias list just_list

      def fast 
        add_argument("-F")
      end
      
      def script(value, args = false)
        if args
          add_argument("--script-args " << args)
        end
        add_argument("--script " << value)
      end

      def send(type)
        case type
        when :eth
          add_argument("--send-eth")
        when :ip
          add_argument("--send-ip")
        end
      end
    end
  end
end
