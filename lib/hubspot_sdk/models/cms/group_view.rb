# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Cms
      class GroupView < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute display_name
        #
        #   @return [String]
        required :display_name, String, api_name: :displayName

        # @!attribute display_order
        #
        #   @return [Integer]
        required :display_order, Integer, api_name: :displayOrder

        # @!attribute fulcrum_portal_id
        #
        #   @return [Integer]
        required :fulcrum_portal_id, Integer, api_name: :fulcrumPortalId

        # @!attribute fulcrum_timestamp
        #
        #   @return [Integer]
        required :fulcrum_timestamp, Integer, api_name: :fulcrumTimestamp

        # @!attribute hubspot_defined
        #
        #   @return [Boolean]
        required :hubspot_defined, HubSpotSDK::Internal::Type::Boolean, api_name: :hubspotDefined

        # @!attribute name
        #
        #   @return [String]
        required :name, String

        # @!method initialize(display_name:, display_order:, fulcrum_portal_id:, fulcrum_timestamp:, hubspot_defined:, name:)
        #   @param display_name [String]
        #   @param display_order [Integer]
        #   @param fulcrum_portal_id [Integer]
        #   @param fulcrum_timestamp [Integer]
        #   @param hubspot_defined [Boolean]
        #   @param name [String]
      end
    end
  end
end
