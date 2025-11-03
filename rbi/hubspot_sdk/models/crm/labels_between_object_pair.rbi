# typed: strong

module HubspotSDK
  module Models
    module Crm
      class LabelsBetweenObjectPair < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Crm::LabelsBetweenObjectPair,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :from_object_id

        sig { returns(String) }
        attr_accessor :from_object_type_id

        sig { returns(T::Array[String]) }
        attr_accessor :labels

        sig { returns(String) }
        attr_accessor :to_object_id

        sig { returns(String) }
        attr_accessor :to_object_type_id

        sig do
          params(
            from_object_id: String,
            from_object_type_id: String,
            labels: T::Array[String],
            to_object_id: String,
            to_object_type_id: String
          ).returns(T.attached_class)
        end
        def self.new(
          from_object_id:,
          from_object_type_id:,
          labels:,
          to_object_id:,
          to_object_type_id:
        )
        end

        sig do
          override.returns(
            {
              from_object_id: String,
              from_object_type_id: String,
              labels: T::Array[String],
              to_object_id: String,
              to_object_type_id: String
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
