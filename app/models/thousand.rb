class Thousand < ActiveRecord::Base
  def down
    decrement!(:num)
  end
end
