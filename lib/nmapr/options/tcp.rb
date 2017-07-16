module Nmapr
  module Options
    module TCP 
      def tcp(type, value = false)
        case type
        when :syn
          add_argument("-sS")
        when :connect
          add_argument("-sT")
        when :null
          add_argument("-sN")
        when :fin
          add_argument("-sF")
        when :ack
          add_argument("-sA")
        when :rpc
          add_argument("-sR")
        when :window
          add_argument("-sW")
        when :maimon
          add_argument("-sM")
        when :xmas
          # Sets the FIN, PSH, and URG flags, lighting the packet up like a Christmas tree.
          add_argument("-sX")
        when :custom
          add_argument("--scanflags " << value) if value.is_a? String
        end
      end
    end
  end
end
