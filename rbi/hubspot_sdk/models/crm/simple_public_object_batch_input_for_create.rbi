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

        sig { returns(T::Hash[Symbol, String]) }
        attr_accessor :properties

        sig do
          returns(
            T.nilable(T::Array[HubspotSDK::Crm::PublicAssociationsForObject])
          )
        end
        attr_reader :associations

        sig do
          params(
            associations:
              T::Array[HubspotSDK::Crm::PublicAssociationsForObject::OrHash]
          ).void
        end
        attr_writer :associations

        sig { returns(T.nilable(String)) }
        attr_reader :object_write_trace_id

        sig { params(object_write_trace_id: String).void }
        attr_writer :object_write_trace_id

        sig do
          params(
            properties: T::Hash[Symbol, String],
            associations:
              T::Array[HubspotSDK::Crm::PublicAssociationsForObject::OrHash],
            object_write_trace_id: String
          ).returns(T.attached_class)
        end
        def self.new(properties:, associations: nil, object_write_trace_id: nil)
        end

        sig do
          override.returns(
            {
              properties: T::Hash[Symbol, String],
              associations:
                T::Array[HubspotSDK::Crm::PublicAssociationsForObject],
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
