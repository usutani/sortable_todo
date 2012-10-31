class Todo < ActiveRecord::Base
  attr_accessible :due, :task, :seq
end
