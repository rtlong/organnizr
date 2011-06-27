class Task
  include Mongoid::Document
  include Mongoid::Timestamps
  include Mongoid::Versioning
  field :name, :type => String
  field :due_at, :type => Time
  field :description, :type => String
  field :parent_id, :type => Integer
  field :importance, :type => Integer
  field :urgency, :type => Integer
  field :color, :type => Integer
  field :completed_at, :type => Time
end
