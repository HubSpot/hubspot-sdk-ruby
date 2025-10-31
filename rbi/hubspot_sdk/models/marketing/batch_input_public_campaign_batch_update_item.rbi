# typed: strong

module HubspotSDK
  module Models
    module Marketing
      class BatchInputPublicCampaignBatchUpdateItem < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Marketing::BatchInputPublicCampaignBatchUpdateItem,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig do
          returns(
            T::Array[HubspotSDK::Marketing::PublicCampaignBatchUpdateItem]
          )
        end
        attr_accessor :inputs

        sig do
          params(
            inputs:
              T::Array[
                HubspotSDK::Marketing::PublicCampaignBatchUpdateItem::OrHash
              ]
          ).returns(T.attached_class)
        end
        def self.new(inputs:)
        end

        sig do
          override.returns(
            {
              inputs:
                T::Array[HubspotSDK::Marketing::PublicCampaignBatchUpdateItem]
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
