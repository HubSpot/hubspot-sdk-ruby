# typed: strong

module HubspotSDK
  module Models
    module Cms
      module MediaBridge
        class SchemaUpdateParams < HubspotSDK::Models::Crm::Objects::ObjectTypeDefinitionPatch
          extend HubspotSDK::Internal::Type::RequestParameters::Converter
          include HubspotSDK::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                HubspotSDK::Cms::MediaBridge::SchemaUpdateParams,
                HubspotSDK::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :app_id

          sig do
            params(
              app_id: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(app_id:, request_options: {})
          end

          sig do
            override.returns(
              { app_id: String, request_options: HubspotSDK::RequestOptions }
            )
          end
          def to_hash
          end
        end
      end
    end
  end
end
