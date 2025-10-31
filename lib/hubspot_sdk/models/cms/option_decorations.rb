# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      class OptionDecorations < HubspotSDK::Internal::Type::BaseModel
        # @!attribute color
        #
        #   @return [String]
        required :color, String

        # @!method initialize(color:)
        #   @param color [String]
      end
    end
  end
end
