# typed: strong

module HubspotSDK
  module Models
    module Automation
      class APIContactPropertyAnchor < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Automation::APIContactPropertyAnchor,
              HubspotSDK::Internal::AnyHash
            )
          end

        # A date property on the contact to use as the anchor point of this workflow.
        sig { returns(String) }
        attr_accessor :contact_property

        # The type of event anchor this is, can be: "CONTACT_PROPERTY_ANCHOR" or
        # "STATIC_DATE_ANCHOR"
        sig do
          returns(
            HubspotSDK::Automation::APIContactPropertyAnchor::Type::OrSymbol
          )
        end
        attr_accessor :type

        sig do
          params(
            contact_property: String,
            type:
              HubspotSDK::Automation::APIContactPropertyAnchor::Type::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          # A date property on the contact to use as the anchor point of this workflow.
          contact_property:,
          # The type of event anchor this is, can be: "CONTACT_PROPERTY_ANCHOR" or
          # "STATIC_DATE_ANCHOR"
          type:
        )
        end

        sig do
          override.returns(
            {
              contact_property: String,
              type:
                HubspotSDK::Automation::APIContactPropertyAnchor::Type::OrSymbol
            }
          )
        end
        def to_hash
        end

        # The type of event anchor this is, can be: "CONTACT_PROPERTY_ANCHOR" or
        # "STATIC_DATE_ANCHOR"
        module Type
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubspotSDK::Automation::APIContactPropertyAnchor::Type
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CONTACT_PROPERTY_ANCHOR =
            T.let(
              :CONTACT_PROPERTY_ANCHOR,
              HubspotSDK::Automation::APIContactPropertyAnchor::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Automation::APIContactPropertyAnchor::Type::TaggedSymbol
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
