# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      class Option < HubspotSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The unique ID of the option.
        #
        #   @return [String]
        required :id, String

        # @!attribute created_at
        #   The timestamp when the option was created, in ISO 8601 format.
        #
        #   @return [Time]
        required :created_at, Time, api_name: :createdAt

        # @!attribute label
        #   A user-friendly label that identifies the option.
        #
        #   @return [String]
        required :label, String

        # @!attribute name
        #   An internal name assigned to the option, distinct from the label.
        #
        #   @return [String]
        required :name, String

        # @!attribute order
        #   The order in which the option appears, represented as an integer.
        #
        #   @return [Integer]
        required :order, Integer

        # @!attribute type
        #   Indicates the category or data type of the option (e.g., string, number).
        #
        #   @return [String]
        required :type, String

        # @!attribute updated_at
        #   The timestamp when the option was last updated, in ISO 8601 format.
        #
        #   @return [Time]
        required :updated_at, Time, api_name: :updatedAt

        # @!attribute created_by
        #
        #   @return [HubspotSDK::Models::Cms::SimpleUser, nil]
        optional :created_by, -> { HubspotSDK::Cms::SimpleUser }, api_name: :createdBy

        # @!attribute created_by_user_id
        #   The ID of the user who created the option.
        #
        #   @return [Integer, nil]
        optional :created_by_user_id, Integer, api_name: :createdByUserId

        # @!attribute updated_by
        #
        #   @return [HubspotSDK::Models::Cms::SimpleUser, nil]
        optional :updated_by, -> { HubspotSDK::Cms::SimpleUser }, api_name: :updatedBy

        # @!attribute updated_by_user_id
        #   The ID of the user who last updated the option.
        #
        #   @return [Integer, nil]
        optional :updated_by_user_id, Integer, api_name: :updatedByUserId

        # @!method initialize(id:, created_at:, label:, name:, order:, type:, updated_at:, created_by: nil, created_by_user_id: nil, updated_by: nil, updated_by_user_id: nil)
        #   A HubSpot property option
        #
        #   @param id [String] The unique ID of the option.
        #
        #   @param created_at [Time] The timestamp when the option was created, in ISO 8601 format.
        #
        #   @param label [String] A user-friendly label that identifies the option.
        #
        #   @param name [String] An internal name assigned to the option, distinct from the label.
        #
        #   @param order [Integer] The order in which the option appears, represented as an integer.
        #
        #   @param type [String] Indicates the category or data type of the option (e.g., string, number).
        #
        #   @param updated_at [Time] The timestamp when the option was last updated, in ISO 8601 format.
        #
        #   @param created_by [HubspotSDK::Models::Cms::SimpleUser]
        #
        #   @param created_by_user_id [Integer] The ID of the user who created the option.
        #
        #   @param updated_by [HubspotSDK::Models::Cms::SimpleUser]
        #
        #   @param updated_by_user_id [Integer] The ID of the user who last updated the option.
      end
    end
  end
end
