# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      class Angle < HubspotSDK::Internal::Type::BaseModel
        # @!attribute units
        #
        #   @return [String]
        required :units, String

        # @!attribute value
        #
        #   @return [Float]
        required :value, Float

        # @!method initialize(units:, value:)
        #   @param units [String]
        #   @param value [Float]
      end
    end
  end
end
