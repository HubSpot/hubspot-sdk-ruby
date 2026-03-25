# typed: strong

module HubspotSDK
  module Models
    module Marketing
      module Campaigns
        class SpendUpdateParams < HubspotSDK::Models::Marketing::PublicSpendItemInput
          extend HubspotSDK::Internal::Type::RequestParameters::Converter
          include HubspotSDK::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                HubspotSDK::Marketing::Campaigns::SpendUpdateParams,
                HubspotSDK::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :campaign_guid

          sig { returns(Integer) }
          attr_accessor :spend_id

          sig do
            params(
              campaign_guid: String,
              spend_id: Integer,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(campaign_guid:, spend_id:, request_options: {})
          end

          sig do
            override.returns(
              {
                campaign_guid: String,
                spend_id: Integer,
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
