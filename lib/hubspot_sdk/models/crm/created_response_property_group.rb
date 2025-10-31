# frozen_string_literal: true

module HubspotSDK
  module Models
    module CRM
      class CreatedResponsePropertyGroup < HubspotSDK::Internal::Type::BaseModel
        # @!attribute created_resource_id
        #
        #   @return [String]
        required :created_resource_id, String, api_name: :createdResourceId

        # @!attribute entity
        #   An ID for a group of properties
        #
        #   @return [HubspotSDK::Models::CRM::PropertyGroup]
        required :entity, -> { HubspotSDK::CRM::PropertyGroup }

        # @!attribute location
        #
        #   @return [String, nil]
        optional :location, String

        # @!method initialize(created_resource_id:, entity:, location: nil)
        #   @param created_resource_id [String]
        #
        #   @param entity [HubspotSDK::Models::CRM::PropertyGroup] An ID for a group of properties
        #
        #   @param location [String]
      end
    end
  end
end
