# frozen_string_literal: true

module HubspotSDK
  module Models
    module Marketing
      class PublicSpendItemInput < HubspotSDK::Internal::Type::BaseModel
        # @!attribute amount
        #   The monetary value of the spend item.
        #
        #   @return [Float]
        required :amount, Float

        # @!attribute name
        #   The name of the spend item.
        #
        #   @return [String]
        required :name, String

        # @!attribute order
        #   The sequence number indicating the order of the spend item.
        #
        #   @return [Integer]
        required :order, Integer

        # @!attribute description
        #   A brief description of the spend item.
        #
        #   @return [String, nil]
        optional :description, String

        # @!method initialize(amount:, name:, order:, description: nil)
        #   @param amount [Float] The monetary value of the spend item.
        #
        #   @param name [String] The name of the spend item.
        #
        #   @param order [Integer] The sequence number indicating the order of the spend item.
        #
        #   @param description [String] A brief description of the spend item.
      end
    end
  end
end
