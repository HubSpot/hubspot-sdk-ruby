# frozen_string_literal: true

module HubspotSDK
  module Models
    module CRM
      class PublicGdprDeleteInput < HubspotSDK::Internal::Type::BaseModel
        # @!attribute object_id_
        #
        #   @return [String]
        required :object_id_, String, api_name: :objectId

        # @!attribute id_property
        #   The name of a property whose values are unique for this object
        #
        #   @return [String, nil]
        optional :id_property, String, api_name: :idProperty

        # @!method initialize(object_id_:, id_property: nil)
        #   @param object_id_ [String]
        #
        #   @param id_property [String] The name of a property whose values are unique for this object
      end
    end
  end
end
