module Nmapr
  module Options
    module Ping
      def ping(type)
        case type
        when :disable
          add_argument("-PN")
        when false
          add_argument("-PN")
        when :only
          add_argument("-sn")
        when true
          add_argument("-sn")
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
    end
  end
end
