# typed: strong

module HubSpotSDK
  module Models
    module Marketing
      class CollectionResponsePublicCampaignAsset < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Marketing::CollectionResponsePublicCampaignAsset,
              HubSpotSDK::Internal::AnyHash
            )
          end

        # An array of public campaign assets. Each item in the array is an object
        # representing a campaign asset.
        sig { returns(T::Array[HubSpotSDK::Marketing::PublicCampaignAsset]) }
        attr_accessor :results

        sig { returns(T.nilable(HubSpotSDK::Paging)) }
        attr_reader :paging

        sig { params(paging: HubSpotSDK::Paging::OrHash).void }
        attr_writer :paging

        sig do
          params(
            results:
              T::Array[HubSpotSDK::Marketing::PublicCampaignAsset::OrHash],
            paging: HubSpotSDK::Paging::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # An array of public campaign assets. Each item in the array is an object
          # representing a campaign asset.
          results:,
          paging: nil
        )
        end

        sig do
          override.returns(
            {
              results: T::Array[HubSpotSDK::Marketing::PublicCampaignAsset],
              paging: HubSpotSDK::Paging
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
