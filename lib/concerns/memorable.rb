module Memorable
    module ClassMethods
        def reset_all
            self.all.clear
        end

        def count
            self.all.count
        end

        def to_param
            name.downcase.gsub(' ', '-')
        end
    end

    module InstanceMethods
        def initialize
            self.class.all << self
        end
    end
end