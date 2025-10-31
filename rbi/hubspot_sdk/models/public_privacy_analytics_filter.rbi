# typed: strong

module HubspotSDK
  module Models
    class PublicPrivacyAnalyticsFilter < HubspotSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            HubspotSDK::PublicPrivacyAnalyticsFilter,
            HubspotSDK::Internal::AnyHash
          )
        end

      sig do
        returns(HubspotSDK::PublicPrivacyAnalyticsFilter::FilterType::OrSymbol)
      end
      attr_accessor :filter_type

      sig { returns(String) }
      attr_accessor :operator

      sig { returns(String) }
      attr_accessor :privacy_name

      sig do
        params(
          filter_type:
            HubspotSDK::PublicPrivacyAnalyticsFilter::FilterType::OrSymbol,
          operator: String,
          privacy_name: String
        ).returns(T.attached_class)
      end
      def self.new(filter_type:, operator:, privacy_name:)
      end

      sig do
        override.returns(
          {
            filter_type:
              HubspotSDK::PublicPrivacyAnalyticsFilter::FilterType::OrSymbol,
            operator: String,
            privacy_name: String
          }
        )
      end
      def to_hash
      end

      module FilterType
        extend HubspotSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, HubspotSDK::PublicPrivacyAnalyticsFilter::FilterType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PRIVACY =
          T.let(
            :PRIVACY,
            HubspotSDK::PublicPrivacyAnalyticsFilter::FilterType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              HubspotSDK::PublicPrivacyAnalyticsFilter::FilterType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
