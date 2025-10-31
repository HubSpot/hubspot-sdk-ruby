# frozen_string_literal: true

module HubspotSDK
  module Models
    module CRM
      module Timeline
        # @see HubspotSDK::Resources::CRM::Timeline::Tokens#update
        class TokenUpdateParams < HubspotSDK::Models::CRM::TimelineEventTemplateTokenUpdateRequest
          extend HubspotSDK::Internal::Type::RequestParameters::Converter
          include HubspotSDK::Internal::Type::RequestParameters

          # @!attribute app_id
          #
          #   @return [Integer]
          required :app_id, Integer

          # @!attribute event_template_id
          #
          #   @return [String]
          required :event_template_id, String

          # @!method initialize(app_id:, event_template_id:, request_options: {})
          #   @param app_id [Integer]
          #   @param event_template_id [String]
          #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
