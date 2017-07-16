module Nmapr

  module Builders
    module Command

      def to_cmd(type = :normal)
        if @ports.empty?
          ports = ""
        else
          ports = " -p " << @ports.join(",")
        end
        case type
        when :split
          @targets.each do |target|
            next if @not_targets.include?(target)
            "nmap " << target << @arguments
          end
        when :normal
          if @not_targets.empty?
            "nmap " << @targets.join(",") << ports << @arguments
          else
            "nmap " << @targets.join(",") << ports << @arguments << " --exclude " << @not_targets.join(",")
          end
        end
      end

    end
  end
end
