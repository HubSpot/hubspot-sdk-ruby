# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Marketing
      class PublicBudgetItem < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The unique identifier for the budget item.
        #
        #   @return [String]
        required :id, String

        # @!attribute amount
        #   The monetary amount allocated for the budget item.
        #
        #   @return [Float]
        required :amount, Float

        # @!attribute created_at
        #   The timestamp when the budget item was created.
        #
        #   @return [Integer]
        required :created_at, Integer, api_name: :createdAt

        # @!attribute name
        #   The name of the budget item.
        #
        #   @return [String]
        required :name, String

        # @!attribute order
        #   The order of the budget item, indicating its sequence based on creation date.
        #
        #   @return [Integer]
        required :order, Integer

        # @!attribute updated_at
        #   The timestamp when the budget item was last updated.
        #
        #   @return [Integer]
        required :updated_at, Integer, api_name: :updatedAt

        # @!attribute description
        #   A description of the budget item.
        #
        #   @return [String, nil]
        optional :description, String

        # @!method initialize(id:, amount:, created_at:, name:, order:, updated_at:, description: nil)
        #   @param id [String] The unique identifier for the budget item.
        #
        #   @param amount [Float] The monetary amount allocated for the budget item.
        #
        #   @param created_at [Integer] The timestamp when the budget item was created.
        #
        #   @param name [String] The name of the budget item.
        #
        #   @param order [Integer] The order of the budget item, indicating its sequence based on creation date.
        #
        #   @param updated_at [Integer] The timestamp when the budget item was last updated.
        #
        #   @param description [String] A description of the budget item.
      end
    end
  end
end
