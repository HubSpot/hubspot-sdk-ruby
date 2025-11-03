# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      # @see HubspotSDK::Resources::Crm::Lists#get_schedule_conversion
      class PublicListConversionResponse < HubspotSDK::Internal::Type::BaseModel
        # @!attribute list_id
        #
        #   @return [String]
        required :list_id, String, api_name: :listId

        # @!attribute converted_at
        #
        #   @return [Time, nil]
        optional :converted_at, Time, api_name: :convertedAt

        # @!attribute requested_conversion_time
        #
        #   @return [HubspotSDK::Models::Crm::PublicListConversionDate, HubspotSDK::Models::Crm::PublicListConversionInactivity, nil]
        optional :requested_conversion_time,
                 union: -> { HubspotSDK::Crm::PublicListConversionResponse::RequestedConversionTime },
                 api_name: :requestedConversionTime

        # @!method initialize(list_id:, converted_at: nil, requested_conversion_time: nil)
        #   @param list_id [String]
        #   @param converted_at [Time]
        #   @param requested_conversion_time [HubspotSDK::Models::Crm::PublicListConversionDate, HubspotSDK::Models::Crm::PublicListConversionInactivity]

        # @see HubspotSDK::Models::Crm::PublicListConversionResponse#requested_conversion_time
        module RequestedConversionTime
          extend HubspotSDK::Internal::Type::Union

          variant -> { HubspotSDK::Crm::PublicListConversionDate }

          variant -> { HubspotSDK::Crm::PublicListConversionInactivity }

          # @!method self.variants
          #   @return [Array(HubspotSDK::Models::Crm::PublicListConversionDate, HubspotSDK::Models::Crm::PublicListConversionInactivity)]
        end
      end
    end
  end
end
