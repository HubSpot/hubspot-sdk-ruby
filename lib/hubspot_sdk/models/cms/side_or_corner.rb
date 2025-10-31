# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      class SideOrCorner < HubspotSDK::Internal::Type::BaseModel
        # @!attribute horizontal_side
        #
        #   @return [String]
        required :horizontal_side, String, api_name: :horizontalSide

        # @!attribute vertical_side
        #
        #   @return [String]
        required :vertical_side, String, api_name: :verticalSide

        # @!method initialize(horizontal_side:, vertical_side:)
        #   @param horizontal_side [String]
        #   @param vertical_side [String]
      end
    end
  end
end
