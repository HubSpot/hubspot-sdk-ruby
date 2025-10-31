# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      class SetNewLanguagePrimaryRequestVNext < HubspotSDK::Internal::Type::BaseModel
        # @!attribute id
        #   ID of object to set as primary in multi-language group.
        #
        #   @return [String]
        required :id, String

        # @!method initialize(id:)
        #   Request body object for setting a new primary language.
        #
        #   @param id [String] ID of object to set as primary in multi-language group.
      end
    end
  end
end
