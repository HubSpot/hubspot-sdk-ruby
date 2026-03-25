# frozen_string_literal: true

module HubspotSDK
  module Models
    module Conversations
      class ContactName < HubspotSDK::Internal::Type::BaseModel
        # @!attribute first_name
        #
        #   @return [String, nil]
        optional :first_name, String, api_name: :firstName

        # @!attribute last_name
        #
        #   @return [String, nil]
        optional :last_name, String, api_name: :lastName

        # @!attribute middle_name
        #
        #   @return [String, nil]
        optional :middle_name, String, api_name: :middleName

        # @!attribute prefix
        #
        #   @return [String, nil]
        optional :prefix, String

        # @!attribute suffix
        #
        #   @return [String, nil]
        optional :suffix, String

        # @!method initialize(first_name: nil, last_name: nil, middle_name: nil, prefix: nil, suffix: nil)
        #   @param first_name [String]
        #   @param last_name [String]
        #   @param middle_name [String]
        #   @param prefix [String]
        #   @param suffix [String]
      end
    end
  end
end
