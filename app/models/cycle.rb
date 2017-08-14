class Cycle
  include Mongoid::Document
  field :name,    type: String
  field :status,  type: String
  field :open,    type: Time
  field :close,   type: Time
  field :budget,  type: Float

  field :is_cycle,        type: Boolean, default: true
  field :is_project,      type: Boolean, default: false

  belongs_to :project
  belongs_to :organization
  has_many :questions
  accepts_nested_attributes_for :questions, reject_if: :all_blank, allow_destroy: true

  field :cycle_string_1,         type: String
  field :cycle_string_2,         type: String
  field :cycle_string_3,         type: String
  field :cycle_string_4,         type: String
  field :cycle_string_5,         type: String
  field :cycle_string_6,         type: String
  field :cycle_string_7,         type: String
  field :cycle_string_8,         type: String
  field :cycle_string_9,         type: String
  field :cycle_string_10,        type: String
  field :cycle_boolean_1,        type: Boolean
  field :cycle_boolean_2,        type: Boolean
  field :cycle_boolean_3,        type: Boolean
  field :cycle_boolean_4,        type: Boolean
  field :cycle_boolean_5,        type: Boolean
  field :cycle_boolean_6,        type: Boolean
  field :cycle_boolean_7,        type: Boolean
  field :cycle_boolean_8,        type: Boolean
  field :cycle_boolean_9,        type: Boolean
  field :cycle_boolean_10,       type: Boolean
  field :cycle_date_1,           type: Date
  field :cycle_date_2,           type: Date
  field :cycle_date_3,           type: Date
  field :cycle_date_4,           type: Date
  field :cycle_date_5,           type: Date
  field :cycle_date_6,           type: Date
  field :cycle_date_7,           type: Date
  field :cycle_date_8,           type: Date
  field :cycle_date_9,           type: Date
  field :cycle_date_10,          type: Date
  field :cycle_datetime_1,       type: DateTime
  field :cycle_datetime_2,       type: DateTime
  field :cycle_datetime_3,       type: DateTime
  field :cycle_datetime_4,       type: DateTime
  field :cycle_datetime_5,       type: DateTime
  field :cycle_datetime_6,       type: DateTime
  field :cycle_datetime_7,       type: DateTime
  field :cycle_datetime_8,       type: DateTime
  field :cycle_datetime_9,       type: DateTime
  field :cycle_datetime_10,      type: DateTime
  field :cycle_time_1,           type: Time
  field :cycle_time_2,           type: Time
  field :cycle_time_3,           type: Time
  field :cycle_time_4,           type: Time
  field :cycle_time_5,           type: Time
  field :cycle_time_6,           type: Time
  field :cycle_time_7,           type: Time
  field :cycle_time_8,           type: Time
  field :cycle_time_9,           type: Time
  field :cycle_time_10,          type: Time
  field :cycle_integer_1,        type: Integer
  field :cycle_integer_2,        type: Integer
  field :cycle_integer_3,        type: Integer
  field :cycle_integer_4,        type: Integer
  field :cycle_integer_5,        type: Integer
  field :cycle_integer_6,        type: Integer
  field :cycle_integer_7,        type: Integer
  field :cycle_integer_8,        type: Integer
  field :cycle_integer_9,        type: Integer
  field :cycle_integer_10,       type: Integer
  field :cycle_float_1,          type: Float
  field :cycle_float_2,          type: Float
  field :cycle_float_3,          type: Float
  field :cycle_float_4,          type: Float
  field :cycle_float_5,          type: Float
  field :cycle_float_6,          type: Float
  field :cycle_float_7,          type: Float
  field :cycle_float_8,          type: Float
  field :cycle_float_9,          type: Float
  field :cycle_float_10,         type: Float
end
