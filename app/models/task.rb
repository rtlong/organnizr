class Task
  include Mongoid::Document
  include Mongoid::Timestamps
  include Mongoid::Versioning
  include Mongoid::Paranoia

  belongs_to :task_list

  belongs_to :parent_task,
      :inverse_of => :subtasks,
      :class_name => 'Task'
  has_many :subtasks,
      :inverse_of => :parent_task,
      :class_name => 'Task'

  field :name,         :type => String
  field :due_at,       :type => Time
  field :description,  :type => String
  field :importance,   :type => Integer, :default => 0
  field :urgency,      :type => Integer, :default => 0
  field :color,        :type => Integer
  field :completed_at, :type => Time
end
