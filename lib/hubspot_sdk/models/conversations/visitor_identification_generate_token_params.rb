# frozen_string_literal: true

module HubspotSDK
  module Models
    module Conversations
      # @see HubspotSDK::Resources::Conversations::VisitorIdentification#generate_token
      class VisitorIdentificationGenerateTokenParams < HubspotSDK::Internal::Type::BaseModel
        extend HubspotSDK::Internal::Type::RequestParameters::Converter
        include HubspotSDK::Internal::Type::RequestParameters

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

        # @!method initialize(email:, first_name: nil, last_name: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::Conversations::VisitorIdentificationGenerateTokenParams}
        #   for more details.
        #
        #   @param email [String] The email of the visitor that you wish to identify
        #
        #   @param first_name [String] The first name of the visitor that you wish to identify. This value will only be
        #
        #   @param last_name [String] The last name of the visitor that you wish to identify. This value will only be
        #
        #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
