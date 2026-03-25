# typed: strong

module HubspotSDK
  module Models
    module Crm
      module Extensions
        class CardDisplayBody < HubspotSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                HubspotSDK::Crm::Extensions::CardDisplayBody,
                HubspotSDK::Internal::AnyHash
              )
            end

          # Card display properties. These will will be rendered as "label : value" pairs in
          # the card UI. See the [example card](#) in the overview docs for more details.
          sig do
            returns(T::Array[HubspotSDK::Crm::Extensions::CardDisplayProperty])
          end
          attr_accessor :properties

          sig do
            params(
              properties:
                T::Array[
                  HubspotSDK::Crm::Extensions::CardDisplayProperty::OrHash
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
                  T::Array[HubspotSDK::Crm::Extensions::CardDisplayProperty]
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
