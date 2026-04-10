# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Crm
      module Extensions
        class CardFetchBodyPatch < HubSpotSDK::Internal::Type::BaseModel
          # @!attribute object_types
          #   An array of CRM object types where this card should be displayed. HubSpot will
          #   call your target URL whenever a user visits a record page of the types defined
          #   here.
          #
          #   @return [Array<HubSpotSDK::Models::Crm::Extensions::CardObjectTypeBody>]
          required :object_types,
                   -> {
                     HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Crm::Extensions::CardObjectTypeBody]
                   },
                   api_name: :objectTypes

          # @!attribute card_type
          #   A deprecated field to determine the type of card returned.
          #
          #   @return [Symbol, HubSpotSDK::Models::Crm::Extensions::CardFetchBodyPatch::CardType, nil]
          optional :card_type,
                   enum: -> { HubSpotSDK::Crm::Extensions::CardFetchBodyPatch::CardType },
                   api_name: :cardType

          # @!attribute serverless_function
          #   A deprecated field to specify serverless functionality with the card
          #
          #   @return [String, nil]
          optional :serverless_function, String, api_name: :serverlessFunction

          # @!attribute target_url
          #   URL to a service endpoint that will respond with details for this card. HubSpot
          #   will call this endpoint each time a user visits a CRM record page where this
          #   card should be displayed.
          #
          #   @return [String, nil]
          optional :target_url, String, api_name: :targetUrl

          # @!method initialize(object_types:, card_type: nil, serverless_function: nil, target_url: nil)
          #   Some parameter documentations has been truncated, see
          #   {HubSpotSDK::Models::Crm::Extensions::CardFetchBodyPatch} for more details.
          #
          #   @param object_types [Array<HubSpotSDK::Models::Crm::Extensions::CardObjectTypeBody>] An array of CRM object types where this card should be displayed. HubSpot will c
          #
          #   @param card_type [Symbol, HubSpotSDK::Models::Crm::Extensions::CardFetchBodyPatch::CardType] A deprecated field to determine the type of card returned.
          #
          #   @param serverless_function [String] A deprecated field to specify serverless functionality with the card
          #
          #   @param target_url [String] URL to a service endpoint that will respond with details for this card. HubSpot

          # A deprecated field to determine the type of card returned.
          #
          # @see HubSpotSDK::Models::Crm::Extensions::CardFetchBodyPatch#card_type
          module CardType
            extend HubSpotSDK::Internal::Type::Enum

            EXTERNAL = :EXTERNAL
            SERVERLESS = :SERVERLESS

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end
      end
    end
  end
end
