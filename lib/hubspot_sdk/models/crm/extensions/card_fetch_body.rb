# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Crm
      module Extensions
        class CardFetchBody < HubSpotSDK::Internal::Type::BaseModel
          # @!attribute card_type
          #   A deprecated field to determine the type of card returned.
          #
          #   @return [Symbol, HubSpotSDK::Models::Crm::Extensions::CardFetchBody::CardType]
          required :card_type,
                   enum: -> { HubSpotSDK::Crm::Extensions::CardFetchBody::CardType },
                   api_name: :cardType

          # @!attribute object_types
          #   An array of CRM object types where this card should be displayed. HubSpot will
          #   call your data fetch URL whenever a user visits a record page of the types
          #   defined here.
          #
          #   @return [Array<HubSpotSDK::Models::Crm::Extensions::CardObjectTypeBody>]
          required :object_types,
                   -> {
                     HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Crm::Extensions::CardObjectTypeBody]
                   },
                   api_name: :objectTypes

          # @!attribute target_url
          #   URL to a service endpoints that will respond with card details. HubSpot will
          #   call this endpoint each time a user visits a CRM record page where this card
          #   should be displayed.
          #
          #   @return [String]
          required :target_url, String, api_name: :targetUrl

          # @!attribute serverless_function
          #   A deprecated field to specify serverless functionality with the card
          #
          #   @return [String, nil]
          optional :serverless_function, String, api_name: :serverlessFunction

          # @!method initialize(card_type:, object_types:, target_url:, serverless_function: nil)
          #   Some parameter documentations has been truncated, see
          #   {HubSpotSDK::Models::Crm::Extensions::CardFetchBody} for more details.
          #
          #   @param card_type [Symbol, HubSpotSDK::Models::Crm::Extensions::CardFetchBody::CardType] A deprecated field to determine the type of card returned.
          #
          #   @param object_types [Array<HubSpotSDK::Models::Crm::Extensions::CardObjectTypeBody>] An array of CRM object types where this card should be displayed. HubSpot will c
          #
          #   @param target_url [String] URL to a service endpoints that will respond with card details. HubSpot will cal
          #
          #   @param serverless_function [String] A deprecated field to specify serverless functionality with the card

          # A deprecated field to determine the type of card returned.
          #
          # @see HubSpotSDK::Models::Crm::Extensions::CardFetchBody#card_type
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
