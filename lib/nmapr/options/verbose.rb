module Nmapr
  module Options
    module Verbose 
      def verbose(value = 1)
        case value
        when :slightly
          verbose(1)
        when :moderately
          verbose(2)
        when :very
          verbose(3)
        when Integer
          verbosity = ""
          value.times do
            verbosity << "v"
          end
          add_argument("-" << verbosity)
        end
      end
    end
  end
end
