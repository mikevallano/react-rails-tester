class Critter < ApplicationRecord
  enum crit_type: [:cat, :dog]
end
