# typed: strong

module HubspotSDK
  module Models
    module CRM
      class SimplePublicObjectBatchInputForCreate < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::CRM::SimplePublicObjectBatchInputForCreate,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(T::Hash[Symbol, String]) }
        attr_accessor :properties

        sig do
          returns(
            T.nilable(T::Array[HubspotSDK::CRM::PublicAssociationsForObject])
          )
        end
        attr_reader :associations

        sig do
          params(
            associations:
              T::Array[HubspotSDK::CRM::PublicAssociationsForObject::OrHash]
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
              T::Array[HubspotSDK::CRM::PublicAssociationsForObject::OrHash],
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
                T::Array[HubspotSDK::CRM::PublicAssociationsForObject],
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
