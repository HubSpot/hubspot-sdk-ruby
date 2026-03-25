# frozen_string_literal: true

module HubspotSDK
  module Models
    class PropertyGroupUpdate < HubspotSDK::Internal::Type::BaseModel
      # @!attribute display_order
      #
      #   @return [Integer, nil]
      optional :display_order, Integer, api_name: :displayOrder

      # @!attribute label
      #
      #   @return [String, nil]
      optional :label, String

      # @!method initialize(display_order: nil, label: nil)
      #   @param display_order [Integer]
      #   @param label [String]
    end
  end
end
