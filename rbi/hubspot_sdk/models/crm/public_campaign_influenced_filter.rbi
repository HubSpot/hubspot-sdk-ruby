# typed: strong

module HubspotSDK
  module Models
    module Crm
      class PublicCampaignInfluencedFilter < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Crm::PublicCampaignInfluencedFilter,
              HubspotSDK::Internal::AnyHash
            )
          end

        # The ID of the campaign that influences the filter.
        sig { returns(String) }
        attr_accessor :campaign_id

        # Indicates the type of filter (CAMPAIGN_INFLUENCED).
        sig do
          returns(
            HubspotSDK::Crm::PublicCampaignInfluencedFilter::FilterType::OrSymbol
          )
        end
        attr_accessor :filter_type

        sig do
          params(
            campaign_id: String,
            filter_type:
              HubspotSDK::Crm::PublicCampaignInfluencedFilter::FilterType::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          # The ID of the campaign that influences the filter.
          campaign_id:,
          # Indicates the type of filter (CAMPAIGN_INFLUENCED).
          filter_type:
        )
        end

        sig do
          override.returns(
            {
              campaign_id: String,
              filter_type:
                HubspotSDK::Crm::PublicCampaignInfluencedFilter::FilterType::OrSymbol
            }
          )
        end
        def to_hash
        end

        # Indicates the type of filter (CAMPAIGN_INFLUENCED).
        module FilterType
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubspotSDK::Crm::PublicCampaignInfluencedFilter::FilterType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CAMPAIGN_INFLUENCED =
            T.let(
              :CAMPAIGN_INFLUENCED,
              HubspotSDK::Crm::PublicCampaignInfluencedFilter::FilterType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Crm::PublicCampaignInfluencedFilter::FilterType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
