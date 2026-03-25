# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      module Blogs
        class Angle < HubspotSDK::Internal::Type::BaseModel
          # @!attribute units
          #   The unit of measurement for the angle.
          #
          #   @return [Symbol, HubspotSDK::Models::Cms::Blogs::Angle::Units]
          required :units, enum: -> { HubspotSDK::Cms::Blogs::Angle::Units }

          # @!attribute value
          #   The numerical representation of the angle.
          #
          #   @return [Float]
          required :value, Float

          # @!method initialize(units:, value:)
          #   @param units [Symbol, HubspotSDK::Models::Cms::Blogs::Angle::Units] The unit of measurement for the angle.
          #
          #   @param value [Float] The numerical representation of the angle.

          # The unit of measurement for the angle.
          #
          # @see HubspotSDK::Models::Cms::Blogs::Angle#units
          module Units
            extend HubspotSDK::Internal::Type::Enum

            DEG = :deg
            GRAD = :grad
            RAD = :rad
            TURN = :turn

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end
      end
    end
  end
end
