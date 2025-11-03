# typed: strong

module HubspotSDK
  module Models
    module Crm
      module Extensions
        class CardObjectTypeBody < HubspotSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                HubspotSDK::Crm::Extensions::CardObjectTypeBody,
                HubspotSDK::Internal::AnyHash
              )
            end

          # A CRM object type where this card should be displayed.
          sig do
            returns(
              HubspotSDK::Crm::Extensions::CardObjectTypeBody::Name::OrSymbol
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
                HubspotSDK::Crm::Extensions::CardObjectTypeBody::Name::OrSymbol,
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
                  HubspotSDK::Crm::Extensions::CardObjectTypeBody::Name::OrSymbol,
                properties_to_send: T::Array[String]
              }
            )
          end
          def to_hash
          end

          # A CRM object type where this card should be displayed.
          module Name
            extend HubspotSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  HubspotSDK::Crm::Extensions::CardObjectTypeBody::Name
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            CONTACTS =
              T.let(
                :contacts,
                HubspotSDK::Crm::Extensions::CardObjectTypeBody::Name::TaggedSymbol
              )
            DEALS =
              T.let(
                :deals,
                HubspotSDK::Crm::Extensions::CardObjectTypeBody::Name::TaggedSymbol
              )
            COMPANIES =
              T.let(
                :companies,
                HubspotSDK::Crm::Extensions::CardObjectTypeBody::Name::TaggedSymbol
              )
            TICKETS =
              T.let(
                :tickets,
                HubspotSDK::Crm::Extensions::CardObjectTypeBody::Name::TaggedSymbol
              )
            MARKETING_EVENTS =
              T.let(
                :marketing_events,
                HubspotSDK::Crm::Extensions::CardObjectTypeBody::Name::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  HubspotSDK::Crm::Extensions::CardObjectTypeBody::Name::TaggedSymbol
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
