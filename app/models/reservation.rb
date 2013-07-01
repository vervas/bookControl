class Reservation
  include Mongoid::Document
  field :begin_date, type: Date
  field :return_date, type: Date
end
