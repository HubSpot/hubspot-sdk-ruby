# frozen_string_literal: true

module HubSpotSDK
  module Models
    class OptionInput < HubSpotSDK::Internal::Type::BaseModel
      # @!attribute display_order
      #
      #   @return [Integer]
      required :display_order, Integer, api_name: :displayOrder

      # @!attribute hidden
      #
      #   @return [Boolean]
      required :hidden, HubSpotSDK::Internal::Type::Boolean

      # @!attribute label
      #
      #   @return [String]
      required :label, String

      # @!attribute value
      #
      #   @return [String]
      required :value, String

      # @!attribute description
      #
      #   @return [String, nil]
      optional :description, String

      # @!method initialize(display_order:, hidden:, label:, value:, description: nil)
      #   @param display_order [Integer]
      #   @param hidden [Boolean]
      #   @param label [String]
      #   @param value [String]
      #   @param description [String]
    end
  end
end
