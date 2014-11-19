module API
  module V1
    class Bookings < Grape::API
      include API::V1::Defaults

      resource :bookings do
        desc "Return all bookings"
        get "", root: :bookings do
          Booking.all
        end

        desc "Return a booking"
        params do
          requires :id, type: String, desc: "ID of the booking"
        end
        get ":id", root: "booking" do
          Booking.where(id: permitted_params[:id]).first!
        end
      end
    end
  end
end
