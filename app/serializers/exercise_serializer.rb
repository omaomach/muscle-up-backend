class ExerciseSerializer < ActiveModel::Serializer
  attributes :id, :name, :client_id, :exercise_type, :exercise_image
end
