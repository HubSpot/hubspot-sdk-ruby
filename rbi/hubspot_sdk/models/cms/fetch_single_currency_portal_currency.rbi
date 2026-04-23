# typed: strong

module HubSpotSDK
  module Models
    module Cms
      class FetchSingleCurrencyPortalCurrency < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Cms::FetchSingleCurrencyPortalCurrency,
              HubSpotSDK::Internal::AnyHash
            )
          end

        sig do
          returns(
            HubSpotSDK::Cms::FetchSingleCurrencyPortalCurrency::Operator::OrSymbol
          )
        end
        attr_accessor :operator

        sig { returns(T.nilable(String)) }
        attr_reader :property_name

        sig { params(property_name: String).void }
        attr_writer :property_name

        sig { returns(T.nilable(String)) }
        attr_reader :value

        sig { params(value: String).void }
        attr_writer :value

        sig do
          params(
            operator:
              HubSpotSDK::Cms::FetchSingleCurrencyPortalCurrency::Operator::OrSymbol,
            property_name: String,
            value: String
          ).returns(T.attached_class)
        end
        def self.new(operator:, property_name: nil, value: nil)
        end

        sig do
          override.returns(
            {
              operator:
                HubSpotSDK::Cms::FetchSingleCurrencyPortalCurrency::Operator::OrSymbol,
              property_name: String,
              value: String
            }
          )
        end
        def to_hash
        end

        module Operator
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubSpotSDK::Cms::FetchSingleCurrencyPortalCurrency::Operator
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          FETCH_SINGLE_CURRENCY_PORTAL_CURRENCY =
            T.let(
              :FETCH_SINGLE_CURRENCY_PORTAL_CURRENCY,
              HubSpotSDK::Cms::FetchSingleCurrencyPortalCurrency::Operator::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Cms::FetchSingleCurrencyPortalCurrency::Operator::TaggedSymbol
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
