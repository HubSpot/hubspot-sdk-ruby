# frozen_string_literal: true

module HubspotSDK
  module Models
    module Automation
      class APISingleConnectionAction < HubspotSDK::Internal::Type::BaseModel
        # @!attribute action_id
        #
        #   @return [String]
        required :action_id, String, api_name: :actionId

        # @!attribute action_type_id
        #
        #   @return [String]
        required :action_type_id, String, api_name: :actionTypeId

        # @!attribute action_type_version
        #
        #   @return [Integer]
        required :action_type_version, Integer, api_name: :actionTypeVersion

        # @!attribute fields
        #
        #   @return [Hash{Symbol=>Object}]
        required :fields, HubspotSDK::Internal::Type::HashOf[HubspotSDK::Internal::Type::Unknown]

        # @!attribute type
        #
        #   @return [Symbol, HubspotSDK::Models::Automation::APISingleConnectionAction::Type]
        required :type, enum: -> { HubspotSDK::Automation::APISingleConnectionAction::Type }

        # @!attribute connection
        #
        #   @return [HubspotSDK::Models::Automation::APIConnection, nil]
        optional :connection, -> { HubspotSDK::Automation::APIConnection }

        # @!method initialize(action_id:, action_type_id:, action_type_version:, fields:, type:, connection: nil)
        #   @param action_id [String]
        #   @param action_type_id [String]
        #   @param action_type_version [Integer]
        #   @param fields [Hash{Symbol=>Object}]
        #   @param type [Symbol, HubspotSDK::Models::Automation::APISingleConnectionAction::Type]
        #   @param connection [HubspotSDK::Models::Automation::APIConnection]

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
