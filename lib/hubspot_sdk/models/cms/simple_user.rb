# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      class SimpleUser < HubspotSDK::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute email
        #
        #   @return [String]
        required :email, String

        # @!attribute first_name
        #
        #   @return [String]
        required :first_name, String, api_name: :firstName

        # @!attribute last_name
        #
        #   @return [String]
        required :last_name, String, api_name: :lastName

        # @!method initialize(id:, email:, first_name:, last_name:)
        #   @param id [String]
        #   @param email [String]
        #   @param first_name [String]
        #   @param last_name [String]
      end
    end
  end
end
