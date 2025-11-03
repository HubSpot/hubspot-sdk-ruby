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

        sig { returns(T::Array[HubspotSDK::Marketing::PublicCampaignAsset]) }
        attr_accessor :results

        # Contains information pagination of results.
        sig { returns(T.nilable(HubspotSDK::Marketing::EmailsPaging)) }
        attr_reader :paging

        sig { params(paging: HubspotSDK::Marketing::EmailsPaging::OrHash).void }
        attr_writer :paging

        sig do
          params(
            results:
              T::Array[HubspotSDK::Marketing::PublicCampaignAsset::OrHash],
            paging: HubspotSDK::Marketing::EmailsPaging::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          results:,
          # Contains information pagination of results.
          paging: nil
        )
        end

        sig do
          override.returns(
            {
              results: T::Array[HubspotSDK::Marketing::PublicCampaignAsset],
              paging: HubspotSDK::Marketing::EmailsPaging
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
