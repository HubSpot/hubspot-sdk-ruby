# frozen_string_literal: true

module HubspotSDK
  module Models
    module CRM
      module FeatureFlags
        # @see HubspotSDK::Resources::CRM::FeatureFlags::Portals#get
        class PortalGetParams < HubspotSDK::Internal::Type::BaseModel
          extend HubspotSDK::Internal::Type::RequestParameters::Converter
          include HubspotSDK::Internal::Type::RequestParameters

          # @!attribute app_id
          #
          #   @return [Integer]
          required :app_id, Integer

          # @!attribute flag_name
          #
          #   @return [String]
          required :flag_name, String

          # @!method initialize(app_id:, flag_name:, request_options: {})
          #   @param app_id [Integer]
          #   @param flag_name [String]
          #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
