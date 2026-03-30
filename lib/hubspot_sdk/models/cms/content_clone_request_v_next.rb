# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      class ContentCloneRequestVNext < HubspotSDK::Internal::Type::BaseModel
        # @!attribute id
        #   ID of the object to be cloned.
        #
        #   @return [String]
        required :id, String

        # @!attribute clone_name
        #   Name of the cloned object.
        #
        #   @return [String, nil]
        optional :clone_name, String, api_name: :cloneName

        # @!method initialize(id:, clone_name: nil)
        #   @param id [String] ID of the object to be cloned.
        #
        #   @param clone_name [String] Name of the cloned object.
      end
    end
  end
end
