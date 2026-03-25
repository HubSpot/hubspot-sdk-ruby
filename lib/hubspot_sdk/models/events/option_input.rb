# frozen_string_literal: true

module HubspotSDK
  module Models
    module Events
      class OptionInput < HubspotSDK::Internal::Type::BaseModel
        # @!attribute display_order
        #
        #   @return [Integer]
        required :display_order, Integer, api_name: :displayOrder

        # @!attribute hidden
        #
        #   @return [Boolean]
        required :hidden, HubspotSDK::Internal::Type::Boolean

        # @!attribute label
        #   null
        #
        #   @return [String]
        required :label, String

        # @!attribute value
        #   null
        #
        #   @return [String]
        required :value, String

        # @!attribute description
        #   null
        #
        #   @return [String, nil]
        optional :description, String

        # @!method initialize(display_order:, hidden:, label:, value:, description: nil)
        #   @param display_order [Integer]
        #
        #   @param hidden [Boolean]
        #
        #   @param label [String] null
        #
        #   @param value [String] null
        #
        #   @param description [String] null
      end
    end
  end
end
