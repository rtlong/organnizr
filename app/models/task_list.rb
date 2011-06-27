class TaskList
  include Mongoid::Document
  include Mongoid::Timestamps
  include Mongoid::Paranoia

  has_many :tasks

  belongs_to :parent_list,
      :inverse_of => :sublists,
      :class_name => 'TaskList'
  has_many :sublists,
      :inverse_of => :parent_list,
      :class_name => 'TaskList'

  field :name,             :type => String
  field :due_at,           :type => Time
  field :description,      :type => String
  field :default_priority, :type => Integer
  field :color,            :type => Integer
end
