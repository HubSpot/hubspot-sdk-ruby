# typed: strong

module HubSpotSDK
  module Models
    module Marketing
      class CollectionResponseWithTotalPublicCampaign < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Marketing::CollectionResponseWithTotalPublicCampaign,
              HubSpotSDK::Internal::AnyHash
            )
          end

        # An array of PublicCampaign objects, each representing a campaign with its
        # associated properties.
        sig { returns(T::Array[HubSpotSDK::Marketing::PublicCampaign]) }
        attr_accessor :results

        # An integer representing the total number of public campaigns available.
        sig { returns(Integer) }
        attr_accessor :total

        sig { returns(T.nilable(HubSpotSDK::Paging)) }
        attr_reader :paging

        sig { params(paging: HubSpotSDK::Paging::OrHash).void }
        attr_writer :paging

        sig do
          params(
            results: T::Array[HubSpotSDK::Marketing::PublicCampaign::OrHash],
            total: Integer,
            paging: HubSpotSDK::Paging::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # An array of PublicCampaign objects, each representing a campaign with its
          # associated properties.
          results:,
          # An integer representing the total number of public campaigns available.
          total:,
          paging: nil
        )
        end

        sig do
          override.returns(
            {
              results: T::Array[HubSpotSDK::Marketing::PublicCampaign],
              total: Integer,
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
