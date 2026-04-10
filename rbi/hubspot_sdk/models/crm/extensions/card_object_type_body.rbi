# typed: strong

module HubSpotSDK
  module Models
    module Crm
      module Extensions
        class CardObjectTypeBody < HubSpotSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                HubSpotSDK::Crm::Extensions::CardObjectTypeBody,
                HubSpotSDK::Internal::AnyHash
              )
            end

          # A CRM object type where this card should be displayed.
          sig do
            returns(
              HubSpotSDK::Crm::Extensions::CardObjectTypeBody::Name::OrSymbol
            )
          end
          attr_accessor :name

          # An array of properties that should be sent to this card's target URL when the
          # data fetch request is made. Must be valid properties for the corresponding CRM
          # object type.
          sig { returns(T::Array[String]) }
          attr_accessor :properties_to_send

          sig do
            params(
              name:
                HubSpotSDK::Crm::Extensions::CardObjectTypeBody::Name::OrSymbol,
              properties_to_send: T::Array[String]
            ).returns(T.attached_class)
          end
          def self.new(
            # A CRM object type where this card should be displayed.
            name:,
            # An array of properties that should be sent to this card's target URL when the
            # data fetch request is made. Must be valid properties for the corresponding CRM
            # object type.
            properties_to_send:
          )
          end

          sig do
            override.returns(
              {
                name:
                  HubSpotSDK::Crm::Extensions::CardObjectTypeBody::Name::OrSymbol,
                properties_to_send: T::Array[String]
              }
            )
          end
          def to_hash
          end

          # A CRM object type where this card should be displayed.
          module Name
            extend HubSpotSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  HubSpotSDK::Crm::Extensions::CardObjectTypeBody::Name
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            COMPANIES =
              T.let(
                :companies,
                HubSpotSDK::Crm::Extensions::CardObjectTypeBody::Name::TaggedSymbol
              )
            CONTACTS =
              T.let(
                :contacts,
                HubSpotSDK::Crm::Extensions::CardObjectTypeBody::Name::TaggedSymbol
              )
            DEALS =
              T.let(
                :deals,
                HubSpotSDK::Crm::Extensions::CardObjectTypeBody::Name::TaggedSymbol
              )
            MARKETING_EVENTS =
              T.let(
                :marketing_events,
                HubSpotSDK::Crm::Extensions::CardObjectTypeBody::Name::TaggedSymbol
              )
            TICKETS =
              T.let(
                :tickets,
                HubSpotSDK::Crm::Extensions::CardObjectTypeBody::Name::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  HubSpotSDK::Crm::Extensions::CardObjectTypeBody::Name::TaggedSymbol
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
