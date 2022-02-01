class Customer < ApplicationRecord
    belongs_to :company

    after_destroy :log_deleted_company

    private
      def log_deleted_company
        puts " customer is deleted "
      end

end
