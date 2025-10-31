# frozen_string_literal: true

module HubspotSDK
  module Models
    module Automation
      class APISingleConnectionAction < HubspotSDK::Internal::Type::BaseModel
        # @!attribute action_id
        #   The ID for this action.
        #
        #   @return [String]
        required :action_id, String, api_name: :actionId

        # @!attribute action_type_id
        #   The ID of the actionType to use.
        #
        #   @return [String]
        required :action_type_id, String, api_name: :actionTypeId

        # @!attribute action_type_version
        #   The version of this actionType to use.
        #
        #   @return [Integer]
        required :action_type_version, Integer, api_name: :actionTypeVersion

        # @!attribute fields
        #   The fields to pass into this action. Different action types accept different
        #   fields.
        #
        #   @return [Hash{Symbol=>Object}]
        required :fields, HubspotSDK::Internal::Type::HashOf[HubspotSDK::Internal::Type::Unknown]

        # @!attribute type
        #   The type of action this is, can be: "STATIC_BRANCH", "LIST_BRANCH",
        #   "AB_TEST_BRANCH", "CUSTOM_CODE", "WEBHOOK", or "SINGLE_CONNECTION"
        #
        #   @return [Symbol, HubspotSDK::Models::Automation::APISingleConnectionAction::Type]
        required :type, enum: -> { HubspotSDK::Automation::APISingleConnectionAction::Type }

        # @!attribute connection
        #
        #   @return [HubspotSDK::Models::Automation::APIConnection, nil]
        optional :connection, -> { HubspotSDK::Automation::APIConnection }

        # @!method initialize(action_id:, action_type_id:, action_type_version:, fields:, type:, connection: nil)
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::Automation::APISingleConnectionAction} for more details.
        #
        #   @param action_id [String] The ID for this action.
        #
        #   @param action_type_id [String] The ID of the actionType to use.
        #
        #   @param action_type_version [Integer] The version of this actionType to use.
        #
        #   @param fields [Hash{Symbol=>Object}] The fields to pass into this action. Different action types accept different fie
        #
        #   @param type [Symbol, HubspotSDK::Models::Automation::APISingleConnectionAction::Type] The type of action this is, can be: "STATIC_BRANCH", "LIST_BRANCH", "AB_TEST_BRA
        #
        #   @param connection [HubspotSDK::Models::Automation::APIConnection]

        # The type of action this is, can be: "STATIC_BRANCH", "LIST_BRANCH",
        # "AB_TEST_BRANCH", "CUSTOM_CODE", "WEBHOOK", or "SINGLE_CONNECTION"
        #
        # @see HubspotSDK::Models::Automation::APISingleConnectionAction#type
        module Type
          extend HubspotSDK::Internal::Type::Enum

          SINGLE_CONNECTION = :SINGLE_CONNECTION

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
