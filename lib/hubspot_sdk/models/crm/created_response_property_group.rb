# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      class CreatedResponsePropertyGroup < HubspotSDK::Internal::Type::BaseModel
        # @!attribute created_resource_id
        #
        #   @return [String]
        required :created_resource_id, String, api_name: :createdResourceId

        # @!attribute entity
        #   An ID for a group of properties
        #
        #   @return [HubspotSDK::Models::Crm::PropertyGroup]
        required :entity, -> { HubspotSDK::Crm::PropertyGroup }

        # @!attribute location
        #
        #   @return [String, nil]
        optional :location, String

        # @!method initialize(created_resource_id:, entity:, location: nil)
        #   @param created_resource_id [String]
        #
        #   @param entity [HubspotSDK::Models::Crm::PropertyGroup] An ID for a group of properties
        #
        #   @param location [String]
      end
    end
  end
end
