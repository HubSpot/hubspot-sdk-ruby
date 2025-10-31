# typed: strong

module HubspotSDK
  module Models
    module CRM
      module Extensions
        class CardFetchBodyPatch < HubspotSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                HubspotSDK::CRM::Extensions::CardFetchBodyPatch,
                HubspotSDK::Internal::AnyHash
              )
            end

          # An array of CRM object types where this card should be displayed. HubSpot will
          # call your target URL whenever a user visits a record page of the types defined
          # here.
          sig do
            returns(T::Array[HubspotSDK::CRM::Extensions::CardObjectTypeBody])
          end
          attr_accessor :object_types

          sig do
            returns(
              T.nilable(
                HubspotSDK::CRM::Extensions::CardFetchBodyPatch::CardType::OrSymbol
              )
            )
          end
          attr_reader :card_type

          sig do
            params(
              card_type:
                HubspotSDK::CRM::Extensions::CardFetchBodyPatch::CardType::OrSymbol
            ).void
          end
          attr_writer :card_type

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

          # Variant of CardFetchBody with fields as optional for patches
          sig do
            params(
              object_types:
                T::Array[
                  HubspotSDK::CRM::Extensions::CardObjectTypeBody::OrHash
                ],
              card_type:
                HubspotSDK::CRM::Extensions::CardFetchBodyPatch::CardType::OrSymbol,
              serverless_function: String,
              target_url: String
            ).returns(T.attached_class)
          end
          def self.new(
            # An array of CRM object types where this card should be displayed. HubSpot will
            # call your target URL whenever a user visits a record page of the types defined
            # here.
            object_types:,
            card_type: nil,
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
                  T::Array[HubspotSDK::CRM::Extensions::CardObjectTypeBody],
                card_type:
                  HubspotSDK::CRM::Extensions::CardFetchBodyPatch::CardType::OrSymbol,
                serverless_function: String,
                target_url: String
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
                  HubspotSDK::CRM::Extensions::CardFetchBodyPatch::CardType
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            EXTERNAL =
              T.let(
                :EXTERNAL,
                HubspotSDK::CRM::Extensions::CardFetchBodyPatch::CardType::TaggedSymbol
              )
            SERVERLESS =
              T.let(
                :SERVERLESS,
                HubspotSDK::CRM::Extensions::CardFetchBodyPatch::CardType::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  HubspotSDK::CRM::Extensions::CardFetchBodyPatch::CardType::TaggedSymbol
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
