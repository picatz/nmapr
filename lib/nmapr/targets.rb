module Nmapr
  module Targets 
    def random_target
      random_targets(1)
    end

    def random_targets(number)
      @targets = ["-iR " << number.to_s]
    end

    def target(arg)
      @targets << arg 
    end

    def targets(*args)
      args.each do |argument|
        if argument.is_a? String
          @targets << argument
        elsif argument.is_a? Array
          @targets += argument
        end
      end
    end
  end
end
