# frozen_string_literal: true

module HubspotSDK
  module Models
    module Automation
      class Option < HubspotSDK::Internal::Type::BaseModel
        # @!attribute description
        #   A description of the option.
        #
        #   @return [String]
        required :description, String

        # @!attribute display_order
        #   The position of the item relative to others in the list.
        #
        #   @return [Integer]
        required :display_order, Integer, api_name: :displayOrder

        # @!attribute double_data
        #
        #   @return [Float]
        required :double_data, Float, api_name: :doubleData

        # @!attribute hidden
        #   Whether the option is displayed in HubSpot's UI.
        #
        #   @return [Boolean]
        required :hidden, HubspotSDK::Internal::Type::Boolean

        # @!attribute label
        #   A user-friendly label that identifies the option.
        #
        #   @return [String]
        required :label, String

        # @!attribute read_only
        #   Whether the option is read-only.
        #
        #   @return [Boolean]
        required :read_only, HubspotSDK::Internal::Type::Boolean, api_name: :readOnly

        # @!attribute value
        #   The actual value of the option.
        #
        #   @return [String]
        required :value, String

        # @!method initialize(description:, display_order:, double_data:, hidden:, label:, read_only:, value:)
        #   A HubSpot property option
        #
        #   @param description [String] A description of the option.
        #
        #   @param display_order [Integer] The position of the item relative to others in the list.
        #
        #   @param double_data [Float]
        #
        #   @param hidden [Boolean] Whether the option is displayed in HubSpot's UI.
        #
        #   @param label [String] A user-friendly label that identifies the option.
        #
        #   @param read_only [Boolean] Whether the option is read-only.
        #
        #   @param value [String] The actual value of the option.
      end
    end
  end
end
