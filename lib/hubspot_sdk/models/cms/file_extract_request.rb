# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      class FileExtractRequest < HubspotSDK::Internal::Type::BaseModel
        # @!attribute path
        #
        #   @return [String]
        required :path, String

        # @!method initialize(path:)
        #   @param path [String]
      end
    end
  end
end
