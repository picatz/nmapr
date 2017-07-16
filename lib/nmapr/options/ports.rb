module Nmapr
  module Options
    module Ports
      def port(arg)
        @ports << arg
      end

      def sequential
        add_argument("-r")
      end

      def port_ratio(value)
        add_argument("--port-ratio " << value.to_s)
      end

      def ports(*args)
        args.each do |arg|
          case arg 
          when :common
            @ports << "1-1024"
          when :all
            @ports << "*"
          when :top
            add_argument("--top-ports")
          when Integer
            @ports << arg.to_s
          when String
            @ports << arg
          when Array
            ports(arg)
          end
        end
      end
    end
  end
end
