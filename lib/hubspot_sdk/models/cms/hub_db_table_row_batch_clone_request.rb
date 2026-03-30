# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      class HubDBTableRowBatchCloneRequest < HubspotSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The ID of the row to be cloned.
        #
        #   @return [String]
        required :id, String

        # @!attribute name
        #   The name for the cloned row.
        #
        #   @return [String, nil]
        optional :name, String

        # @!method initialize(id:, name: nil)
        #   @param id [String] The ID of the row to be cloned.
        #
        #   @param name [String] The name for the cloned row.
      end
    end
  end
end
