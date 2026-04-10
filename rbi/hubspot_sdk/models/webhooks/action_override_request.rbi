# typed: strong

module HubSpotSDK
  module Models
    module Webhooks
      class ActionOverrideRequest < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Webhooks::ActionOverrideRequest,
              HubSpotSDK::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :associated_object_type_ids

        sig { params(associated_object_type_ids: T::Array[String]).void }
        attr_writer :associated_object_type_ids

        sig { returns(T.nilable(T::Array[Integer])) }
        attr_reader :list_ids

        sig { params(list_ids: T::Array[Integer]).void }
        attr_writer :list_ids

        sig { returns(T.nilable(T::Array[Integer])) }
        attr_reader :object_ids

        sig { params(object_ids: T::Array[Integer]).void }
        attr_writer :object_ids

        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :properties

        sig { params(properties: T::Array[String]).void }
        attr_writer :properties

        sig do
          params(
            associated_object_type_ids: T::Array[String],
            list_ids: T::Array[Integer],
            object_ids: T::Array[Integer],
            properties: T::Array[String]
          ).returns(T.attached_class)
        end
        def self.new(
          associated_object_type_ids: nil,
          list_ids: nil,
          object_ids: nil,
          properties: nil
        )
        end

        sig do
          override.returns(
            {
              associated_object_type_ids: T::Array[String],
              list_ids: T::Array[Integer],
              object_ids: T::Array[Integer],
              properties: T::Array[String]
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
