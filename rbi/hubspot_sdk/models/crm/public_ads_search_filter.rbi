# typed: strong

module HubSpotSDK
  module Models
    module Crm
      class PublicAdsSearchFilter < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Crm::PublicAdsSearchFilter,
              HubSpotSDK::Internal::AnyHash
            )
          end

        # Ad network (ADWORDS, FACEBOOK, LINKEDIN, ALL)
        sig { returns(String) }
        attr_accessor :ad_network

        # Type of ad entity (KEYWORD, ADGROUP, AD, CAMPAIGN)
        sig { returns(String) }
        attr_accessor :entity_type

        # Type of the filter (ADS_SEARCH)
        sig do
          returns(HubSpotSDK::Crm::PublicAdsSearchFilter::FilterType::OrSymbol)
        end
        attr_accessor :filter_type

        # Operator to be applied (CONTAINS, IS_EQUAL_TO, ENDS_WITH, STARTS_WITH, IS_KNOWN)
        sig { returns(String) }
        attr_accessor :operator

        sig { returns(T::Array[String]) }
        attr_accessor :search_terms

        # Search term to match an ad
        sig { returns(String) }
        attr_accessor :search_term_type

        sig do
          params(
            ad_network: String,
            entity_type: String,
            filter_type:
              HubSpotSDK::Crm::PublicAdsSearchFilter::FilterType::OrSymbol,
            operator: String,
            search_terms: T::Array[String],
            search_term_type: String
          ).returns(T.attached_class)
        end
        def self.new(
          # Ad network (ADWORDS, FACEBOOK, LINKEDIN, ALL)
          ad_network:,
          # Type of ad entity (KEYWORD, ADGROUP, AD, CAMPAIGN)
          entity_type:,
          # Type of the filter (ADS_SEARCH)
          filter_type:,
          # Operator to be applied (CONTAINS, IS_EQUAL_TO, ENDS_WITH, STARTS_WITH, IS_KNOWN)
          operator:,
          search_terms:,
          # Search term to match an ad
          search_term_type:
        )
        end

        sig do
          override.returns(
            {
              ad_network: String,
              entity_type: String,
              filter_type:
                HubSpotSDK::Crm::PublicAdsSearchFilter::FilterType::OrSymbol,
              operator: String,
              search_terms: T::Array[String],
              search_term_type: String
            }
          )
        end
        def to_hash
        end

        # Type of the filter (ADS_SEARCH)
        module FilterType
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubSpotSDK::Crm::PublicAdsSearchFilter::FilterType)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ADS_SEARCH =
            T.let(
              :ADS_SEARCH,
              HubSpotSDK::Crm::PublicAdsSearchFilter::FilterType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Crm::PublicAdsSearchFilter::FilterType::TaggedSymbol
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
