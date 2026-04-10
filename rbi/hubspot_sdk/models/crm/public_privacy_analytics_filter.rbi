# typed: strong

module HubSpotSDK
  module Models
    module Crm
      class PublicPrivacyAnalyticsFilter < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Crm::PublicPrivacyAnalyticsFilter,
              HubSpotSDK::Internal::AnyHash
            )
          end

        # Specifies the type of filter (PRIVACY).
        sig do
          returns(
            HubSpotSDK::Crm::PublicPrivacyAnalyticsFilter::FilterType::OrSymbol
          )
        end
        attr_accessor :filter_type

        # Defines the operation to be applied within the filter (PRIVACY_CONSENT_GRANTED,
        # PRIVACY_CONSENT_NOT_GRANTED).
        sig { returns(String) }
        attr_accessor :operator

        # The name of the privacy setting used in the filter.
        sig { returns(String) }
        attr_accessor :privacy_name

        sig do
          params(
            filter_type:
              HubSpotSDK::Crm::PublicPrivacyAnalyticsFilter::FilterType::OrSymbol,
            operator: String,
            privacy_name: String
          ).returns(T.attached_class)
        end
        def self.new(
          # Specifies the type of filter (PRIVACY).
          filter_type:,
          # Defines the operation to be applied within the filter (PRIVACY_CONSENT_GRANTED,
          # PRIVACY_CONSENT_NOT_GRANTED).
          operator:,
          # The name of the privacy setting used in the filter.
          privacy_name:
        )
        end

        sig do
          override.returns(
            {
              filter_type:
                HubSpotSDK::Crm::PublicPrivacyAnalyticsFilter::FilterType::OrSymbol,
              operator: String,
              privacy_name: String
            }
          )
        end
        def to_hash
        end

        # Specifies the type of filter (PRIVACY).
        module FilterType
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubSpotSDK::Crm::PublicPrivacyAnalyticsFilter::FilterType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          PRIVACY =
            T.let(
              :PRIVACY,
              HubSpotSDK::Crm::PublicPrivacyAnalyticsFilter::FilterType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Crm::PublicPrivacyAnalyticsFilter::FilterType::TaggedSymbol
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
