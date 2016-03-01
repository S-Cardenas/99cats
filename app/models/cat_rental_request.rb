require 'byebug'

class CatRentalRequest < ActiveRecord::Base
  validates :cat_id, :start_date, :end_date, presence: true
  validates :status, inclusion: { in: ['PENDING', 'APPROVED'] }

  belongs_to(
    :cat,
    class_name: 'Cat',
    primary_key: :id,
    foreign_key: :cat_id
  )

  def overlapping_requests
    @cat = cat
    old_date = 0
    @cat.cat_rental_requests
    # @cat.cat_rental_requests.each do |request|
    #   end_date = request.end_date
    #   start_date = request.start_date
    # end
  end

  def overlapping_approved_requests

  end
end
