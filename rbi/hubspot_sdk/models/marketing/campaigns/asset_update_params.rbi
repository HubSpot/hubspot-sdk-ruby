# typed: strong

module HubspotSDK
  module Models
    module Marketing
      module Campaigns
        class AssetUpdateParams < HubspotSDK::Internal::Type::BaseModel
          extend HubspotSDK::Internal::Type::RequestParameters::Converter
          include HubspotSDK::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                HubspotSDK::Marketing::Campaigns::AssetUpdateParams,
                HubspotSDK::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :campaign_guid

          sig { returns(String) }
          attr_accessor :asset_type

          sig do
            params(
              campaign_guid: String,
              asset_type: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(campaign_guid:, asset_type:, request_options: {})
          end

          sig do
            override.returns(
              {
                campaign_guid: String,
                asset_type: String,
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
end
