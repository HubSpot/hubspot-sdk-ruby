# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      class IntegratorOEmbedDomainModel < HubspotSDK::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [Integer]
        required :id, Integer

        # @!attribute app_id
        #
        #   @return [Integer]
        required :app_id, Integer, api_name: :appId

        # @!attribute created_at
        #
        #   @return [Integer]
        required :created_at, Integer, api_name: :createdAt

        # @!attribute deleted_at
        #
        #   @return [Integer]
        required :deleted_at, Integer, api_name: :deletedAt

        # @!attribute endpoints
        #
        #   @return [HubspotSDK::Models::Cms::Endpoints]
        required :endpoints, -> { HubspotSDK::Cms::Endpoints }

        # @!attribute portal_id
        #
        #   @return [Integer]
        required :portal_id, Integer, api_name: :portalId

        # @!attribute updated_at
        #
        #   @return [Integer]
        required :updated_at, Integer, api_name: :updatedAt

        # @!method initialize(id:, app_id:, created_at:, deleted_at:, endpoints:, portal_id:, updated_at:)
        #   @param id [Integer]
        #   @param app_id [Integer]
        #   @param created_at [Integer]
        #   @param deleted_at [Integer]
        #   @param endpoints [HubspotSDK::Models::Cms::Endpoints]
        #   @param portal_id [Integer]
        #   @param updated_at [Integer]
      end
    end
  end
end
