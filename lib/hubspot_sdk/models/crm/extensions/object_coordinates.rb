# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      module Extensions
        class ObjectCoordinates < HubspotSDK::Internal::Type::BaseModel
          # @!attribute object_id_
          #
          #   @return [Integer]
          required :object_id_, Integer, api_name: :objectId

          # @!attribute object_type_id
          #
          #   @return [String]
          required :object_type_id, String, api_name: :objectTypeId

          # @!attribute portal_id
          #
          #   @return [Integer]
          required :portal_id, Integer, api_name: :portalId

          # @!method initialize(object_id_:, object_type_id:, portal_id:)
          #   @param object_id_ [Integer]
          #   @param object_type_id [String]
          #   @param portal_id [Integer]
        end
      end
    end
  end
end
