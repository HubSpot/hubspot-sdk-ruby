# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      class DetachFromLangGroupRequestVNext < HubspotSDK::Internal::Type::BaseModel
        # @!attribute id
        #   ID of the object to remove from a multi-language group.
        #
        #   @return [String]
        required :id, String

        # @!method initialize(id:)
        #   Request body object for detaching objects from multi-language groups.
        #
        #   @param id [String] ID of the object to remove from a multi-language group.
      end
    end
  end
end
