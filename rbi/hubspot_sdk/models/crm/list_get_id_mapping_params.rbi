# typed: strong

module HubspotSDK
  module Models
    module Crm
      class ListGetIDMappingParams < HubspotSDK::Internal::Type::BaseModel
        extend HubspotSDK::Internal::Type::RequestParameters::Converter
        include HubspotSDK::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Crm::ListGetIDMappingParams,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(String)) }
        attr_reader :legacy_list_id

        sig { params(legacy_list_id: String).void }
        attr_writer :legacy_list_id

        sig do
          params(
            legacy_list_id: String,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(legacy_list_id: nil, request_options: {})
        end

        sig do
          override.returns(
            {
              legacy_list_id: String,
              request_options: HubspotSDK::RequestOptions
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
