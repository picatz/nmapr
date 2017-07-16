module Nmapr
  module Options
    module Targets 
      def target(arg)
        @targets << arg
      end

      def target_file(arg)
        add_argument("-iL " << arg)
      end
      
      def exclude_file(arg)
        add_argument("--excludefile " << arg)
      end

      def exclude(*args)
        args.each do |arg|
          case arg
          when String
            @not_targets << arg
          when Array
            arg.each { |a| exclude(a) }
          end
        end
      end
      
      def targets(*args)
        args.each do |arg|
          case arg
          when String
            target(arg)
          when Array
            arg.each { |a| targets(a) }
          end
        end
      end

      alias ips targets
      alias hosts targets
    end
  end
end
