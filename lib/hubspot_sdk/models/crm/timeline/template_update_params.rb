# frozen_string_literal: true

module HubspotSDK
  module Models
    module CRM
      module Timeline
        # @see HubspotSDK::Resources::CRM::Timeline::Templates#update
        class TemplateUpdateParams < HubspotSDK::Models::CRM::TimelineEventTemplateUpdateRequest
          extend HubspotSDK::Internal::Type::RequestParameters::Converter
          include HubspotSDK::Internal::Type::RequestParameters

          # @!attribute app_id
          #
          #   @return [Integer]
          required :app_id, Integer

          # @!method initialize(app_id:, request_options: {})
          #   @param app_id [Integer]
          #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
