# frozen_string_literal: true

module HubspotSDK
  module Models
    module CRM
      module Extensions
        class CardFetchBody < HubspotSDK::Internal::Type::BaseModel
          # @!attribute object_types
          #   An array of CRM object types where this card should be displayed. HubSpot will
          #   call your data fetch URL whenever a user visits a record page of the types
          #   defined here.
          #
          #   @return [Array<HubspotSDK::Models::CRM::Extensions::CardObjectTypeBody>]
          required :object_types,
                   -> {
                     HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::CRM::Extensions::CardObjectTypeBody]
                   },
                   api_name: :objectTypes

          # @!attribute target_url
          #   URL to a service endpoints that will respond with card details. HubSpot will
          #   call this endpoint each time a user visits a CRM record page where this card
          #   should be displayed.
          #
          #   @return [String]
          required :target_url, String, api_name: :targetUrl

          # @!attribute card_type
          #
          #   @return [Symbol, HubspotSDK::Models::CRM::Extensions::CardFetchBody::CardType, nil]
          optional :card_type,
                   enum: -> { HubspotSDK::CRM::Extensions::CardFetchBody::CardType },
                   api_name: :cardType

          # @!attribute serverless_function
          #
          #   @return [String, nil]
          optional :serverless_function, String, api_name: :serverlessFunction

          # @!method initialize(object_types:, target_url:, card_type: nil, serverless_function: nil)
          #   Some parameter documentations has been truncated, see
          #   {HubspotSDK::Models::CRM::Extensions::CardFetchBody} for more details.
          #
          #   Configuration for this card's data fetch request.
          #
          #   @param object_types [Array<HubspotSDK::Models::CRM::Extensions::CardObjectTypeBody>] An array of CRM object types where this card should be displayed. HubSpot will c
          #
          #   @param target_url [String] URL to a service endpoints that will respond with card details. HubSpot will cal
          #
          #   @param card_type [Symbol, HubspotSDK::Models::CRM::Extensions::CardFetchBody::CardType]
          #
          #   @param serverless_function [String]

          # @see HubspotSDK::Models::CRM::Extensions::CardFetchBody#card_type
          module CardType
            extend HubspotSDK::Internal::Type::Enum

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
