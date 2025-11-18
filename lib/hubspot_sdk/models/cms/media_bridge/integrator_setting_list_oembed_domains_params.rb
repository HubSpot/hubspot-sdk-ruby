# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      module MediaBridge
        # @see HubspotSDK::Resources::Cms::MediaBridge::IntegratorSettings#list_oembed_domains
        class IntegratorSettingListOembedDomainsParams < HubspotSDK::Internal::Type::BaseModel
          extend HubspotSDK::Internal::Type::RequestParameters::Converter
          include HubspotSDK::Internal::Type::RequestParameters

          # @!attribute domain_portal_id
          #   Filter response by Hub ID.
          #
          #   @return [Integer, nil]
          optional :domain_portal_id, Integer

          # @!method initialize(domain_portal_id: nil, request_options: {})
          #   @param domain_portal_id [Integer] Filter response by Hub ID.
          #
          #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
