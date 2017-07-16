module Nmapr
  module Options
    module Detection 

      def version_intensity(type)
        case type
        when Integer
          add_argument("--version-intensity " << type.to_s)
        when :light
          add_argument("--version-light")
        when :all
          add_argument("--version-all")
        end
      end

      def version_trace
        add_argument("--version-trace")
      end

      def detect(type, value = false)
        case type
        when :os
          add_argument("-O")
          case value
          when :promising
            add_argument("--osscan-limit")
          when :aggressive
            add_argument("--osscan-guess")
          end
        when :version
          add_argument("-sV")
          version_intensity(value) if value
        end
      end
    end
  end
end
