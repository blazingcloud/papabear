class Hive < ActiveRecord::Base
  belongs_to :field_of_origin
  has_many :honeys
end
