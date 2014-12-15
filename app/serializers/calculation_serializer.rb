class CalculationSerializer < ActiveModel::Serializer
  attributes :ip, :created_at, :values, :sum, :product
end
