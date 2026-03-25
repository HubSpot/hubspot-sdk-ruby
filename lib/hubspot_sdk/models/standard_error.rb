# frozen_string_literal: true

module HubspotSDK
  module Models
    class StandardError < HubspotSDK::Internal::Type::BaseModel
      # @!attribute category
      #   Error category.
      #
      #   @return [String]
      required :category, String

      # @!attribute context
      #   Error context.
      #
      #   @return [Hash{Symbol=>Array<String>}]
      required :context, HubspotSDK::Internal::Type::HashOf[HubspotSDK::Internal::Type::ArrayOf[String]]

      # @!attribute errors
      #   List of error details.
      #
      #   @return [Array<HubspotSDK::Models::ErrorDetail>]
      required :errors, -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::ErrorDetail] }

      # @!attribute links
      #   Error links.
      #
      #   @return [Hash{Symbol=>String}]
      required :links, HubspotSDK::Internal::Type::HashOf[String]

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
      optional :sub_category, HubspotSDK::Internal::Type::Unknown, api_name: :subCategory

      # @!method initialize(category:, context:, errors:, links:, message:, status:, id: nil, sub_category: nil)
      #   Ye olde error
      #
      #   @param category [String] Error category.
      #
      #   @param context [Hash{Symbol=>Array<String>}] Error context.
      #
      #   @param errors [Array<HubspotSDK::Models::ErrorDetail>] List of error details.
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
