# frozen_string_literal: true

module HubspotSDK
  module Models
    module CRM
      module Extensions
        class CardFetchBodyPatch < HubspotSDK::Internal::Type::BaseModel
          # @!attribute object_types
          #   An array of CRM object types where this card should be displayed. HubSpot will
          #   call your target URL whenever a user visits a record page of the types defined
          #   here.
          #
          #   @return [Array<HubspotSDK::Models::CRM::Extensions::CardObjectTypeBody>]
          required :object_types,
                   -> {
                     HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::CRM::Extensions::CardObjectTypeBody]
                   },
                   api_name: :objectTypes

          # @!attribute card_type
          #
          #   @return [Symbol, HubspotSDK::Models::CRM::Extensions::CardFetchBodyPatch::CardType, nil]
          optional :card_type,
                   enum: -> { HubspotSDK::CRM::Extensions::CardFetchBodyPatch::CardType },
                   api_name: :cardType

          # @!attribute serverless_function
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
          #   {HubspotSDK::Models::CRM::Extensions::CardFetchBodyPatch} for more details.
          #
          #   Variant of CardFetchBody with fields as optional for patches
          #
          #   @param object_types [Array<HubspotSDK::Models::CRM::Extensions::CardObjectTypeBody>] An array of CRM object types where this card should be displayed. HubSpot will c
          #
          #   @param card_type [Symbol, HubspotSDK::Models::CRM::Extensions::CardFetchBodyPatch::CardType]
          #
          #   @param serverless_function [String]
          #
          #   @param target_url [String] URL to a service endpoint that will respond with details for this card. HubSpot

          # @see HubspotSDK::Models::CRM::Extensions::CardFetchBodyPatch#card_type
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
