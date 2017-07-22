module Nmapr
  module Options
    module Performance 

      def hostgroup(type, value)
        case type
        when :min
          add_argument("--min-hostgroup " << value.to_s)
        when :max
          add_argument("--max-hostgroup " << value.to_s)
        end
      end
      
      def parallelism(type, value)
        case type
        when :min
          add_argument("--min-parallelism " << value.to_s)
        when :max
          add_argument("--max-parallelism " << value.to_s)
        end
      end
      
      def round_trip_timeout(type, value)
        case type
        when :min
          add_argument("--min-rtt-timeout" << value.to_s)
        when :max
          add_argument("--max-rtt-timeout " << value.to_s)
        when :initial
          add_argument("--initial-rtt-timeout " << value.to_s)
        end
      end
      
      def delay(type, value)
        case type
        when :min
          add_argument("--scan-delay " << value.to_s)
        when :max
          add_argument("--max-scan-delay " << value.to_s)
        end
      end

      def rate(type, value)
        case type
        when :min
          add_argument("--min-rate" << value.to_s)
        when :max
          add_argument("--max-rate" << value.to_s)
        end
      end

      def host_timeout(value)
        add_argument("--host-timeout " << value.to_s)
      end
      
      def script_timeout(value)
        add_argument("--script-timeout " << value.to_s)
      end
      
      def retries(value)
        add_argument("--max-retries " << value.to_s)
      end
      
    end
  end
end
