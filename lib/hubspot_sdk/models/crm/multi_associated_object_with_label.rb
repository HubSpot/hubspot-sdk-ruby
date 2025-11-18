# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      class MultiAssociatedObjectWithLabel < HubspotSDK::Internal::Type::BaseModel
        # @!attribute association_types
        #
        #   @return [Array<HubspotSDK::Models::Crm::AssociationSpecWithLabel>]
        required :association_types,
                 -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Crm::AssociationSpecWithLabel] },
                 api_name: :associationTypes

        # @!attribute to_object_id
        #   The unique identifier for the target object in the association.
        #
        #   @return [String]
        required :to_object_id, String, api_name: :toObjectId

        # @!method initialize(association_types:, to_object_id:)
        #   @param association_types [Array<HubspotSDK::Models::Crm::AssociationSpecWithLabel>]
        #
        #   @param to_object_id [String] The unique identifier for the target object in the association.
      end
    end
  end
end
