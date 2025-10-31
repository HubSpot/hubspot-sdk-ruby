# frozen_string_literal: true

module HubspotSDK
  module Models
    module CRM
      module Timeline
        # @see HubspotSDK::Resources::CRM::Timeline::Events#get_detail
        class EventGetDetailParams < HubspotSDK::Internal::Type::BaseModel
          extend HubspotSDK::Internal::Type::RequestParameters::Converter
          include HubspotSDK::Internal::Type::RequestParameters

          # @!attribute event_template_id
          #
          #   @return [String]
          required :event_template_id, String

          # @!method initialize(event_template_id:, request_options: {})
          #   @param event_template_id [String]
          #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
