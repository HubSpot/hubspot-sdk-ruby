# typed: strong

module HubSpotSDK
  module Models
    module Crm
      module Extensions
        class CardFetchBodyPatch < HubSpotSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                HubSpotSDK::Crm::Extensions::CardFetchBodyPatch,
                HubSpotSDK::Internal::AnyHash
              )
            end

          # An array of CRM object types where this card should be displayed. HubSpot will
          # call your target URL whenever a user visits a record page of the types defined
          # here.
          sig do
            returns(T::Array[HubSpotSDK::Crm::Extensions::CardObjectTypeBody])
          end
          attr_accessor :object_types

          # A deprecated field to determine the type of card returned.
          sig do
            returns(
              T.nilable(
                HubSpotSDK::Crm::Extensions::CardFetchBodyPatch::CardType::OrSymbol
              )
            )
          end
          attr_reader :card_type

          sig do
            params(
              card_type:
                HubSpotSDK::Crm::Extensions::CardFetchBodyPatch::CardType::OrSymbol
            ).void
          end
          attr_writer :card_type

          # A deprecated field to specify serverless functionality with the card
          sig { returns(T.nilable(String)) }
          attr_reader :serverless_function

          sig { params(serverless_function: String).void }
          attr_writer :serverless_function

          # URL to a service endpoint that will respond with details for this card. HubSpot
          # will call this endpoint each time a user visits a CRM record page where this
          # card should be displayed.
          sig { returns(T.nilable(String)) }
          attr_reader :target_url

          sig { params(target_url: String).void }
          attr_writer :target_url

          sig do
            params(
              object_types:
                T::Array[
                  HubSpotSDK::Crm::Extensions::CardObjectTypeBody::OrHash
                ],
              card_type:
                HubSpotSDK::Crm::Extensions::CardFetchBodyPatch::CardType::OrSymbol,
              serverless_function: String,
              target_url: String
            ).returns(T.attached_class)
          end
          def self.new(
            # An array of CRM object types where this card should be displayed. HubSpot will
            # call your target URL whenever a user visits a record page of the types defined
            # here.
            object_types:,
            # A deprecated field to determine the type of card returned.
            card_type: nil,
            # A deprecated field to specify serverless functionality with the card
            serverless_function: nil,
            # URL to a service endpoint that will respond with details for this card. HubSpot
            # will call this endpoint each time a user visits a CRM record page where this
            # card should be displayed.
            target_url: nil
          )
          end

          sig do
            override.returns(
              {
                object_types:
                  T::Array[HubSpotSDK::Crm::Extensions::CardObjectTypeBody],
                card_type:
                  HubSpotSDK::Crm::Extensions::CardFetchBodyPatch::CardType::OrSymbol,
                serverless_function: String,
                target_url: String
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
                  HubSpotSDK::Crm::Extensions::CardFetchBodyPatch::CardType
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            EXTERNAL =
              T.let(
                :EXTERNAL,
                HubSpotSDK::Crm::Extensions::CardFetchBodyPatch::CardType::TaggedSymbol
              )
            SERVERLESS =
              T.let(
                :SERVERLESS,
                HubSpotSDK::Crm::Extensions::CardFetchBodyPatch::CardType::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  HubSpotSDK::Crm::Extensions::CardFetchBodyPatch::CardType::TaggedSymbol
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
