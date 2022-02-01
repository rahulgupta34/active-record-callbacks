class Order < ApplicationRecord
     validates :mode, presence: true

    #using multiple callbacks conditions 
      before_save :check_card_details, if: [:check_mode_of_payment, :check_card_number]    
     
        def check_mode_of_payment
            if mode == "card"
                puts "paying through card"
                return true
            else
                puts "not paying through card"
                return false
            end
        end

        def check_card_number
            if card_number.nil?
                puts "card number is nil"
                return true
            else
                puts "card number is not nil"
                return false
            end
        end

        def check_card_details
            self.name_on_card = name_on_card.upcase
        end

     # using proc 
    # before_save :check_card_details, if: Proc.new { paid_with_card }

    # def paid_with_card
    #     if mode == "card"
    #         puts "i am paying through my card "
    #         return true
    #     else
    #         puts "i am not paying through my card "
    #         return false
    #     end
    # end

    # def check_card_details
    #     self.card_number = "4512-5784-4785"
    # end

    #  before_save :check_card_details, if: :card_mode_check?

    #  def card_mode_check?
    #     if mode == "card"
    #         puts "i am card valid"
    #         return true
    #     else
    #         puts "i am card invalid"
    #         return false
    #     end
    # end

    # def check_card_details
    #     self.card_number = 12345 unless name_on_card.blank?
    # end
   

end
