# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Scheduler
      class ExternalOption < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute description
        #   A brief description of the option.
        #
        #   @return [String]
        required :description, String

        # @!attribute display_order
        #   The order in which the option should be displayed.
        #
        #   @return [Integer]
        required :display_order, Integer, api_name: :displayOrder

        # @!attribute double_data
        #   Deprecated property. Will always be 0.
        #
        #   @return [Float]
        required :double_data, Float, api_name: :doubleData

        # @!attribute hidden
        #   Whether the option should be hidden from the user.
        #
        #   @return [Boolean]
        required :hidden, HubSpotSDK::Internal::Type::Boolean

        # @!attribute label
        #   The text label for the option.
        #
        #   @return [String]
        required :label, String

        # @!attribute read_only
        #   Whether the option is read-only.
        #
        #   @return [Boolean]
        required :read_only, HubSpotSDK::Internal::Type::Boolean, api_name: :readOnly

        # @!attribute value
        #   The value associated with the option.
        #
        #   @return [String]
        required :value, String

        # @!method initialize(description:, display_order:, double_data:, hidden:, label:, read_only:, value:)
        #   @param description [String] A brief description of the option.
        #
        #   @param display_order [Integer] The order in which the option should be displayed.
        #
        #   @param double_data [Float] Deprecated property. Will always be 0.
        #
        #   @param hidden [Boolean] Whether the option should be hidden from the user.
        #
        #   @param label [String] The text label for the option.
        #
        #   @param read_only [Boolean] Whether the option is read-only.
        #
        #   @param value [String] The value associated with the option.
      end
    end
  end
end
