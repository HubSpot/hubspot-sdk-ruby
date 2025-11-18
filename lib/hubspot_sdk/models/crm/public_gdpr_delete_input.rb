# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      class PublicGdprDeleteInput < HubspotSDK::Internal::Type::BaseModel
        # @!attribute object_id_
        #   ID of the object
        #
        #   @return [String]
        required :object_id_, String, api_name: :objectId

        # @!attribute id_property
        #   ID property
        #
        #   @return [String, nil]
        optional :id_property, String, api_name: :idProperty

        # @!method initialize(object_id_:, id_property: nil)
        #   @param object_id_ [String] ID of the object
        #
        #   @param id_property [String] ID property
      end
    end
  end
end
