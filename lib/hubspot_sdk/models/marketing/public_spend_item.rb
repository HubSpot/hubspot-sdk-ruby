# frozen_string_literal: true

module HubspotSDK
  module Models
    module Marketing
      class PublicSpendItem < HubspotSDK::Internal::Type::BaseModel
        # @!attribute id
        #   Unique identifier for the spend item.
        #
        #   @return [String]
        required :id, String

        # @!attribute amount
        #   The monetary value associated with the spend item.
        #
        #   @return [Float]
        required :amount, Float

        # @!attribute created_at
        #   The timestamp indicating when the spend item was created.
        #
        #   @return [Integer]
        required :created_at, Integer, api_name: :createdAt

        # @!attribute name
        #   The name assigned to the spend item.
        #
        #   @return [String]
        required :name, String

        # @!attribute order
        #   The sequence order of the spend item, where 0 is the oldest.
        #
        #   @return [Integer]
        required :order, Integer

        # @!attribute updated_at
        #   The timestamp indicating when the spend item was last updated.
        #
        #   @return [Integer]
        required :updated_at, Integer, api_name: :updatedAt

        # @!attribute description
        #   A detailed explanation or notes about the spend item.
        #
        #   @return [String, nil]
        optional :description, String

        # @!method initialize(id:, amount:, created_at:, name:, order:, updated_at:, description: nil)
        #   @param id [String] Unique identifier for the spend item.
        #
        #   @param amount [Float] The monetary value associated with the spend item.
        #
        #   @param created_at [Integer] The timestamp indicating when the spend item was created.
        #
        #   @param name [String] The name assigned to the spend item.
        #
        #   @param order [Integer] The sequence order of the spend item, where 0 is the oldest.
        #
        #   @param updated_at [Integer] The timestamp indicating when the spend item was last updated.
        #
        #   @param description [String] A detailed explanation or notes about the spend item.
      end
    end
  end
end
