# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Conversations
      class IdentificationTokenGenerationRequest < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute email
        #   The email of the visitor that you wish to identify
        #
        #   @return [String]
        required :email, String

        # @!attribute hs_customer_agent_context
        #
        #   @return [Hash{Symbol=>String}]
        required :hs_customer_agent_context,
                 HubSpotSDK::Internal::Type::HashOf[String],
                 api_name: :hsCustomerAgentContext

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

        # @!method initialize(email:, hs_customer_agent_context:, first_name: nil, last_name: nil)
        #   Some parameter documentations has been truncated, see
        #   {HubSpotSDK::Models::Conversations::IdentificationTokenGenerationRequest} for
        #   more details.
        #
        #   @param email [String] The email of the visitor that you wish to identify
        #
        #   @param hs_customer_agent_context [Hash{Symbol=>String}]
        #
        #   @param first_name [String] The first name of the visitor that you wish to identify. This value will only be
        #
        #   @param last_name [String] The last name of the visitor that you wish to identify. This value will only be
      end
    end
  end
end
