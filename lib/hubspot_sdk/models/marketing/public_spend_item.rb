# frozen_string_literal: true

module HubspotSDK
  module Models
    module Marketing
      class PublicSpendItem < HubspotSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The unique identifier for the spend item, represented as a string.
        #
        #   @return [String]
        required :id, String

        # @!attribute amount
        #   The monetary amount of the spend item, represented as a number.
        #
        #   @return [Float]
        required :amount, Float

        # @!attribute created_at
        #   A Unix timestamp in milliseconds indicating when the spend item was created.
        #
        #   @return [Integer]
        required :created_at, Integer, api_name: :createdAt

        # @!attribute name
        #   The name of the spend item, represented as a string.
        #
        #   @return [String]
        required :name, String

        # @!attribute order
        #   An integer that specifies the order of the spend item.
        #
        #   @return [Integer]
        required :order, Integer

        # @!attribute updated_at
        #   A Unix timestamp in milliseconds indicating when the spend item was last
        #   updated.
        #
        #   @return [Integer]
        required :updated_at, Integer, api_name: :updatedAt

        # @!attribute description
        #   A brief description of the spend item, represented as a string.
        #
        #   @return [String, nil]
        optional :description, String

        # @!method initialize(id:, amount:, created_at:, name:, order:, updated_at:, description: nil)
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::Marketing::PublicSpendItem} for more details.
        #
        #   @param id [String] The unique identifier for the spend item, represented as a string.
        #
        #   @param amount [Float] The monetary amount of the spend item, represented as a number.
        #
        #   @param created_at [Integer] A Unix timestamp in milliseconds indicating when the spend item was created.
        #
        #   @param name [String] The name of the spend item, represented as a string.
        #
        #   @param order [Integer] An integer that specifies the order of the spend item.
        #
        #   @param updated_at [Integer] A Unix timestamp in milliseconds indicating when the spend item was last updated
        #
        #   @param description [String] A brief description of the spend item, represented as a string.
      end
    end
  end
end
