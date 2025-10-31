# frozen_string_literal: true

module HubspotSDK
  module Models
    module Marketing
      class PublicSpendItem < HubspotSDK::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute amount
        #
        #   @return [Float]
        required :amount, Float

        # @!attribute created_at
        #
        #   @return [Integer]
        required :created_at, Integer, api_name: :createdAt

        # @!attribute name
        #
        #   @return [String]
        required :name, String

        # @!attribute order
        #
        #   @return [Integer]
        required :order, Integer

        # @!attribute updated_at
        #
        #   @return [Integer]
        required :updated_at, Integer, api_name: :updatedAt

        # @!attribute description
        #
        #   @return [String, nil]
        optional :description, String

        # @!method initialize(id:, amount:, created_at:, name:, order:, updated_at:, description: nil)
        #   @param id [String]
        #   @param amount [Float]
        #   @param created_at [Integer]
        #   @param name [String]
        #   @param order [Integer]
        #   @param updated_at [Integer]
        #   @param description [String]
      end
    end
  end
end
