# == Schema Information
#
# Table name: weathers
#
#  id          :integer          not null, primary key
#  city_id     :integer
#  record_time :datetime
#  temperature :decimal(, )
#  humidity    :decimal(, )
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'test_helper'

class WeatherTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
