# frozen_string_literal: true

module HubspotSDK
  module Models
    class Error < HubspotSDK::Internal::Type::BaseModel
      # @!attribute category
      #   The error category
      #
      #   @return [String]
      required :category, String

      # @!attribute correlation_id
      #   A unique identifier for the request. Include this value with any error reports
      #   or support tickets
      #
      #   @return [String]
      required :correlation_id, String, api_name: :correlationId

      # @!attribute message
      #   A human readable message describing the error along with remediation steps where
      #   appropriate
      #
      #   @return [String]
      required :message, String

      # @!attribute context
      #   Context about the error condition
      #
      #   @return [Hash{Symbol=>Array<String>}, nil]
      optional :context, HubspotSDK::Internal::Type::HashOf[HubspotSDK::Internal::Type::ArrayOf[String]]

      # @!attribute errors
      #   further information about the error
      #
      #   @return [Array<HubspotSDK::Models::ErrorDetail>, nil]
      optional :errors, -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::ErrorDetail] }

      # @!attribute links
      #   A map of link names to associated URIs containing documentation about the error
      #   or recommended remediation steps
      #
      #   @return [Hash{Symbol=>String}, nil]
      optional :links, HubspotSDK::Internal::Type::HashOf[String]

      # @!attribute sub_category
      #   A specific category that contains more specific detail about the error
      #
      #   @return [String, nil]
      optional :sub_category, String, api_name: :subCategory

      # @!method initialize(category:, correlation_id:, message:, context: nil, errors: nil, links: nil, sub_category: nil)
      #   Some parameter documentations has been truncated, see
      #   {HubspotSDK::Models::Error} for more details.
      #
      #   @param category [String] The error category
      #
      #   @param correlation_id [String] A unique identifier for the request. Include this value with any error reports o
      #
      #   @param message [String] A human readable message describing the error along with remediation steps where
      #
      #   @param context [Hash{Symbol=>Array<String>}] Context about the error condition
      #
      #   @param errors [Array<HubspotSDK::Models::ErrorDetail>] further information about the error
      #
      #   @param links [Hash{Symbol=>String}] A map of link names to associated URIs containing documentation about the error
      #
      #   @param sub_category [String] A specific category that contains more specific detail about the error
    end
  end
end
