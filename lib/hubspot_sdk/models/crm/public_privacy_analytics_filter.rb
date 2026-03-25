# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      class PublicPrivacyAnalyticsFilter < HubspotSDK::Internal::Type::BaseModel
        # @!attribute filter_type
        #   Specifies the type of filter (PRIVACY).
        #
        #   @return [Symbol, HubspotSDK::Models::Crm::PublicPrivacyAnalyticsFilter::FilterType]
        required :filter_type,
                 enum: -> { HubspotSDK::Crm::PublicPrivacyAnalyticsFilter::FilterType },
                 api_name: :filterType

        # @!attribute operator
        #   Defines the operation to be applied within the filter (PRIVACY_CONSENT_GRANTED,
        #   PRIVACY_CONSENT_NOT_GRANTED).
        #
        #   @return [String]
        required :operator, String

        # @!attribute privacy_name
        #   The name of the privacy setting used in the filter.
        #
        #   @return [String]
        required :privacy_name, String, api_name: :privacyName

        # @!method initialize(filter_type:, operator:, privacy_name:)
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::Crm::PublicPrivacyAnalyticsFilter} for more details.
        #
        #   @param filter_type [Symbol, HubspotSDK::Models::Crm::PublicPrivacyAnalyticsFilter::FilterType] Specifies the type of filter (PRIVACY).
        #
        #   @param operator [String] Defines the operation to be applied within the filter (PRIVACY_CONSENT_GRANTED,
        #
        #   @param privacy_name [String] The name of the privacy setting used in the filter.

        # Specifies the type of filter (PRIVACY).
        #
        # @see HubspotSDK::Models::Crm::PublicPrivacyAnalyticsFilter#filter_type
        module FilterType
          extend HubspotSDK::Internal::Type::Enum

          PRIVACY = :PRIVACY

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
