# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Cms
      class OptionDecoratorsExtensionData < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute option_decorators
        #
        #   @return [Hash{Symbol=>HubSpotSDK::Models::Cms::OptionDecorations}]
        required :option_decorators,
                 -> { HubSpotSDK::Internal::Type::HashOf[HubSpotSDK::Cms::OptionDecorations] },
                 api_name: :optionDecorators

        # @!attribute option_decorator_style
        #
        #   @return [Symbol, HubSpotSDK::Models::Cms::OptionDecoratorsExtensionData::OptionDecoratorStyle]
        required :option_decorator_style,
                 enum: -> { HubSpotSDK::Cms::OptionDecoratorsExtensionData::OptionDecoratorStyle },
                 api_name: :optionDecoratorStyle

        # @!method initialize(option_decorators:, option_decorator_style:)
        #   @param option_decorators [Hash{Symbol=>HubSpotSDK::Models::Cms::OptionDecorations}]
        #   @param option_decorator_style [Symbol, HubSpotSDK::Models::Cms::OptionDecoratorsExtensionData::OptionDecoratorStyle]

        # @see HubSpotSDK::Models::Cms::OptionDecoratorsExtensionData#option_decorator_style
        module OptionDecoratorStyle
          extend HubSpotSDK::Internal::Type::Enum

          LABEL_ONLY = :LABEL_ONLY
          LABEL_WITH_BADGE = :LABEL_WITH_BADGE
          LABEL_WITH_COLOR = :LABEL_WITH_COLOR

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
