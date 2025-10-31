# typed: strong

module HubspotSDK
  module Models
    module CRM
      module Objects
        class SimplePublicObjectBatchInputForCreate < HubspotSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                HubspotSDK::CRM::Objects::SimplePublicObjectBatchInputForCreate,
                HubspotSDK::Internal::AnyHash
              )
            end

          sig do
            returns(T::Array[HubspotSDK::CRM::PublicAssociationsForObject])
          end
          attr_accessor :associations

          sig { returns(T::Hash[Symbol, String]) }
          attr_accessor :properties

          sig { returns(T.nilable(String)) }
          attr_reader :object_write_trace_id

          sig { params(object_write_trace_id: String).void }
          attr_writer :object_write_trace_id

          sig do
            params(
              associations:
                T::Array[HubspotSDK::CRM::PublicAssociationsForObject::OrHash],
              properties: T::Hash[Symbol, String],
              object_write_trace_id: String
            ).returns(T.attached_class)
          end
          def self.new(associations:, properties:, object_write_trace_id: nil)
          end

          sig do
            override.returns(
              {
                associations:
                  T::Array[HubspotSDK::CRM::PublicAssociationsForObject],
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
end
