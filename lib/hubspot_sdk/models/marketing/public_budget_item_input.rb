# frozen_string_literal: true

module HubspotSDK
  module Models
    module Marketing
      class PublicBudgetItemInput < HubspotSDK::Internal::Type::BaseModel
        # @!attribute amount
        #
        #   @return [Float]
        required :amount, Float

        # @!attribute name
        #
        #   @return [String]
        required :name, String

        # @!attribute order
        #
        #   @return [Integer]
        required :order, Integer

        # @!attribute description
        #
        #   @return [String, nil]
        optional :description, String

        # @!method initialize(amount:, name:, order:, description: nil)
        #   @param amount [Float]
        #   @param name [String]
        #   @param order [Integer]
        #   @param description [String]
      end
    end
  end
end
