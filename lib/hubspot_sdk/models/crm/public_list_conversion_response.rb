# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Crm
      # @see HubSpotSDK::Resources::Crm::Lists#get_schedule_conversion
      class PublicListConversionResponse < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute list_id
        #   The unique identifier of the list for which the conversion details are provided.
        #
        #   @return [String]
        required :list_id, String, api_name: :listId

        # @!attribute converted_at
        #   The date and time when the list was converted.
        #
        #   @return [Time, nil]
        optional :converted_at, Time, api_name: :convertedAt

        # @!attribute requested_conversion_time
        #   The scheduled time for the list conversion, which can be based on a specific
        #   date or inactivity period.
        #
        #   @return [HubSpotSDK::Models::Crm::PublicListConversionDate, HubSpotSDK::Models::Crm::PublicListConversionInactivity, nil]
        optional :requested_conversion_time,
                 union: -> { HubSpotSDK::Crm::PublicListConversionResponse::RequestedConversionTime },
                 api_name: :requestedConversionTime

        # @!method initialize(list_id:, converted_at: nil, requested_conversion_time: nil)
        #   Some parameter documentations has been truncated, see
        #   {HubSpotSDK::Models::Crm::PublicListConversionResponse} for more details.
        #
        #   @param list_id [String] The unique identifier of the list for which the conversion details are provided.
        #
        #   @param converted_at [Time] The date and time when the list was converted.
        #
        #   @param requested_conversion_time [HubSpotSDK::Models::Crm::PublicListConversionDate, HubSpotSDK::Models::Crm::PublicListConversionInactivity] The scheduled time for the list conversion, which can be based on a specific dat

        # The scheduled time for the list conversion, which can be based on a specific
        # date or inactivity period.
        #
        # @see HubSpotSDK::Models::Crm::PublicListConversionResponse#requested_conversion_time
        module RequestedConversionTime
          extend HubSpotSDK::Internal::Type::Union

          variant -> { HubSpotSDK::Crm::PublicListConversionDate }

          variant -> { HubSpotSDK::Crm::PublicListConversionInactivity }

          # @!method self.variants
          #   @return [Array(HubSpotSDK::Models::Crm::PublicListConversionDate, HubSpotSDK::Models::Crm::PublicListConversionInactivity)]
        end
      end
    end
  end
end
