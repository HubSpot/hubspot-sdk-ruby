# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      # @see HubspotSDK::Resources::Crm::Lists#schedule_conversion
      class ListScheduleConversionParams < HubspotSDK::Internal::Type::BaseModel
        extend HubspotSDK::Internal::Type::RequestParameters::Converter
        include HubspotSDK::Internal::Type::RequestParameters

        # @!attribute public_list_conversion_time
        #
        #   @return [HubspotSDK::Models::Crm::PublicListConversionDate, HubspotSDK::Models::Crm::PublicListConversionInactivity]
        required :public_list_conversion_time, union: -> { HubspotSDK::Crm::PublicListConversionTime }

        # @!method initialize(public_list_conversion_time:, request_options: {})
        #   @param public_list_conversion_time [HubspotSDK::Models::Crm::PublicListConversionDate, HubspotSDK::Models::Crm::PublicListConversionInactivity]
        #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
