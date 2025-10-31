# frozen_string_literal: true

module HubspotSDK
  module Models
    module Scheduler
      class ExternalUserProfile < HubspotSDK::Internal::Type::BaseModel
        # @!attribute email
        #
        #   @return [String]
        required :email, String

        # @!attribute first_name
        #
        #   @return [String, nil]
        optional :first_name, String, api_name: :firstName

        # @!attribute full_name
        #
        #   @return [String, nil]
        optional :full_name, String, api_name: :fullName

        # @!attribute last_name
        #
        #   @return [String, nil]
        optional :last_name, String, api_name: :lastName

        # @!method initialize(email:, first_name: nil, full_name: nil, last_name: nil)
        #   @param email [String]
        #   @param first_name [String]
        #   @param full_name [String]
        #   @param last_name [String]
      end
    end
  end
end
