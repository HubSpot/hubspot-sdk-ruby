# typed: strong

module HubSpotSDK
  module Models
    module Settings
      module Currencies
        class ExchangeRateListExchangeRatesParams < HubSpotSDK::Internal::Type::BaseModel
          extend HubSpotSDK::Internal::Type::RequestParameters::Converter
          include HubSpotSDK::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams,
                HubSpotSDK::Internal::AnyHash
              )
            end

          # The paging cursor token of the last successfully read resource will be returned
          # as the `paging.next.after` JSON property of a paged response containing more
          # results.
          sig { returns(T.nilable(String)) }
          attr_reader :after

          sig { params(after: String).void }
          attr_writer :after

          sig do
            returns(
              T.nilable(
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::OrSymbol
              )
            )
          end
          attr_reader :from_currency_code

          sig do
            params(
              from_currency_code:
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::OrSymbol
            ).void
          end
          attr_writer :from_currency_code

          # The maximum number of results to display per page.
          sig { returns(T.nilable(Integer)) }
          attr_reader :limit

          sig { params(limit: Integer).void }
          attr_writer :limit

          sig do
            returns(
              T.nilable(
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::OrSymbol
              )
            )
          end
          attr_reader :to_currency_code

          sig do
            params(
              to_currency_code:
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::OrSymbol
            ).void
          end
          attr_writer :to_currency_code

          sig do
            params(
              after: String,
              from_currency_code:
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::OrSymbol,
              limit: Integer,
              to_currency_code:
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::OrSymbol,
              request_options: HubSpotSDK::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            # The paging cursor token of the last successfully read resource will be returned
            # as the `paging.next.after` JSON property of a paged response containing more
            # results.
            after: nil,
            from_currency_code: nil,
            # The maximum number of results to display per page.
            limit: nil,
            to_currency_code: nil,
            request_options: {}
          )
          end

          sig do
            override.returns(
              {
                after: String,
                from_currency_code:
                  HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::OrSymbol,
                limit: Integer,
                to_currency_code:
                  HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::OrSymbol,
                request_options: HubSpotSDK::RequestOptions
              }
            )
          end
          def to_hash
          end

          module FromCurrencyCode
            extend HubSpotSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            AED =
              T.let(
                :AED,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            AFN =
              T.let(
                :AFN,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            ALL =
              T.let(
                :ALL,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            AMD =
              T.let(
                :AMD,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            ANG =
              T.let(
                :ANG,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            AOA =
              T.let(
                :AOA,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            ARS =
              T.let(
                :ARS,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            AUD =
              T.let(
                :AUD,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            AWG =
              T.let(
                :AWG,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            AZN =
              T.let(
                :AZN,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            BAM =
              T.let(
                :BAM,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            BBD =
              T.let(
                :BBD,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            BDT =
              T.let(
                :BDT,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            BGN =
              T.let(
                :BGN,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            BHD =
              T.let(
                :BHD,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            BIF =
              T.let(
                :BIF,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            BMD =
              T.let(
                :BMD,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            BND =
              T.let(
                :BND,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            BOB =
              T.let(
                :BOB,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            BOV =
              T.let(
                :BOV,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            BRL =
              T.let(
                :BRL,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            BSD =
              T.let(
                :BSD,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            BTN =
              T.let(
                :BTN,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            BWP =
              T.let(
                :BWP,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            BYN =
              T.let(
                :BYN,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            BZD =
              T.let(
                :BZD,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            CAD =
              T.let(
                :CAD,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            CDF =
              T.let(
                :CDF,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            CHE =
              T.let(
                :CHE,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            CHF =
              T.let(
                :CHF,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            CHW =
              T.let(
                :CHW,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            CLF =
              T.let(
                :CLF,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            CLP =
              T.let(
                :CLP,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            CNY =
              T.let(
                :CNY,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            COP =
              T.let(
                :COP,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            COU =
              T.let(
                :COU,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            CRC =
              T.let(
                :CRC,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            CUC =
              T.let(
                :CUC,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            CUP =
              T.let(
                :CUP,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            CVE =
              T.let(
                :CVE,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            CZK =
              T.let(
                :CZK,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            DJF =
              T.let(
                :DJF,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            DKK =
              T.let(
                :DKK,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            DOP =
              T.let(
                :DOP,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            DZD =
              T.let(
                :DZD,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            EGP =
              T.let(
                :EGP,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            ERN =
              T.let(
                :ERN,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            ETB =
              T.let(
                :ETB,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            EUR =
              T.let(
                :EUR,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            FJD =
              T.let(
                :FJD,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            FKP =
              T.let(
                :FKP,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            GBP =
              T.let(
                :GBP,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            GEL =
              T.let(
                :GEL,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            GHS =
              T.let(
                :GHS,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            GIP =
              T.let(
                :GIP,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            GMD =
              T.let(
                :GMD,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            GNF =
              T.let(
                :GNF,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            GTQ =
              T.let(
                :GTQ,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            GYD =
              T.let(
                :GYD,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            HKD =
              T.let(
                :HKD,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            HNL =
              T.let(
                :HNL,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            HRK =
              T.let(
                :HRK,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            HTG =
              T.let(
                :HTG,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            HUF =
              T.let(
                :HUF,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            IDR =
              T.let(
                :IDR,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            ILS =
              T.let(
                :ILS,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            INR =
              T.let(
                :INR,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            IQD =
              T.let(
                :IQD,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            IRR =
              T.let(
                :IRR,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            ISK =
              T.let(
                :ISK,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            JMD =
              T.let(
                :JMD,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            JOD =
              T.let(
                :JOD,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            JPY =
              T.let(
                :JPY,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            KES =
              T.let(
                :KES,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            KGS =
              T.let(
                :KGS,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            KHR =
              T.let(
                :KHR,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            KMF =
              T.let(
                :KMF,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            KPW =
              T.let(
                :KPW,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            KRW =
              T.let(
                :KRW,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            KWD =
              T.let(
                :KWD,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            KYD =
              T.let(
                :KYD,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            KZT =
              T.let(
                :KZT,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            LAK =
              T.let(
                :LAK,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            LBP =
              T.let(
                :LBP,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            LKR =
              T.let(
                :LKR,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            LRD =
              T.let(
                :LRD,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            LSL =
              T.let(
                :LSL,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            LYD =
              T.let(
                :LYD,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            MAD =
              T.let(
                :MAD,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            MDL =
              T.let(
                :MDL,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            MGA =
              T.let(
                :MGA,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            MKD =
              T.let(
                :MKD,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            MMK =
              T.let(
                :MMK,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            MNT =
              T.let(
                :MNT,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            MOP =
              T.let(
                :MOP,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            MRU =
              T.let(
                :MRU,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            MUR =
              T.let(
                :MUR,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            MVR =
              T.let(
                :MVR,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            MWK =
              T.let(
                :MWK,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            MXN =
              T.let(
                :MXN,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            MXV =
              T.let(
                :MXV,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            MYR =
              T.let(
                :MYR,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            MZN =
              T.let(
                :MZN,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            NAD =
              T.let(
                :NAD,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            NGN =
              T.let(
                :NGN,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            NIO =
              T.let(
                :NIO,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            NOK =
              T.let(
                :NOK,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            NPR =
              T.let(
                :NPR,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            NZD =
              T.let(
                :NZD,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            OMR =
              T.let(
                :OMR,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            PAB =
              T.let(
                :PAB,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            PEN =
              T.let(
                :PEN,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            PGK =
              T.let(
                :PGK,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            PHP =
              T.let(
                :PHP,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            PKR =
              T.let(
                :PKR,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            PLN =
              T.let(
                :PLN,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            PYG =
              T.let(
                :PYG,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            QAR =
              T.let(
                :QAR,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            RON =
              T.let(
                :RON,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            RSD =
              T.let(
                :RSD,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            RUB =
              T.let(
                :RUB,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            RWF =
              T.let(
                :RWF,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            SAR =
              T.let(
                :SAR,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            SBD =
              T.let(
                :SBD,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            SCR =
              T.let(
                :SCR,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            SDG =
              T.let(
                :SDG,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            SEK =
              T.let(
                :SEK,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            SGD =
              T.let(
                :SGD,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            SHP =
              T.let(
                :SHP,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            SLL =
              T.let(
                :SLL,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            SOS =
              T.let(
                :SOS,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            SRD =
              T.let(
                :SRD,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            SSP =
              T.let(
                :SSP,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            STN =
              T.let(
                :STN,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            SVC =
              T.let(
                :SVC,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            SYP =
              T.let(
                :SYP,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            SZL =
              T.let(
                :SZL,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            THB =
              T.let(
                :THB,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            TJS =
              T.let(
                :TJS,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            TMT =
              T.let(
                :TMT,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            TND =
              T.let(
                :TND,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            TOP =
              T.let(
                :TOP,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            TRY =
              T.let(
                :TRY,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            TTD =
              T.let(
                :TTD,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            TWD =
              T.let(
                :TWD,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            TZS =
              T.let(
                :TZS,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            UAH =
              T.let(
                :UAH,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            UGX =
              T.let(
                :UGX,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            USD =
              T.let(
                :USD,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            USN =
              T.let(
                :USN,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            UYI =
              T.let(
                :UYI,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            UYU =
              T.let(
                :UYU,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            UZS =
              T.let(
                :UZS,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            VEF =
              T.let(
                :VEF,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            VND =
              T.let(
                :VND,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            VUV =
              T.let(
                :VUV,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            WST =
              T.let(
                :WST,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            XAF =
              T.let(
                :XAF,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            XAG =
              T.let(
                :XAG,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            XAU =
              T.let(
                :XAU,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            XBA =
              T.let(
                :XBA,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            XBB =
              T.let(
                :XBB,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            XBC =
              T.let(
                :XBC,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            XBD =
              T.let(
                :XBD,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            XCD =
              T.let(
                :XCD,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            XDR =
              T.let(
                :XDR,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            XOF =
              T.let(
                :XOF,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            XPD =
              T.let(
                :XPD,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            XPF =
              T.let(
                :XPF,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            XPT =
              T.let(
                :XPT,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            XSU =
              T.let(
                :XSU,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            XUA =
              T.let(
                :XUA,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            YER =
              T.let(
                :YER,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            ZAR =
              T.let(
                :ZAR,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            ZMW =
              T.let(
                :ZMW,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            ZWL =
              T.let(
                :ZWL,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          module ToCurrencyCode
            extend HubSpotSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            AED =
              T.let(
                :AED,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            AFN =
              T.let(
                :AFN,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            ALL =
              T.let(
                :ALL,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            AMD =
              T.let(
                :AMD,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            ANG =
              T.let(
                :ANG,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            AOA =
              T.let(
                :AOA,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            ARS =
              T.let(
                :ARS,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            AUD =
              T.let(
                :AUD,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            AWG =
              T.let(
                :AWG,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            AZN =
              T.let(
                :AZN,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            BAM =
              T.let(
                :BAM,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            BBD =
              T.let(
                :BBD,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            BDT =
              T.let(
                :BDT,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            BGN =
              T.let(
                :BGN,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            BHD =
              T.let(
                :BHD,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            BIF =
              T.let(
                :BIF,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            BMD =
              T.let(
                :BMD,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            BND =
              T.let(
                :BND,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            BOB =
              T.let(
                :BOB,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            BOV =
              T.let(
                :BOV,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            BRL =
              T.let(
                :BRL,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            BSD =
              T.let(
                :BSD,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            BTN =
              T.let(
                :BTN,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            BWP =
              T.let(
                :BWP,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            BYN =
              T.let(
                :BYN,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            BZD =
              T.let(
                :BZD,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            CAD =
              T.let(
                :CAD,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            CDF =
              T.let(
                :CDF,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            CHE =
              T.let(
                :CHE,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            CHF =
              T.let(
                :CHF,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            CHW =
              T.let(
                :CHW,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            CLF =
              T.let(
                :CLF,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            CLP =
              T.let(
                :CLP,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            CNY =
              T.let(
                :CNY,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            COP =
              T.let(
                :COP,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            COU =
              T.let(
                :COU,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            CRC =
              T.let(
                :CRC,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            CUC =
              T.let(
                :CUC,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            CUP =
              T.let(
                :CUP,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            CVE =
              T.let(
                :CVE,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            CZK =
              T.let(
                :CZK,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            DJF =
              T.let(
                :DJF,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            DKK =
              T.let(
                :DKK,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            DOP =
              T.let(
                :DOP,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            DZD =
              T.let(
                :DZD,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            EGP =
              T.let(
                :EGP,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            ERN =
              T.let(
                :ERN,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            ETB =
              T.let(
                :ETB,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            EUR =
              T.let(
                :EUR,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            FJD =
              T.let(
                :FJD,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            FKP =
              T.let(
                :FKP,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            GBP =
              T.let(
                :GBP,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            GEL =
              T.let(
                :GEL,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            GHS =
              T.let(
                :GHS,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            GIP =
              T.let(
                :GIP,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            GMD =
              T.let(
                :GMD,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            GNF =
              T.let(
                :GNF,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            GTQ =
              T.let(
                :GTQ,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            GYD =
              T.let(
                :GYD,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            HKD =
              T.let(
                :HKD,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            HNL =
              T.let(
                :HNL,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            HRK =
              T.let(
                :HRK,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            HTG =
              T.let(
                :HTG,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            HUF =
              T.let(
                :HUF,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            IDR =
              T.let(
                :IDR,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            ILS =
              T.let(
                :ILS,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            INR =
              T.let(
                :INR,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            IQD =
              T.let(
                :IQD,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            IRR =
              T.let(
                :IRR,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            ISK =
              T.let(
                :ISK,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            JMD =
              T.let(
                :JMD,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            JOD =
              T.let(
                :JOD,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            JPY =
              T.let(
                :JPY,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            KES =
              T.let(
                :KES,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            KGS =
              T.let(
                :KGS,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            KHR =
              T.let(
                :KHR,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            KMF =
              T.let(
                :KMF,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            KPW =
              T.let(
                :KPW,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            KRW =
              T.let(
                :KRW,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            KWD =
              T.let(
                :KWD,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            KYD =
              T.let(
                :KYD,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            KZT =
              T.let(
                :KZT,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            LAK =
              T.let(
                :LAK,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            LBP =
              T.let(
                :LBP,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            LKR =
              T.let(
                :LKR,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            LRD =
              T.let(
                :LRD,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            LSL =
              T.let(
                :LSL,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            LYD =
              T.let(
                :LYD,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            MAD =
              T.let(
                :MAD,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            MDL =
              T.let(
                :MDL,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            MGA =
              T.let(
                :MGA,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            MKD =
              T.let(
                :MKD,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            MMK =
              T.let(
                :MMK,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            MNT =
              T.let(
                :MNT,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            MOP =
              T.let(
                :MOP,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            MRU =
              T.let(
                :MRU,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            MUR =
              T.let(
                :MUR,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            MVR =
              T.let(
                :MVR,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            MWK =
              T.let(
                :MWK,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            MXN =
              T.let(
                :MXN,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            MXV =
              T.let(
                :MXV,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            MYR =
              T.let(
                :MYR,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            MZN =
              T.let(
                :MZN,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            NAD =
              T.let(
                :NAD,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            NGN =
              T.let(
                :NGN,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            NIO =
              T.let(
                :NIO,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            NOK =
              T.let(
                :NOK,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            NPR =
              T.let(
                :NPR,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            NZD =
              T.let(
                :NZD,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            OMR =
              T.let(
                :OMR,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            PAB =
              T.let(
                :PAB,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            PEN =
              T.let(
                :PEN,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            PGK =
              T.let(
                :PGK,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            PHP =
              T.let(
                :PHP,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            PKR =
              T.let(
                :PKR,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            PLN =
              T.let(
                :PLN,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            PYG =
              T.let(
                :PYG,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            QAR =
              T.let(
                :QAR,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            RON =
              T.let(
                :RON,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            RSD =
              T.let(
                :RSD,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            RUB =
              T.let(
                :RUB,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            RWF =
              T.let(
                :RWF,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            SAR =
              T.let(
                :SAR,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            SBD =
              T.let(
                :SBD,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            SCR =
              T.let(
                :SCR,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            SDG =
              T.let(
                :SDG,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            SEK =
              T.let(
                :SEK,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            SGD =
              T.let(
                :SGD,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            SHP =
              T.let(
                :SHP,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            SLL =
              T.let(
                :SLL,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            SOS =
              T.let(
                :SOS,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            SRD =
              T.let(
                :SRD,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            SSP =
              T.let(
                :SSP,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            STN =
              T.let(
                :STN,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            SVC =
              T.let(
                :SVC,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            SYP =
              T.let(
                :SYP,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            SZL =
              T.let(
                :SZL,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            THB =
              T.let(
                :THB,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            TJS =
              T.let(
                :TJS,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            TMT =
              T.let(
                :TMT,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            TND =
              T.let(
                :TND,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            TOP =
              T.let(
                :TOP,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            TRY =
              T.let(
                :TRY,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            TTD =
              T.let(
                :TTD,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            TWD =
              T.let(
                :TWD,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            TZS =
              T.let(
                :TZS,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            UAH =
              T.let(
                :UAH,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            UGX =
              T.let(
                :UGX,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            USD =
              T.let(
                :USD,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            USN =
              T.let(
                :USN,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            UYI =
              T.let(
                :UYI,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            UYU =
              T.let(
                :UYU,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            UZS =
              T.let(
                :UZS,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            VEF =
              T.let(
                :VEF,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            VND =
              T.let(
                :VND,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            VUV =
              T.let(
                :VUV,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            WST =
              T.let(
                :WST,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            XAF =
              T.let(
                :XAF,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            XAG =
              T.let(
                :XAG,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            XAU =
              T.let(
                :XAU,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            XBA =
              T.let(
                :XBA,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            XBB =
              T.let(
                :XBB,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            XBC =
              T.let(
                :XBC,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            XBD =
              T.let(
                :XBD,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            XCD =
              T.let(
                :XCD,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            XDR =
              T.let(
                :XDR,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            XOF =
              T.let(
                :XOF,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            XPD =
              T.let(
                :XPD,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            XPF =
              T.let(
                :XPF,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            XPT =
              T.let(
                :XPT,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            XSU =
              T.let(
                :XSU,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            XUA =
              T.let(
                :XUA,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            YER =
              T.let(
                :YER,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            ZAR =
              T.let(
                :ZAR,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            ZMW =
              T.let(
                :ZMW,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            ZWL =
              T.let(
                :ZWL,
                HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
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
