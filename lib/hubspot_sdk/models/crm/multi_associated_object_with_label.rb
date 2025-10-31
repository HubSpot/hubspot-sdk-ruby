# frozen_string_literal: true

module HubspotSDK
  module Models
    module CRM
      class MultiAssociatedObjectWithLabel < HubspotSDK::Internal::Type::BaseModel
        # @!attribute association_types
        #
        #   @return [Array<HubspotSDK::Models::CRM::Associations::AssociationSpecWithLabel1>]
        required :association_types,
                 -> {
                   HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::CRM::Associations::AssociationSpecWithLabel1]
                 },
                 api_name: :associationTypes

        # @!attribute to_object_id
        #
        #   @return [String]
        required :to_object_id, String, api_name: :toObjectId

        # @!method initialize(association_types:, to_object_id:)
        #   @param association_types [Array<HubspotSDK::Models::CRM::Associations::AssociationSpecWithLabel1>]
        #   @param to_object_id [String]
      end
    end
  end
end
