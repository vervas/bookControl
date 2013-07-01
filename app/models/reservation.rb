class Reservation
  include Mongoid::Document
field :begin_date, type: DateTime
  field :return_date, type: DateTime
end
