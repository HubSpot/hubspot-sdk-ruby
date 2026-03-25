# frozen_string_literal: true

module HubspotSDK
  module Models
    module Marketing
      class PublicBudgetItemInput < HubspotSDK::Internal::Type::BaseModel
        # @!attribute amount
        #   The monetary value assigned to the budget item.
        #
        #   @return [Float]
        required :amount, Float

        # @!attribute name
        #   The name of the budget item.
        #
        #   @return [String]
        required :name, String

        # @!attribute order
        #   The sequence number indicating the order of the budget item.
        #
        #   @return [Integer]
        required :order, Integer

        # @!attribute description
        #   A detailed explanation or notes about the budget item.
        #
        #   @return [String, nil]
        optional :description, String

        # @!method initialize(amount:, name:, order:, description: nil)
        #   @param amount [Float] The monetary value assigned to the budget item.
        #
        #   @param name [String] The name of the budget item.
        #
        #   @param order [Integer] The sequence number indicating the order of the budget item.
        #
        #   @param description [String] A detailed explanation or notes about the budget item.
      end
    end
  end
end
