# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      class CaseChangeTestExtensionData < HubspotSDK::Internal::Type::BaseModel
        # @!attribute mood
        #
        #   @return [String]
        required :mood, String

        # @!method initialize(mood:)
        #   @param mood [String]
      end
    end
  end
end
