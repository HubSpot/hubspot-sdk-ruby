# frozen_string_literal: true

module HubspotSDK
  module Models
    module Conversations
      class IdentificationTokenGenerationRequest < HubspotSDK::Internal::Type::BaseModel
        # @!attribute email
        #   The email of the visitor that you wish to identify
        #
        #   @return [String]
        required :email, String

        # @!attribute first_name
        #   The first name of the visitor that you wish to identify. This value will only be
        #   set in HubSpot for new contacts and existing contacts where first name is
        #   unknown. Optional.
        #
        #   @return [String, nil]
        optional :first_name, String, api_name: :firstName

        # @!attribute last_name
        #   The last name of the visitor that you wish to identify. This value will only be
        #   set in HubSpot for new contacts and existing contacts where last name is
        #   unknown. Optional.
        #
        #   @return [String, nil]
        optional :last_name, String, api_name: :lastName

        # @!method initialize(email:, first_name: nil, last_name: nil)
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::Conversations::IdentificationTokenGenerationRequest} for
        #   more details.
        #
        #   @param email [String] The email of the visitor that you wish to identify
        #
        #   @param first_name [String] The first name of the visitor that you wish to identify. This value will only be
        #
        #   @param last_name [String] The last name of the visitor that you wish to identify. This value will only be
      end
    end
  end
end
