module Nmapr
  module Options
    module SCTP 
      def sctp(type = :init)
        case type
        when :init
          add_argument("-sY")
        when :cookie_echo
          add_argument("-sZ")
        end
      end
    end
  end
end
