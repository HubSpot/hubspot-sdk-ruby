# typed: strong

module HubspotSDK
  module Models
    module Marketing
      class CollectionResponsePublicCampaignAssetForwardPaging < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Marketing::CollectionResponsePublicCampaignAssetForwardPaging,
              HubspotSDK::Internal::AnyHash
            )
          end

        # An array of public campaign assets. Each item in the array is a reference to a
        # PublicCampaignAsset object.
        sig { returns(T::Array[HubspotSDK::Marketing::PublicCampaignAsset]) }
        attr_accessor :results

        sig { returns(T.nilable(HubspotSDK::ForwardPaging)) }
        attr_reader :paging

        sig { params(paging: HubspotSDK::ForwardPaging::OrHash).void }
        attr_writer :paging

        sig do
          params(
            results:
              T::Array[HubspotSDK::Marketing::PublicCampaignAsset::OrHash],
            paging: HubspotSDK::ForwardPaging::OrHash
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
              results: T::Array[HubspotSDK::Marketing::PublicCampaignAsset],
              paging: HubspotSDK::ForwardPaging
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
