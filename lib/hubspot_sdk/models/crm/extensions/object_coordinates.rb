# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Crm
      module Extensions
        class ObjectCoordinates < HubSpotSDK::Internal::Type::BaseModel
          # @!attribute object_id_
          #   The unique identifier for the object.
          #
          #   @return [Integer]
          required :object_id_, Integer, api_name: :objectId

          # @!attribute object_type_id
          #   The type identifier for the object.
          #
          #   @return [String]
          required :object_type_id, String, api_name: :objectTypeId

          # @!attribute portal_id
          #   The unique identifier for the portal.
          #
          #   @return [Integer]
          required :portal_id, Integer, api_name: :portalId

          # @!method initialize(object_id_:, object_type_id:, portal_id:)
          #   @param object_id_ [Integer] The unique identifier for the object.
          #
          #   @param object_type_id [String] The type identifier for the object.
          #
          #   @param portal_id [Integer] The unique identifier for the portal.
        end
      end
    end
  end
end
