# typed: strong

module HubspotSDK
  module Models
    module Crm
      module Associations
        class AssociationsV4SimplePublicObjectBatchInputForCreate < HubspotSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                HubspotSDK::Crm::Associations::AssociationsV4SimplePublicObjectBatchInputForCreate,
                HubspotSDK::Internal::AnyHash
              )
            end

          sig do
            returns(T::Array[HubspotSDK::Crm::PublicAssociationsForObject])
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
                T::Array[HubspotSDK::Crm::PublicAssociationsForObject::OrHash],
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
end
