# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      class PropertyGroup < HubspotSDK::Internal::Type::BaseModel
        # @!attribute archived
        #
        #   @return [Boolean]
        required :archived, HubspotSDK::Internal::Type::Boolean

        # @!attribute display_order
        #   Property groups are displayed in order starting with the lowest positive integer
        #   value. Values of -1 will cause the property group to be displayed after any
        #   positive values.
        #
        #   @return [Integer]
        required :display_order, Integer, api_name: :displayOrder

        # @!attribute label
        #   A human-readable label that will be shown in HubSpot.
        #
        #   @return [String]
        required :label, String

        # @!attribute name
        #   The internal property group name, which must be used when referencing the
        #   property group via the API.
        #
        #   @return [String]
        required :name, String

        # @!method initialize(archived:, display_order:, label:, name:)
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::Crm::PropertyGroup} for more details.
        #
        #   An ID for a group of properties
        #
        #   @param archived [Boolean]
        #
        #   @param display_order [Integer] Property groups are displayed in order starting with the lowest positive integer
        #
        #   @param label [String] A human-readable label that will be shown in HubSpot.
        #
        #   @param name [String] The internal property group name, which must be used when referencing the proper
      end
    end
  end
end
