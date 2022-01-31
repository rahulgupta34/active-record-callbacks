class User < ApplicationRecord
    validates :login, :email, presence: true


    after_initialize :create_instance_variable
    after_find :after_find_data_from_database
    private 
      def create_instance_variable
        self.name = email
        puts " object is instantiated "
      end

      def after_find_data_from_database
        puts "data fetched from database"
      end

    # before_validation :normalize_name, on: :create
    # after_save :save_successfully
    # before_save :object_not_save_still
    # private
    #    def normalize_name
    #        self.name = name.downcase.titleize
    #    end

    #    def save_successfully 
    #         puts "Object save successfully"
    #    end
    #   def object_not_save_still
    #     puts "object is still not saved "
    #   end
    # before_create do
    #     self.name = login.capitalize if name.blank?
    # end

    # before_validation :ensure_login_has_a_value

    # private
    # def ensure_login_has_a_value
    #     if login.nil?
    #         self.login = email unless email.blank?
    #     end
    # end

end
