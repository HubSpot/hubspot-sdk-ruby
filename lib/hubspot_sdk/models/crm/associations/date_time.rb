# frozen_string_literal: true

module HubspotSDK
  module Models
    module CRM
      module Associations
        class DateTime < HubspotSDK::Internal::Type::BaseModel
          # @!attribute date_only
          #
          #   @return [Boolean]
          required :date_only, HubspotSDK::Internal::Type::Boolean, api_name: :dateOnly

          # @!attribute time_zone_shift
          #
          #   @return [Integer]
          required :time_zone_shift, Integer, api_name: :timeZoneShift

          # @!attribute value
          #
          #   @return [Integer]
          required :value, Integer

          # @!method initialize(date_only:, time_zone_shift:, value:)
          #   @param date_only [Boolean]
          #   @param time_zone_shift [Integer]
          #   @param value [Integer]
        end
      end
    end
  end
end
