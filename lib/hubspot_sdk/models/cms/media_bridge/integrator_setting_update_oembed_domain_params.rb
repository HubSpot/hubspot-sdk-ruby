# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      module MediaBridge
        # @see HubspotSDK::Resources::Cms::MediaBridge::IntegratorSettings#update_oembed_domain
        class IntegratorSettingUpdateOembedDomainParams < HubspotSDK::Internal::Type::BaseModel
          extend HubspotSDK::Internal::Type::RequestParameters::Converter
          include HubspotSDK::Internal::Type::RequestParameters

          # @!attribute app_id
          #
          #   @return [String]
          required :app_id, String

          # @!attribute endpoints
          #
          #   @return [HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingUpdateOembedDomainParams::Endpoints]
          required :endpoints,
                   -> { HubspotSDK::Cms::MediaBridge::IntegratorSettingUpdateOembedDomainParams::Endpoints }

          # @!attribute portal_id
          #
          #   @return [Integer, nil]
          optional :portal_id, Integer, api_name: :portalId

          # @!method initialize(app_id:, endpoints:, portal_id: nil, request_options: {})
          #   @param app_id [String]
          #   @param endpoints [HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingUpdateOembedDomainParams::Endpoints]
          #   @param portal_id [Integer]
          #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]

          class Endpoints < HubspotSDK::Internal::Type::BaseModel
            # @!attribute discovery
            #
            #   @return [Boolean]
            required :discovery, HubspotSDK::Internal::Type::Boolean

            # @!attribute schemes
            #
            #   @return [Array<String>]
            required :schemes, HubspotSDK::Internal::Type::ArrayOf[String]

            # @!attribute url
            #
            #   @return [String]
            required :url, String

            # @!method initialize(discovery:, schemes:, url:)
            #   @param discovery [Boolean]
            #   @param schemes [Array<String>]
            #   @param url [String]
          end
        end
      end
    end
  end
end
