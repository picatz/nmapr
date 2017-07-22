module Nmapr
  module Options
    module Ping
      def ping(type, ports: false, protocols: false)
        # ehhh so this could use a lil refactoring, what
        # can I say'a bout it?
        case ports
        when Symbol
          if ports == :common
            ports = ["1-1024"]
          elsif ports == :all
            ports = ["*"]
          end
        when String
          ports = [ports]
        when Integer
          ports = [ports]
        when Array
          if ports.include? :common
            ports.delete :common
            ports << "1-1024"
          elsif ports.include? :all
            ports.delete :all
            ports << "*"
          end
        else
          # just panic!
          ports = []
        end
        case protocols
        when String
          protocol = [ protocol ]
        when Integer
          protocol = [ protocol ]
        when Array
          # pass
        else
          # just panic!
          protocol = []
        end
        case type
        when :disable
          add_argument("-Pn")
        when false
          add_argument("-Pn")
        when :only
          add_argument("-sn")
        when true # defaults
          add_argument("-PE -PS443 -PA80 -PP")
        when :enable 
          add_argument("-PE -PS443 -PA80 -PP")
        when :udp
          add_argument("-PU " << ports.join(","))
        when :tcp_syn
          add_argument("-PS " << ports.join(","))
        when :tcp_ack
          add_argument("-PA " << ports.join(","))
        when :sctp_init
          add_argument("-PY " << ports.join(","))
        when :echo
          add_argument("-PE " << ports.join(","))
        when :timestamp
          add_argument("-PP " << ports.join(",")) 
        when :address_mask
          add_argument("-PM " << ports.join(","))
        when :protocol
          add_argument("-PO " << ports.join(","))
        when :arp
          add_argument("-PR")
        end
      end

      def arp(type = :enable)
        case type
        when :disable
          add_argument("--disable-arp-ping")
        when false
          add_argument("--disable-arp-ping")
        when :enable
          ping(:arp)
        when true
          ping(:arp)
        end
      end

      def host_discovery(type, ports: false, protocols: false)
        ping(type, ports: ports, protocols: protocols)
      end

      def traceroute
        add_argument("--traceroute")
      end

      alias trace_route traceroute

    end
  end
end
