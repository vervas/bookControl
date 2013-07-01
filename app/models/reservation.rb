class Reservation
  include Mongoid::Document

  has_many :books
  has_many :users

  field :begin_date, type: DateTime
  field :return_date, type: DateTime
end
