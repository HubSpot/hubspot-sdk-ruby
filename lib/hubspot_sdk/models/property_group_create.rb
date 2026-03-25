# frozen_string_literal: true

module HubspotSDK
  module Models
    class PropertyGroupCreate < HubspotSDK::Internal::Type::BaseModel
      # @!attribute label
      #
      #   @return [String]
      required :label, String

      # @!attribute name
      #
      #   @return [String]
      required :name, String

      # @!attribute display_order
      #
      #   @return [Integer, nil]
      optional :display_order, Integer, api_name: :displayOrder

      # @!method initialize(label:, name:, display_order: nil)
      #   @param label [String]
      #   @param name [String]
      #   @param display_order [Integer]
    end
  end
end
