# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      class HubdbStandardError < HubspotSDK::Internal::Type::BaseModel
        # @!attribute category
        #   Specifies the main category of the error, determining the broad area of issue.
        #
        #   @return [String]
        required :category, String

        # @!attribute context
        #   An object containing context-specific information pertinent to the error.
        #
        #   @return [Hash{Symbol=>Array<String>}]
        required :context, HubspotSDK::Internal::Type::HashOf[HubspotSDK::Internal::Type::ArrayOf[String]]

        # @!attribute errors
        #   The detailed error objects.
        #
        #   @return [Array<HubspotSDK::Models::ErrorDetail>]
        required :errors, -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::ErrorDetail] }

        # @!attribute links
        #   An object containing links related to the error, such as documentation URLs or
        #   support contact pages.
        #
        #   @return [Hash{Symbol=>String}]
        required :links, HubspotSDK::Internal::Type::HashOf[String]

        # @!attribute message
        #   A detailed message describing the error.
        #
        #   @return [String]
        required :message, String

        # @!attribute status
        #   The HTTP status code associated with the error.
        #
        #   @return [String]
        required :status, String

        # @!attribute sub_category
        #   Identifies the subcategory of the error, providing more specific context within
        #   the main category.
        #
        #   @return [Object]
        required :sub_category, HubspotSDK::Internal::Type::Unknown, api_name: :subCategory

        # @!attribute id
        #   The unique ID of the error instance.
        #
        #   @return [String, nil]
        optional :id, String

        # @!method initialize(category:, context:, errors:, links:, message:, status:, sub_category:, id: nil)
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::Cms::HubdbStandardError} for more details.
        #
        #   Ye olde error
        #
        #   @param category [String] Specifies the main category of the error, determining the broad area of issue.
        #
        #   @param context [Hash{Symbol=>Array<String>}] An object containing context-specific information pertinent to the error.
        #
        #   @param errors [Array<HubspotSDK::Models::ErrorDetail>] The detailed error objects.
        #
        #   @param links [Hash{Symbol=>String}] An object containing links related to the error, such as documentation URLs or s
        #
        #   @param message [String] A detailed message describing the error.
        #
        #   @param status [String] The HTTP status code associated with the error.
        #
        #   @param sub_category [Object] Identifies the subcategory of the error, providing more specific context within
        #
        #   @param id [String] The unique ID of the error instance.
      end
    end
  end
end
