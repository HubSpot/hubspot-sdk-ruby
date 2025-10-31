# frozen_string_literal: true

module HubspotSDK
  module Models
    module CRM
      # @see HubspotSDK::Resources::CRM::Lists#schedule_conversion
      class ListScheduleConversionParams < HubspotSDK::Internal::Type::BaseModel
        extend HubspotSDK::Internal::Type::RequestParameters::Converter
        include HubspotSDK::Internal::Type::RequestParameters

        # @!attribute public_list_conversion_time
        #
        #   @return [HubspotSDK::Models::CRM::PublicListConversionDate, HubspotSDK::Models::CRM::PublicListConversionInactivity]
        required :public_list_conversion_time, union: -> { HubspotSDK::CRM::PublicListConversionTime }

        # @!method initialize(public_list_conversion_time:, request_options: {})
        #   @param public_list_conversion_time [HubspotSDK::Models::CRM::PublicListConversionDate, HubspotSDK::Models::CRM::PublicListConversionInactivity]
        #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
