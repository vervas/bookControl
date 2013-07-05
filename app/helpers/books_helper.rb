module BooksHelper

  def self.available(book_id)
    reservations = Reservation.where(:book_id => book_id.to_s)
    return true if reservations.count == 0
    return reservations.all? { |r| r.return_date != nil }
  end

  def self.isReserved(book_id, user_id)
    reservations = Reservation.
      where(:book_id => book_id.to_s).
      and(:user_id => user_id.to_s).
      and(:return_date => nil)
     return reservations.first if reservations.count > 0
  end
end
