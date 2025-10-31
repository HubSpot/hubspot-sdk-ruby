# typed: strong

module HubspotSDK
  module Models
    module Marketing
      class LegalConsentOptionsNone < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Marketing::LegalConsentOptionsNone,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig do
          returns(
            HubspotSDK::Marketing::LegalConsentOptionsNone::Type::OrSymbol
          )
        end
        attr_accessor :type

        sig do
          params(
            type: HubspotSDK::Marketing::LegalConsentOptionsNone::Type::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(type:)
        end

        sig do
          override.returns(
            {
              type:
                HubspotSDK::Marketing::LegalConsentOptionsNone::Type::OrSymbol
            }
          )
        end
        def to_hash
        end

        module Type
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubspotSDK::Marketing::LegalConsentOptionsNone::Type
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          NONE =
            T.let(
              :none,
              HubspotSDK::Marketing::LegalConsentOptionsNone::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Marketing::LegalConsentOptionsNone::Type::TaggedSymbol
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
