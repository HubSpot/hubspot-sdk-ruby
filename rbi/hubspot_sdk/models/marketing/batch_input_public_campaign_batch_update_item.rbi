# typed: strong

module HubSpotSDK
  module Models
    module Marketing
      class BatchInputPublicCampaignBatchUpdateItem < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Marketing::BatchInputPublicCampaignBatchUpdateItem,
              HubSpotSDK::Internal::AnyHash
            )
          end

        # An array of PublicCampaignBatchUpdateItem objects, each containing the ID and
        # properties to update for a specific campaign.
        sig do
          returns(
            T::Array[HubSpotSDK::Marketing::PublicCampaignBatchUpdateItem]
          )
        end
        attr_accessor :inputs

        sig do
          params(
            inputs:
              T::Array[
                HubSpotSDK::Marketing::PublicCampaignBatchUpdateItem::OrHash
              ]
          ).returns(T.attached_class)
        end
        def self.new(
          # An array of PublicCampaignBatchUpdateItem objects, each containing the ID and
          # properties to update for a specific campaign.
          inputs:
        )
        end

        sig do
          override.returns(
            {
              inputs:
                T::Array[HubSpotSDK::Marketing::PublicCampaignBatchUpdateItem]
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
