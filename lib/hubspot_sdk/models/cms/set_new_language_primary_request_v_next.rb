# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Cms
      class SetNewLanguagePrimaryRequestVNext < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute id
        #   ID of object to set as primary in multi-language group.
        #
        #   @return [String]
        required :id, String

        # @!method initialize(id:)
        #   @param id [String] ID of object to set as primary in multi-language group.
      end
    end
  end
end
