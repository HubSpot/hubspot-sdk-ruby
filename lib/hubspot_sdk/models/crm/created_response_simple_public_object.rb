# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      class CreatedResponseSimplePublicObject < HubspotSDK::Internal::Type::BaseModel
        # @!attribute created_resource_id
        #   The unique identifier of the newly created resource.
        #
        #   @return [String]
        required :created_resource_id, String, api_name: :createdResourceId

        # @!attribute entity
        #   A simple public object.
        #
        #   @return [HubspotSDK::Models::Crm::SimplePublicObject]
        required :entity, -> { HubspotSDK::Crm::SimplePublicObject }

        # @!attribute location
        #   The URL location of the newly created resource.
        #
        #   @return [String, nil]
        optional :location, String

        # @!method initialize(created_resource_id:, entity:, location: nil)
        #   @param created_resource_id [String] The unique identifier of the newly created resource.
        #
        #   @param entity [HubspotSDK::Models::Crm::SimplePublicObject] A simple public object.
        #
        #   @param location [String] The URL location of the newly created resource.
      end
    end
  end
end
