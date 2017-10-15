# == Schema Information
#
# Table name: cities
#
#  id         :integer          not null, primary key
#  city_code  :string
#  city_name  :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class City < ApplicationRecord
end
