# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      class OptionDecoratorsExtensionData < HubspotSDK::Internal::Type::BaseModel
        # @!attribute option_decorators
        #
        #   @return [Hash{Symbol=>HubspotSDK::Models::Cms::OptionDecorations}]
        required :option_decorators,
                 -> { HubspotSDK::Internal::Type::HashOf[HubspotSDK::Cms::OptionDecorations] },
                 api_name: :optionDecorators

        # @!attribute option_decorator_style
        #
        #   @return [Symbol, HubspotSDK::Models::Cms::OptionDecoratorsExtensionData::OptionDecoratorStyle]
        required :option_decorator_style,
                 enum: -> { HubspotSDK::Cms::OptionDecoratorsExtensionData::OptionDecoratorStyle },
                 api_name: :optionDecoratorStyle

        # @!method initialize(option_decorators:, option_decorator_style:)
        #   @param option_decorators [Hash{Symbol=>HubspotSDK::Models::Cms::OptionDecorations}]
        #   @param option_decorator_style [Symbol, HubspotSDK::Models::Cms::OptionDecoratorsExtensionData::OptionDecoratorStyle]

        # @see HubspotSDK::Models::Cms::OptionDecoratorsExtensionData#option_decorator_style
        module OptionDecoratorStyle
          extend HubspotSDK::Internal::Type::Enum

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
