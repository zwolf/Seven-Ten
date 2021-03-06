class VariantSerializer < ApplicationSerializer
  attributes :name, :value, :weight, :split_id
  filterable_by :split_id

  link(:self){ variant_path object }
  link(:split){ split_path object.split }
end
