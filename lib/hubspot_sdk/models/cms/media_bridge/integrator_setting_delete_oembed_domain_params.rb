# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      module MediaBridge
        # @see HubspotSDK::Resources::Cms::MediaBridge::IntegratorSettings#delete_oembed_domain
        class IntegratorSettingDeleteOembedDomainParams < HubspotSDK::Internal::Type::BaseModel
          extend HubspotSDK::Internal::Type::RequestParameters::Converter
          include HubspotSDK::Internal::Type::RequestParameters

          # @!attribute id
          #   The ID of the oEmbed to delete.
          #
          #   @return [Integer, nil]
          optional :id, Integer

          # @!attribute domain_portal_id
          #   Filter response by Hub ID.
          #
          #   @return [Integer, nil]
          optional :domain_portal_id, Integer

          # @!method initialize(id: nil, domain_portal_id: nil, request_options: {})
          #   @param id [Integer] The ID of the oEmbed to delete.
          #
          #   @param domain_portal_id [Integer] Filter response by Hub ID.
          #
          #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
