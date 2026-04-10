# typed: strong

module HubSpotSDK
  module Models
    module Marketing
      class CampaignUpdateParams < HubSpotSDK::Models::Marketing::PublicCampaignInput
        extend HubSpotSDK::Internal::Type::RequestParameters::Converter
        include HubSpotSDK::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Marketing::CampaignUpdateParams,
              HubSpotSDK::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :campaign_guid

        sig do
          params(
            campaign_guid: String,
            request_options: HubSpotSDK::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(campaign_guid:, request_options: {})
        end

        sig do
          override.returns(
            {
              campaign_guid: String,
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
