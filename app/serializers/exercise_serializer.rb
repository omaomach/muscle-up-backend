class ExerciseSerializer < ActiveModel::Serializer
  attributes :id, :name, :client_params, :exercise_image, :exercise_type
end
