# frozen_string_literal: true

module HubSpotSDK
  module Models
    class PropertyGroup < HubSpotSDK::Internal::Type::BaseModel
      # @!attribute archived
      #
      #   @return [Boolean]
      required :archived, HubSpotSDK::Internal::Type::Boolean

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

      # @!method initialize(archived:, label:, name:, display_order: nil)
      #   @param archived [Boolean]
      #   @param label [String]
      #   @param name [String]
      #   @param display_order [Integer]
    end
  end
end
