# frozen_string_literal: true

module HubspotSDK
  module Models
    module CRM
      module FeatureFlags
        # @see HubspotSDK::Resources::CRM::FeatureFlags::Portals#batch_delete
        class PortalBatchDeleteParams < HubspotSDK::Internal::Type::BaseModel
          extend HubspotSDK::Internal::Type::RequestParameters::Converter
          include HubspotSDK::Internal::Type::RequestParameters

          # @!attribute app_id
          #
          #   @return [Integer]
          required :app_id, Integer

          # @!attribute portal_ids
          #
          #   @return [Array<Integer>]
          required :portal_ids, HubspotSDK::Internal::Type::ArrayOf[Integer], api_name: :portalIds

          # @!method initialize(app_id:, portal_ids:, request_options: {})
          #   @param app_id [Integer]
          #   @param portal_ids [Array<Integer>]
          #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
