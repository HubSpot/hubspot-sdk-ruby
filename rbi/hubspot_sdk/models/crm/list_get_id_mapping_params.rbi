# typed: strong

module HubSpotSDK
  module Models
    module Crm
      class ListGetIDMappingParams < HubSpotSDK::Internal::Type::BaseModel
        extend HubSpotSDK::Internal::Type::RequestParameters::Converter
        include HubSpotSDK::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Crm::ListGetIDMappingParams,
              HubSpotSDK::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(String)) }
        attr_reader :legacy_list_id

        sig { params(legacy_list_id: String).void }
        attr_writer :legacy_list_id

        sig do
          params(
            legacy_list_id: String,
            request_options: HubSpotSDK::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(legacy_list_id: nil, request_options: {})
        end

        sig do
          override.returns(
            {
              legacy_list_id: String,
              request_options: HubSpotSDK::RequestOptions
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
