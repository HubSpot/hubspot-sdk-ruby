# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Crm
      class PublicListConversionInactivity < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute conversion_type
        #   Specifies the type of conversion (INACTIVITY).
        #
        #   @return [Symbol, HubSpotSDK::Models::Crm::PublicListConversionInactivity::ConversionType]
        required :conversion_type,
                 enum: -> { HubSpotSDK::Crm::PublicListConversionInactivity::ConversionType },
                 api_name: :conversionType

        # @!attribute offset
        #   Value used to paginate through lists. The `offset` provided in the response can
        #   be used in the next request to fetch the next page of results. Defaults to `0`
        #   if no offset is provided.
        #
        #   @return [Integer]
        required :offset, Integer

        # @!attribute time_unit
        #   The unit of time for the inactivity period, such as (DAY, MONTH, WEEK).
        #
        #   @return [Symbol, HubSpotSDK::Models::Crm::PublicListConversionInactivity::TimeUnit]
        required :time_unit,
                 enum: -> { HubSpotSDK::Crm::PublicListConversionInactivity::TimeUnit },
                 api_name: :timeUnit

        # @!method initialize(conversion_type:, offset:, time_unit:)
        #   Some parameter documentations has been truncated, see
        #   {HubSpotSDK::Models::Crm::PublicListConversionInactivity} for more details.
        #
        #   @param conversion_type [Symbol, HubSpotSDK::Models::Crm::PublicListConversionInactivity::ConversionType] Specifies the type of conversion (INACTIVITY).
        #
        #   @param offset [Integer] Value used to paginate through lists. The `offset` provided in the response can
        #
        #   @param time_unit [Symbol, HubSpotSDK::Models::Crm::PublicListConversionInactivity::TimeUnit] The unit of time for the inactivity period, such as (DAY, MONTH, WEEK).

        # Specifies the type of conversion (INACTIVITY).
        #
        # @see HubSpotSDK::Models::Crm::PublicListConversionInactivity#conversion_type
        module ConversionType
          extend HubSpotSDK::Internal::Type::Enum

          INACTIVITY = :INACTIVITY

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # The unit of time for the inactivity period, such as (DAY, MONTH, WEEK).
        #
        # @see HubSpotSDK::Models::Crm::PublicListConversionInactivity#time_unit
        module TimeUnit
          extend HubSpotSDK::Internal::Type::Enum

          DAY = :DAY
          MONTH = :MONTH
          WEEK = :WEEK

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
