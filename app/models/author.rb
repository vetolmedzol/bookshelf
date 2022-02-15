# frozen_string_literal: true

class Author < ApplicationRecord
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :year_of_birth, presence: true

  # It is data just for tests
  def coordinates
    [rand(90), rand(90)]
  end

  # It is data just for tests. Much easier to generate random data, instead of researching the real one
  def publication_years
    (1..rand(10)).to_a.map { year_of_birth + rand(100) }
  end

end
