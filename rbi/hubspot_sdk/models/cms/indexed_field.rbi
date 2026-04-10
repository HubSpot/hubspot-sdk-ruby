# typed: strong

module HubSpotSDK
  module Models
    module Cms
      class IndexedField < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(HubSpotSDK::Cms::IndexedField, HubSpotSDK::Internal::AnyHash)
          end

        # Indicates whether the field is a metadata field.
        sig { returns(T::Boolean) }
        attr_accessor :metadata_field

        # The name of the indexed field.
        sig { returns(String) }
        attr_accessor :name

        # The primary value of the indexed field.
        sig { returns(T.anything) }
        attr_accessor :value

        sig { returns(T::Array[T.anything]) }
        attr_accessor :values

        sig do
          params(
            metadata_field: T::Boolean,
            name: String,
            value: T.anything,
            values: T::Array[T.anything]
          ).returns(T.attached_class)
        end
        def self.new(
          # Indicates whether the field is a metadata field.
          metadata_field:,
          # The name of the indexed field.
          name:,
          # The primary value of the indexed field.
          value:,
          values:
        )
        end

        sig do
          override.returns(
            {
              metadata_field: T::Boolean,
              name: String,
              value: T.anything,
              values: T::Array[T.anything]
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
