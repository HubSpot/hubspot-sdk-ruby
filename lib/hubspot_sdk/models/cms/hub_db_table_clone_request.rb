# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      class HubDBTableCloneRequest < HubspotSDK::Internal::Type::BaseModel
        # @!attribute copy_rows
        #   Specifies whether to copy the rows during clone
        #
        #   @return [Boolean]
        required :copy_rows, HubspotSDK::Internal::Type::Boolean, api_name: :copyRows

        # @!attribute is_hubspot_defined
        #
        #   @return [Boolean]
        required :is_hubspot_defined, HubspotSDK::Internal::Type::Boolean, api_name: :isHubspotDefined

        # @!attribute new_label
        #   The new label for the cloned table
        #
        #   @return [String, nil]
        optional :new_label, String, api_name: :newLabel

        # @!attribute new_name
        #   The new name for the cloned table
        #
        #   @return [String, nil]
        optional :new_name, String, api_name: :newName

        # @!method initialize(copy_rows:, is_hubspot_defined:, new_label: nil, new_name: nil)
        #   @param copy_rows [Boolean] Specifies whether to copy the rows during clone
        #
        #   @param is_hubspot_defined [Boolean]
        #
        #   @param new_label [String] The new label for the cloned table
        #
        #   @param new_name [String] The new name for the cloned table
      end
    end
  end
end
