# typed: strong

module HubSpotSDK
  module Models
    module Crm
      module ObjectSchemas
        class BatchGetParams < HubSpotSDK::Models::Crm::ObjectSchemaBatchReadRequest
          extend HubSpotSDK::Internal::Type::RequestParameters::Converter
          include HubSpotSDK::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                HubSpotSDK::Crm::ObjectSchemas::BatchGetParams,
                HubSpotSDK::Internal::AnyHash
              )
            end

          sig do
            params(request_options: HubSpotSDK::RequestOptions::OrHash).returns(
              T.attached_class
            )
          end
          def self.new(request_options: {})
          end

          sig do
            override.returns({ request_options: HubSpotSDK::RequestOptions })
          end
          def to_hash
          end
        end
      end
    end
  end
end
