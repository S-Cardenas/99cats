class Cat < ActiveRecord::Base
  COLORS = %w(blue white red yellow green)
  validates :sex, :name, :color, presence: true
  validates :color, inclusion: { in: COLORS }

  has_many(
    :cat_rental_requests,
    class_name: 'CatRentalRequest',
    primary_key: :id,
    foreign_key: :cat_id
  )

  def age
    ((Time.now - self.birth_date.to_time) / 31557600).to_i
  end

end
