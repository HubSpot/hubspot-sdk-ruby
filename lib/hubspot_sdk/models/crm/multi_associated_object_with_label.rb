# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Crm
      class MultiAssociatedObjectWithLabel < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute association_types
        #
        #   @return [Array<HubSpotSDK::Models::Crm::AssociationSpecWithLabel>]
        required :association_types,
                 -> { HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Crm::AssociationSpecWithLabel] },
                 api_name: :associationTypes

        # @!attribute to_object_id
        #   The unique identifier for the target object in the association.
        #
        #   @return [String]
        required :to_object_id, String, api_name: :toObjectId

        # @!method initialize(association_types:, to_object_id:)
        #   Represents an object that is associated with multiple other objects, with
        #   optional context.
        #
        #   @param association_types [Array<HubSpotSDK::Models::Crm::AssociationSpecWithLabel>]
        #
        #   @param to_object_id [String] The unique identifier for the target object in the association.
      end
    end
  end
end
