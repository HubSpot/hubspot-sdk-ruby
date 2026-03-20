# typed: strong

module HubspotSDK
  module Models
    module Crm
      class SimplePublicObjectBatchInputForCreate < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Crm::SimplePublicObjectBatchInputForCreate,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(T::Array[HubspotSDK::Crm::PublicAssociationsForObject]) }
        attr_accessor :associations

        # Key value pairs representing the properties of the object.
        sig { returns(T::Hash[Symbol, String]) }
        attr_accessor :properties

        # An identifier used for tracing the creation or update request of the object.
        sig { returns(T.nilable(String)) }
        attr_reader :object_write_trace_id

        sig { params(object_write_trace_id: String).void }
        attr_writer :object_write_trace_id

        # An input object that contains a collection of objects to be created together in
        # a batch.
        sig do
          params(
            associations:
              T::Array[HubspotSDK::Crm::PublicAssociationsForObject::OrHash],
            properties: T::Hash[Symbol, String],
            object_write_trace_id: String
          ).returns(T.attached_class)
        end
        def self.new(
          associations:,
          # Key value pairs representing the properties of the object.
          properties:,
          # An identifier used for tracing the creation or update request of the object.
          object_write_trace_id: nil
        )
        end

        sig do
          override.returns(
            {
              associations:
                T::Array[HubspotSDK::Crm::PublicAssociationsForObject],
              properties: T::Hash[Symbol, String],
              object_write_trace_id: String
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
