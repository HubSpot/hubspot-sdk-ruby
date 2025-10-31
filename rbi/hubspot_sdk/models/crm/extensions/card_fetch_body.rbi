# typed: strong

module HubspotSDK
  module Models
    module CRM
      module Extensions
        class CardFetchBody < HubspotSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                HubspotSDK::CRM::Extensions::CardFetchBody,
                HubspotSDK::Internal::AnyHash
              )
            end

          # An array of CRM object types where this card should be displayed. HubSpot will
          # call your data fetch URL whenever a user visits a record page of the types
          # defined here.
          sig do
            returns(T::Array[HubspotSDK::CRM::Extensions::CardObjectTypeBody])
          end
          attr_accessor :object_types

          # URL to a service endpoints that will respond with card details. HubSpot will
          # call this endpoint each time a user visits a CRM record page where this card
          # should be displayed.
          sig { returns(String) }
          attr_accessor :target_url

          sig do
            returns(
              T.nilable(
                HubspotSDK::CRM::Extensions::CardFetchBody::CardType::OrSymbol
              )
            )
          end
          attr_reader :card_type

          sig do
            params(
              card_type:
                HubspotSDK::CRM::Extensions::CardFetchBody::CardType::OrSymbol
            ).void
          end
          attr_writer :card_type

          sig { returns(T.nilable(String)) }
          attr_reader :serverless_function

          sig { params(serverless_function: String).void }
          attr_writer :serverless_function

          # Configuration for this card's data fetch request.
          sig do
            params(
              object_types:
                T::Array[
                  HubspotSDK::CRM::Extensions::CardObjectTypeBody::OrHash
                ],
              target_url: String,
              card_type:
                HubspotSDK::CRM::Extensions::CardFetchBody::CardType::OrSymbol,
              serverless_function: String
            ).returns(T.attached_class)
          end
          def self.new(
            # An array of CRM object types where this card should be displayed. HubSpot will
            # call your data fetch URL whenever a user visits a record page of the types
            # defined here.
            object_types:,
            # URL to a service endpoints that will respond with card details. HubSpot will
            # call this endpoint each time a user visits a CRM record page where this card
            # should be displayed.
            target_url:,
            card_type: nil,
            serverless_function: nil
          )
          end

          sig do
            override.returns(
              {
                object_types:
                  T::Array[HubspotSDK::CRM::Extensions::CardObjectTypeBody],
                target_url: String,
                card_type:
                  HubspotSDK::CRM::Extensions::CardFetchBody::CardType::OrSymbol,
                serverless_function: String
              }
            )
          end
          def to_hash
          end

          module CardType
            extend HubspotSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  HubspotSDK::CRM::Extensions::CardFetchBody::CardType
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            EXTERNAL =
              T.let(
                :EXTERNAL,
                HubspotSDK::CRM::Extensions::CardFetchBody::CardType::TaggedSymbol
              )
            SERVERLESS =
              T.let(
                :SERVERLESS,
                HubspotSDK::CRM::Extensions::CardFetchBody::CardType::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  HubspotSDK::CRM::Extensions::CardFetchBody::CardType::TaggedSymbol
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
