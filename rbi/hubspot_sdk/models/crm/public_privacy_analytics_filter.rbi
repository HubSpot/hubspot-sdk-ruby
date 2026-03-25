# typed: strong

module HubspotSDK
  module Models
    module Crm
      class PublicPrivacyAnalyticsFilter < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Crm::PublicPrivacyAnalyticsFilter,
              HubspotSDK::Internal::AnyHash
            )
          end

        # Specifies the type of filter (PRIVACY).
        sig do
          returns(
            HubspotSDK::Crm::PublicPrivacyAnalyticsFilter::FilterType::OrSymbol
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
              HubspotSDK::Crm::PublicPrivacyAnalyticsFilter::FilterType::OrSymbol,
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
                HubspotSDK::Crm::PublicPrivacyAnalyticsFilter::FilterType::OrSymbol,
              operator: String,
              privacy_name: String
            }
          )
        end
        def to_hash
        end

        # Specifies the type of filter (PRIVACY).
        module FilterType
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubspotSDK::Crm::PublicPrivacyAnalyticsFilter::FilterType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          PRIVACY =
            T.let(
              :PRIVACY,
              HubspotSDK::Crm::PublicPrivacyAnalyticsFilter::FilterType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Crm::PublicPrivacyAnalyticsFilter::FilterType::TaggedSymbol
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
