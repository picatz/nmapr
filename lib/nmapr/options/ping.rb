module Nmapr
  module Options
    module Ping
      def ping(type)
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
          add_argument("-PU")
        when :tcp_syn
          add_argument("-PS")
        when :tcp_ack
          add_argument("-PA")
        when :sctp_init
          add_argument("-PY")
        when :icmp_echo
          add_argument("-PE")
        when :icmp_timestamp
          add_argument("-PP")
        when :icmp_address_mask
          add_argument("-PM")
        when :ip_protocol
          add_argument("-PO")
        when :arp
          add_argument("-PR")
        end
      end

      def host_discovery(type)
        ping(type)
      end

    end
  end
end
