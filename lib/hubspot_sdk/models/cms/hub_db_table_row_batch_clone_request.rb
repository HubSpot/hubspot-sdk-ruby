# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      class HubDBTableRowBatchCloneRequest < HubspotSDK::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute name
        #
        #   @return [String, nil]
        optional :name, String

        # @!method initialize(id:, name: nil)
        #   @param id [String]
        #   @param name [String]
      end
    end
  end
end
