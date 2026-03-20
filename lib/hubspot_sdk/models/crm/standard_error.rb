# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      class StandardError < HubspotSDK::Internal::Type::BaseModel
        # @!attribute category
        #   The main category of the error.
        #
        #   @return [String]
        required :category, String

        # @!attribute context
        #   Additional context-specific information related to the error.
        #
        #   @return [Hash{Symbol=>Array<String>}]
        required :context, HubspotSDK::Internal::Type::HashOf[HubspotSDK::Internal::Type::ArrayOf[String]]

        # @!attribute errors
        #   The detailed error objects.
        #
        #   @return [Array<HubspotSDK::Models::ErrorDetail>]
        required :errors, -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::ErrorDetail] }

        # @!attribute links
        #   URLs linking to documentation or resources associated with the error.
        #
        #   @return [Hash{Symbol=>String}]
        required :links, HubspotSDK::Internal::Type::HashOf[String]

        # @!attribute message
        #   A human-readable string describing the error and possible remediation steps.
        #
        #   @return [String]
        required :message, String

        # @!attribute status
        #   The HTTP status code associated with the error.
        #
        #   @return [String]
        required :status, String

        # @!attribute id
        #   A unique ID for the error instance.
        #
        #   @return [String, nil]
        optional :id, String

        # @!attribute sub_category
        #   A more specific error category within each main category.
        #
        #   @return [Object, nil]
        optional :sub_category, HubspotSDK::Internal::Type::Unknown, api_name: :subCategory

        # @!method initialize(category:, context:, errors:, links:, message:, status:, id: nil, sub_category: nil)
        #   Ye olde error
        #
        #   @param category [String] The main category of the error.
        #
        #   @param context [Hash{Symbol=>Array<String>}] Additional context-specific information related to the error.
        #
        #   @param errors [Array<HubspotSDK::Models::ErrorDetail>] The detailed error objects.
        #
        #   @param links [Hash{Symbol=>String}] URLs linking to documentation or resources associated with the error.
        #
        #   @param message [String] A human-readable string describing the error and possible remediation steps.
        #
        #   @param status [String] The HTTP status code associated with the error.
        #
        #   @param id [String] A unique ID for the error instance.
        #
        #   @param sub_category [Object] A more specific error category within each main category.
      end
    end
  end
end
