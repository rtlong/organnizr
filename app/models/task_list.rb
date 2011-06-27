class TaskList
  include Mongoid::Document
  include Mongoid::Timestamps
  field :name, :type => String
  field :due_at, :type => Time
  field :description, :type => String
  field :parent_id, :type => Integer
  field :default_priority, :type => Integer
  field :color, :type => Integer
end
