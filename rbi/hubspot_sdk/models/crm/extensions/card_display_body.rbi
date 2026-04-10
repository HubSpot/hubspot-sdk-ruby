# typed: strong

module HubSpotSDK
  module Models
    module Crm
      module Extensions
        class CardDisplayBody < HubSpotSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                HubSpotSDK::Crm::Extensions::CardDisplayBody,
                HubSpotSDK::Internal::AnyHash
              )
            end

          # Card display properties. These will will be rendered as "label : value" pairs in
          # the card UI. See the [example card](#) in the overview docs for more details.
          sig do
            returns(T::Array[HubSpotSDK::Crm::Extensions::CardDisplayProperty])
          end
          attr_accessor :properties

          sig do
            params(
              properties:
                T::Array[
                  HubSpotSDK::Crm::Extensions::CardDisplayProperty::OrHash
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
                  T::Array[HubSpotSDK::Crm::Extensions::CardDisplayProperty]
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
