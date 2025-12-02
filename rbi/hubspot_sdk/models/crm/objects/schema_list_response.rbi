# typed: strong

module HubspotSDK
  module Models
    module Crm
      module Objects
        class SchemaListResponse < HubspotSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                HubspotSDK::Models::Crm::Objects::SchemaListResponse,
                HubspotSDK::Internal::AnyHash
              )
            end

          sig { returns(T::Array[HubspotSDK::Crm::Objects::ObjectSchema]) }
          attr_accessor :results

          sig do
            params(
              results: T::Array[HubspotSDK::Crm::Objects::ObjectSchema::OrHash]
            ).returns(T.attached_class)
          end
          def self.new(results:)
          end

          sig do
            override.returns(
              { results: T::Array[HubspotSDK::Crm::Objects::ObjectSchema] }
            )
          end
          def to_hash
          end
        end
      end
    end
  end
end
