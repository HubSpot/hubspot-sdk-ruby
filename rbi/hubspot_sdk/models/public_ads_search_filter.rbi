# typed: strong

module HubspotSDK
  module Models
    class PublicAdsSearchFilter < HubspotSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            HubspotSDK::PublicAdsSearchFilter,
            HubspotSDK::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :ad_network

      sig { returns(String) }
      attr_accessor :entity_type

      sig { returns(HubspotSDK::PublicAdsSearchFilter::FilterType::OrSymbol) }
      attr_accessor :filter_type

      sig { returns(String) }
      attr_accessor :operator

      sig { returns(T::Array[String]) }
      attr_accessor :search_terms

      sig { returns(String) }
      attr_accessor :search_term_type

      sig do
        params(
          ad_network: String,
          entity_type: String,
          filter_type: HubspotSDK::PublicAdsSearchFilter::FilterType::OrSymbol,
          operator: String,
          search_terms: T::Array[String],
          search_term_type: String
        ).returns(T.attached_class)
      end
      def self.new(
        ad_network:,
        entity_type:,
        filter_type:,
        operator:,
        search_terms:,
        search_term_type:
      )
      end

      sig do
        override.returns(
          {
            ad_network: String,
            entity_type: String,
            filter_type:
              HubspotSDK::PublicAdsSearchFilter::FilterType::OrSymbol,
            operator: String,
            search_terms: T::Array[String],
            search_term_type: String
          }
        )
      end
      def to_hash
      end

      module FilterType
        extend HubspotSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, HubspotSDK::PublicAdsSearchFilter::FilterType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ADS_SEARCH =
          T.let(
            :ADS_SEARCH,
            HubspotSDK::PublicAdsSearchFilter::FilterType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              HubspotSDK::PublicAdsSearchFilter::FilterType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
