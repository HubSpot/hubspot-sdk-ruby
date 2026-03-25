# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      class FileExtractRequest < HubspotSDK::Internal::Type::BaseModel
        # @!attribute path
        #   The file system location where the zip file is to be extracted.
        #
        #   @return [String]
        required :path, String

        # @!method initialize(path:)
        #   @param path [String] The file system location where the zip file is to be extracted.
      end
    end
  end
end
