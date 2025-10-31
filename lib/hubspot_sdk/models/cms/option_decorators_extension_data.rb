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
        #   @return [String]
        required :option_decorator_style, String, api_name: :optionDecoratorStyle

        # @!method initialize(option_decorators:, option_decorator_style:)
        #   @param option_decorators [Hash{Symbol=>HubspotSDK::Models::Cms::OptionDecorations}]
        #   @param option_decorator_style [String]
      end
    end
  end
end
