# typed: strong

module HubspotSDK
  module Models
    module Marketing
      class CollectionResponsePublicCampaignAsset < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Marketing::CollectionResponsePublicCampaignAsset,
              HubspotSDK::Internal::AnyHash
            )
          end

        # An array of public campaign assets. Each item in the array is an object
        # representing a campaign asset.
        sig { returns(T::Array[HubspotSDK::Marketing::PublicCampaignAsset]) }
        attr_accessor :results

        sig { returns(T.nilable(HubspotSDK::Paging)) }
        attr_reader :paging

        sig { params(paging: HubspotSDK::Paging::OrHash).void }
        attr_writer :paging

        sig do
          params(
            results:
              T::Array[HubspotSDK::Marketing::PublicCampaignAsset::OrHash],
            paging: HubspotSDK::Paging::OrHash
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
              results: T::Array[HubspotSDK::Marketing::PublicCampaignAsset],
              paging: HubspotSDK::Paging
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
