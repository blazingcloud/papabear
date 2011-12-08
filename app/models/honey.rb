class Honey < ActiveRecord::Base
  belongs_to :hive
  before_create do
    self.harvested_at = hive.last_harvest
  end
end
