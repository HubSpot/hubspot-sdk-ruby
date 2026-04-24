# frozen_string_literal: true

module HubSpotSDK
  module Models
    class BaseOption < HubSpotSDK::Internal::Type::BaseModel
      # @!attribute hidden
      #   Hidden options will not be displayed in HubSpot.
      #
      #   @return [Boolean]
      required :hidden, HubSpotSDK::Internal::Type::Boolean

      # @!attribute label
      #   A human-readable option label that will be shown in HubSpot.
      #
      #   @return [String]
      required :label, String

      # @!attribute value
      #   The internal value of the option, which must be used when setting the property
      #   value through the API.
      #
      #   @return [String]
      required :value, String

      # @!attribute description
      #   A description of the option.
      #
      #   @return [String, nil]
      optional :description, String

      # @!attribute display_order
      #   Options are displayed in order starting with the lowest positive integer value.
      #   Values of -1 will cause the option to be displayed after any positive values.
      #
      #   @return [Integer, nil]
      optional :display_order, Integer, api_name: :displayOrder

      # @!method initialize(hidden:, label:, value:, description: nil, display_order: nil)
      #   Some parameter documentations has been truncated, see
      #   {HubSpotSDK::Models::BaseOption} for more details.
      #
      #   A HubSpot property option
      #
      #   @param hidden [Boolean] Hidden options will not be displayed in HubSpot.
      #
      #   @param label [String] A human-readable option label that will be shown in HubSpot.
      #
      #   @param value [String] The internal value of the option, which must be used when setting the property v
      #
      #   @param description [String] A description of the option.
      #
      #   @param display_order [Integer] Options are displayed in order starting with the lowest positive integer value.
    end
  end
end
