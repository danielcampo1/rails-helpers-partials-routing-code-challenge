class RentalsController < ApplicationController

    def new
        @rental = Rental.new
        @rental.customer = Customer.new
    end

    def create
        raise params.inspect
    end

end
