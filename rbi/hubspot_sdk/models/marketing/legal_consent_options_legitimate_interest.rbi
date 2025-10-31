# typed: strong

module HubspotSDK
  module Models
    module Marketing
      class LegalConsentOptionsLegitimateInterest < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Marketing::LegalConsentOptionsLegitimateInterest,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig do
          returns(
            HubspotSDK::Marketing::LegalConsentOptionsLegitimateInterest::LawfulBasis::OrSymbol
          )
        end
        attr_accessor :lawful_basis

        sig { returns(String) }
        attr_accessor :privacy_text

        sig { returns(T::Array[Integer]) }
        attr_accessor :subscription_type_ids

        sig do
          returns(
            HubspotSDK::Marketing::LegalConsentOptionsLegitimateInterest::Type::OrSymbol
          )
        end
        attr_accessor :type

        sig do
          params(
            lawful_basis:
              HubspotSDK::Marketing::LegalConsentOptionsLegitimateInterest::LawfulBasis::OrSymbol,
            privacy_text: String,
            subscription_type_ids: T::Array[Integer],
            type:
              HubspotSDK::Marketing::LegalConsentOptionsLegitimateInterest::Type::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          lawful_basis:,
          privacy_text:,
          subscription_type_ids:,
          type:
        )
        end

        sig do
          override.returns(
            {
              lawful_basis:
                HubspotSDK::Marketing::LegalConsentOptionsLegitimateInterest::LawfulBasis::OrSymbol,
              privacy_text: String,
              subscription_type_ids: T::Array[Integer],
              type:
                HubspotSDK::Marketing::LegalConsentOptionsLegitimateInterest::Type::OrSymbol
            }
          )
        end
        def to_hash
        end

        module LawfulBasis
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubspotSDK::Marketing::LegalConsentOptionsLegitimateInterest::LawfulBasis
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          LEAD =
            T.let(
              :lead,
              HubspotSDK::Marketing::LegalConsentOptionsLegitimateInterest::LawfulBasis::TaggedSymbol
            )
          CLIENT =
            T.let(
              :client,
              HubspotSDK::Marketing::LegalConsentOptionsLegitimateInterest::LawfulBasis::TaggedSymbol
            )
          OTHER =
            T.let(
              :other,
              HubspotSDK::Marketing::LegalConsentOptionsLegitimateInterest::LawfulBasis::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Marketing::LegalConsentOptionsLegitimateInterest::LawfulBasis::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        module Type
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubspotSDK::Marketing::LegalConsentOptionsLegitimateInterest::Type
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          LEGITIMATE_INTEREST =
            T.let(
              :legitimate_interest,
              HubspotSDK::Marketing::LegalConsentOptionsLegitimateInterest::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Marketing::LegalConsentOptionsLegitimateInterest::Type::TaggedSymbol
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
