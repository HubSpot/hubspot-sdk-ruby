# frozen_string_literal: true

module HubSpotSDK
  module Models
    class StandardError < HubSpotSDK::Internal::Type::BaseModel
      # @!attribute category
      #   Error category.
      #
      #   @return [String]
      required :category, String

      # @!attribute context
      #   Error context.
      #
      #   @return [Hash{Symbol=>Array<String>}]
      required :context, HubSpotSDK::Internal::Type::HashOf[HubSpotSDK::Internal::Type::ArrayOf[String]]

      # @!attribute errors
      #   List of error details.
      #
      #   @return [Array<HubSpotSDK::Models::ErrorDetail>]
      required :errors, -> { HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::ErrorDetail] }

      # @!attribute links
      #   Error links.
      #
      #   @return [Hash{Symbol=>String}]
      required :links, HubSpotSDK::Internal::Type::HashOf[String]

      # @!attribute message
      #   Error message.
      #
      #   @return [String]
      required :message, String

      # @!attribute status
      #   Error status.
      #
      #   @return [String]
      required :status, String

      # @!attribute id
      #   Error ID.
      #
      #   @return [String, nil]
      optional :id, String

      # @!attribute sub_category
      #   Error subcategory.
      #
      #   @return [Object, nil]
      optional :sub_category, HubSpotSDK::Internal::Type::Unknown, api_name: :subCategory

      # @!method initialize(category:, context:, errors:, links:, message:, status:, id: nil, sub_category: nil)
      #   Ye olde error
      #
      #   @param category [String] Error category.
      #
      #   @param context [Hash{Symbol=>Array<String>}] Error context.
      #
      #   @param errors [Array<HubSpotSDK::Models::ErrorDetail>] List of error details.
      #
      #   @param links [Hash{Symbol=>String}] Error links.
      #
      #   @param message [String] Error message.
      #
      #   @param status [String] Error status.
      #
      #   @param id [String] Error ID.
      #
      #   @param sub_category [Object] Error subcategory.
    end
  end
end
