class Rental < ApplicationRecord
    validates :boat_name, :customer_name, :date_time, presence: true
    validate :date_time_cannot_be_in_past
    belongs_to :boat
    belongs_to :customer


    def self.future
        where("date_time >?", DateTime.now)
    end

    def date_time_cannot_be_in_past
        if self.date_time < DateTime.now
            errors.add('Rental date and time cannot be in past')
        end
    end


    def date_time_format
        self.date_time.strftime("%m/%d/%Y at %I:%M%p")
    end

    def customer_name=(customer_name)
        self.customer = Customer.find_or_create_by(name: customer_name)
    end

    def customer_name
        self.customer.name
    end

end
