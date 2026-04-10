# typed: strong

module HubSpotSDK
  module Models
    module Crm
      class FeatureFlagGetPortalStateParams < HubSpotSDK::Internal::Type::BaseModel
        extend HubSpotSDK::Internal::Type::RequestParameters::Converter
        include HubSpotSDK::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Crm::FeatureFlagGetPortalStateParams,
              HubSpotSDK::Internal::AnyHash
            )
          end

        sig { returns(Integer) }
        attr_accessor :app_id

        sig { returns(String) }
        attr_accessor :flag_name

        sig { returns(Integer) }
        attr_accessor :portal_id

        sig do
          params(
            app_id: Integer,
            flag_name: String,
            portal_id: Integer,
            request_options: HubSpotSDK::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(app_id:, flag_name:, portal_id:, request_options: {})
        end

        sig do
          override.returns(
            {
              app_id: Integer,
              flag_name: String,
              portal_id: Integer,
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
