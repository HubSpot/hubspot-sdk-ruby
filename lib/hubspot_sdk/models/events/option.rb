# frozen_string_literal: true

module HubspotSDK
  module Models
    module Events
      class Option < HubspotSDK::Internal::Type::BaseModel
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

        # @!attribute value
        #   The actual value of the option.
        #
        #   @return [String]
        required :value, String

        # @!attribute description
        #   A description of the option.
        #
        #   @return [String, nil]
        optional :description, String

        # @!attribute display_order
        #   The position of the item relative to others in the list.
        #
        #   @return [Integer, nil]
        optional :display_order, Integer, api_name: :displayOrder

        # @!method initialize(hidden:, label:, value:, description: nil, display_order: nil)
        #   A HubSpot property option
        #
        #   @param hidden [Boolean] Whether the option is displayed in HubSpot's UI.
        #
        #   @param label [String] A user-friendly label that identifies the option.
        #
        #   @param value [String] The actual value of the option.
        #
        #   @param description [String] A description of the option.
        #
        #   @param display_order [Integer] The position of the item relative to others in the list.
      end
    end
  end
end
