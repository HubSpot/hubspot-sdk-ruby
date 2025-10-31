# frozen_string_literal: true

module HubspotSDK
  module Models
    module CRM
      class PublicTeam < HubspotSDK::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute name
        #
        #   @return [String]
        required :name, String

        # @!attribute primary
        #
        #   @return [Boolean]
        required :primary, HubspotSDK::Internal::Type::Boolean

        # @!method initialize(id:, name:, primary:)
        #   @param id [String]
        #   @param name [String]
        #   @param primary [Boolean]
      end
    end
  end
end
