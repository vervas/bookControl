module BooksHelper

  def self.available(book_id)
    reservations = Reservation.where(:book_id => book_id)
    return true if reservations.count == 0
    return reservations.all? { |r| r.return_date != nil }
  end
end
