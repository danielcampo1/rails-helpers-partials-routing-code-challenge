module RentalsHelper

    def datetime_format(rental)
        rental.date_time.strftime("%A, %B %d, %Y")
    end
end
