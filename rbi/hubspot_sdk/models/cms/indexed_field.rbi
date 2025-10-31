# typed: strong

module HubspotSDK
  module Models
    module Cms
      class IndexedField < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(HubspotSDK::Cms::IndexedField, HubspotSDK::Internal::AnyHash)
          end

        sig { returns(T::Boolean) }
        attr_accessor :metadata_field

        sig { returns(String) }
        attr_accessor :name

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
        def self.new(metadata_field:, name:, value:, values:)
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
