# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Automation
      class PublicOption < HubSpotSDK::Internal::Type::BaseModel
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
        #   The position of the option relative to others in the list.
        #
        #   @return [Integer, nil]
        optional :display_order, Integer, api_name: :displayOrder

        # @!method initialize(label:, value:, description: nil, display_order: nil)
        #   @param label [String] A user-friendly label that identifies the option.
        #
        #   @param value [String] The actual value of the option.
        #
        #   @param description [String] A description of the option.
        #
        #   @param display_order [Integer] The position of the option relative to others in the list.
      end
    end
  end
end
