# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Crm
      module Objects
        class PublicGdprDeleteInput < HubSpotSDK::Internal::Type::BaseModel
          # @!attribute object_id_
          #   The ID of the contact to permanently delete.
          #
          #   @return [String]
          required :object_id_, String, api_name: :objectId

          # @!attribute id_property
          #   The name of a property whose values are unique for this object. An alternative
          #   to identifying a contact by ID.
          #
          #   @return [String, nil]
          optional :id_property, String, api_name: :idProperty

          # @!method initialize(object_id_:, id_property: nil)
          #   Some parameter documentations has been truncated, see
          #   {HubSpotSDK::Models::Crm::Objects::PublicGdprDeleteInput} for more details.
          #
          #   An input that contains the information required to process a public GDPR data
          #   deletion request.
          #
          #   @param object_id_ [String] The ID of the contact to permanently delete.
          #
          #   @param id_property [String] The name of a property whose values are unique for this object. An alternative t
        end
      end
    end
  end
end
