# typed: strong

module HubSpotSDK
  module Models
    module Marketing
      class CollectionResponsePublicCampaignAssetForwardPaging < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Marketing::CollectionResponsePublicCampaignAssetForwardPaging,
              HubSpotSDK::Internal::AnyHash
            )
          end

        # An array of public campaign assets. Each item in the array is a reference to a
        # PublicCampaignAsset object.
        sig { returns(T::Array[HubSpotSDK::Marketing::PublicCampaignAsset]) }
        attr_accessor :results

        sig { returns(T.nilable(HubSpotSDK::ForwardPaging)) }
        attr_reader :paging

        sig { params(paging: HubSpotSDK::ForwardPaging::OrHash).void }
        attr_writer :paging

        sig do
          params(
            results:
              T::Array[HubSpotSDK::Marketing::PublicCampaignAsset::OrHash],
            paging: HubSpotSDK::ForwardPaging::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # An array of public campaign assets. Each item in the array is a reference to a
          # PublicCampaignAsset object.
          results:,
          paging: nil
        )
        end

        sig do
          override.returns(
            {
              results: T::Array[HubSpotSDK::Marketing::PublicCampaignAsset],
              paging: HubSpotSDK::ForwardPaging
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
