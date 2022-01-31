class Test < ApplicationRecord
    validates :name, :age, presence: true

    after_touch :touch_object
    after_initialize :initialize_values
    private
      def touch_object
        puts "object is touched "
      end

      def initialize_values
        self.name = name.strip!
      end
end
