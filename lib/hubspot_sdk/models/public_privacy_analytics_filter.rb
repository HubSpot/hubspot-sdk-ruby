# frozen_string_literal: true

module HubspotSDK
  module Models
    class PublicPrivacyAnalyticsFilter < HubspotSDK::Internal::Type::BaseModel
      # @!attribute filter_type
      #
      #   @return [Symbol, HubspotSDK::Models::PublicPrivacyAnalyticsFilter::FilterType]
      required :filter_type,
               enum: -> { HubspotSDK::PublicPrivacyAnalyticsFilter::FilterType },
               api_name: :filterType

      # @!attribute operator
      #
      #   @return [String]
      required :operator, String

      # @!attribute privacy_name
      #
      #   @return [String]
      required :privacy_name, String, api_name: :privacyName

      # @!method initialize(filter_type:, operator:, privacy_name:)
      #   @param filter_type [Symbol, HubspotSDK::Models::PublicPrivacyAnalyticsFilter::FilterType]
      #   @param operator [String]
      #   @param privacy_name [String]

      # @see HubspotSDK::Models::PublicPrivacyAnalyticsFilter#filter_type
      module FilterType
        extend HubspotSDK::Internal::Type::Enum

        PRIVACY = :PRIVACY

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
