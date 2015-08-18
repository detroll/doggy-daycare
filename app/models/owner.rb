class Owner < ActiveRecord::Base
  has_many :dogs

  def lastfirst
    "#{last_name}, #{first_name}"   #is defined now
  end
end
