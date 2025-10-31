# frozen_string_literal: true

module HubspotSDK
  module Models
    module Marketing
      class PublicDividerStyleSettings < HubspotSDK::Internal::Type::BaseModel
        # @!attribute color
        #
        #   @return [Object, nil]
        optional :color, HubspotSDK::Internal::Type::Unknown

        # @!attribute height
        #
        #   @return [Integer, nil]
        optional :height, Integer

        # @!attribute line_type
        #
        #   @return [String, nil]
        optional :line_type, String, api_name: :lineType

        # @!method initialize(color: nil, height: nil, line_type: nil)
        #   @param color [Object]
        #   @param height [Integer]
        #   @param line_type [String]
      end
    end
  end
end
