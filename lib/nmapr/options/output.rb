module Nmapr
  module Options
    module Output 
      def output(type, value)
        case type
        when :file
          add_argument("-oN " << value)
        when :xml
          add_argument("-oX " << value)
        when :leet
          add_argument("-oS " << value)
        when :grepable
          add_argument("-oG " << value)
        when :all
          add_argument("-oA " << value)
        end
      end
    end
  end
end
