# typed: strong

module HubspotSDK
  module Models
    module CRM
      module Extensions
        class CardDisplayBody < HubspotSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                HubspotSDK::CRM::Extensions::CardDisplayBody,
                HubspotSDK::Internal::AnyHash
              )
            end

          # Card display properties. These will will be rendered as "label : value" pairs in
          # the card UI. See the [example card](#) in the overview docs for more details.
          sig do
            returns(T::Array[HubspotSDK::CRM::Extensions::CardDisplayProperty])
          end
          attr_accessor :properties

          # Configuration for displayed info on a card
          sig do
            params(
              properties:
                T::Array[
                  HubspotSDK::CRM::Extensions::CardDisplayProperty::OrHash
                ]
            ).returns(T.attached_class)
          end
          def self.new(
            # Card display properties. These will will be rendered as "label : value" pairs in
            # the card UI. See the [example card](#) in the overview docs for more details.
            properties:
          )
          end

          sig do
            override.returns(
              {
                properties:
                  T::Array[HubspotSDK::CRM::Extensions::CardDisplayProperty]
              }
            )
          end
          def to_hash
          end
        end
      end
    end
  end
end
