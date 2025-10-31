# typed: strong

module HubspotSDK
  module Models
    class PublicCampaignInfluencedFilter < HubspotSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            HubspotSDK::PublicCampaignInfluencedFilter,
            HubspotSDK::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :campaign_id

      sig do
        returns(
          HubspotSDK::PublicCampaignInfluencedFilter::FilterType::OrSymbol
        )
      end
      attr_accessor :filter_type

      sig do
        params(
          campaign_id: String,
          filter_type:
            HubspotSDK::PublicCampaignInfluencedFilter::FilterType::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(campaign_id:, filter_type:)
      end

      sig do
        override.returns(
          {
            campaign_id: String,
            filter_type:
              HubspotSDK::PublicCampaignInfluencedFilter::FilterType::OrSymbol
          }
        )
      end
      def to_hash
      end

      module FilterType
        extend HubspotSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              HubspotSDK::PublicCampaignInfluencedFilter::FilterType
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CAMPAIGN_INFLUENCED =
          T.let(
            :CAMPAIGN_INFLUENCED,
            HubspotSDK::PublicCampaignInfluencedFilter::FilterType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              HubspotSDK::PublicCampaignInfluencedFilter::FilterType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
