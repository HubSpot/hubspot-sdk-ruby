# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Marketing
      class PublicFontStyle < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute bold
        #
        #   @return [Boolean, nil]
        optional :bold, HubSpotSDK::Internal::Type::Boolean

        # @!attribute color
        #
        #   @return [String, nil]
        optional :color, String

        # @!attribute font
        #
        #   @return [String, nil]
        optional :font, String

        # @!attribute italic
        #
        #   @return [Boolean, nil]
        optional :italic, HubSpotSDK::Internal::Type::Boolean

        # @!attribute size
        #
        #   @return [Integer, nil]
        optional :size, Integer

        # @!attribute underline
        #
        #   @return [Boolean, nil]
        optional :underline, HubSpotSDK::Internal::Type::Boolean

        # @!method initialize(bold: nil, color: nil, font: nil, italic: nil, size: nil, underline: nil)
        #   @param bold [Boolean]
        #   @param color [String]
        #   @param font [String]
        #   @param italic [Boolean]
        #   @param size [Integer]
        #   @param underline [Boolean]
      end
    end
  end
end
