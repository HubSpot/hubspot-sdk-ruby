# typed: strong

module HubSpotSDK
  module Models
    module Crm
      module Extensions
        class CardFetchBody < HubSpotSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                HubSpotSDK::Crm::Extensions::CardFetchBody,
                HubSpotSDK::Internal::AnyHash
              )
            end

          # A deprecated field to determine the type of card returned.
          sig do
            returns(
              HubSpotSDK::Crm::Extensions::CardFetchBody::CardType::OrSymbol
            )
          end
          attr_accessor :card_type

          # An array of CRM object types where this card should be displayed. HubSpot will
          # call your data fetch URL whenever a user visits a record page of the types
          # defined here.
          sig do
            returns(T::Array[HubSpotSDK::Crm::Extensions::CardObjectTypeBody])
          end
          attr_accessor :object_types

          # URL to a service endpoints that will respond with card details. HubSpot will
          # call this endpoint each time a user visits a CRM record page where this card
          # should be displayed.
          sig { returns(String) }
          attr_accessor :target_url

          # A deprecated field to specify serverless functionality with the card
          sig { returns(T.nilable(String)) }
          attr_reader :serverless_function

          sig { params(serverless_function: String).void }
          attr_writer :serverless_function

          sig do
            params(
              card_type:
                HubSpotSDK::Crm::Extensions::CardFetchBody::CardType::OrSymbol,
              object_types:
                T::Array[
                  HubSpotSDK::Crm::Extensions::CardObjectTypeBody::OrHash
                ],
              target_url: String,
              serverless_function: String
            ).returns(T.attached_class)
          end
          def self.new(
            # A deprecated field to determine the type of card returned.
            card_type:,
            # An array of CRM object types where this card should be displayed. HubSpot will
            # call your data fetch URL whenever a user visits a record page of the types
            # defined here.
            object_types:,
            # URL to a service endpoints that will respond with card details. HubSpot will
            # call this endpoint each time a user visits a CRM record page where this card
            # should be displayed.
            target_url:,
            # A deprecated field to specify serverless functionality with the card
            serverless_function: nil
          )
          end

          sig do
            override.returns(
              {
                card_type:
                  HubSpotSDK::Crm::Extensions::CardFetchBody::CardType::OrSymbol,
                object_types:
                  T::Array[HubSpotSDK::Crm::Extensions::CardObjectTypeBody],
                target_url: String,
                serverless_function: String
              }
            )
          end
          def to_hash
          end

          # A deprecated field to determine the type of card returned.
          module CardType
            extend HubSpotSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  HubSpotSDK::Crm::Extensions::CardFetchBody::CardType
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            EXTERNAL =
              T.let(
                :EXTERNAL,
                HubSpotSDK::Crm::Extensions::CardFetchBody::CardType::TaggedSymbol
              )
            SERVERLESS =
              T.let(
                :SERVERLESS,
                HubSpotSDK::Crm::Extensions::CardFetchBody::CardType::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  HubSpotSDK::Crm::Extensions::CardFetchBody::CardType::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end
      end
    end
  end
end
