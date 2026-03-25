# typed: strong

module HubspotSDK
  module Models
    module Settings
      module Currencies
        class ExchangeRateListExchangeRatesParams < HubspotSDK::Internal::Type::BaseModel
          extend HubspotSDK::Internal::Type::RequestParameters::Converter
          include HubspotSDK::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams,
                HubspotSDK::Internal::AnyHash
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
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::OrSymbol
              )
            )
          end
          attr_reader :from_currency_code

          sig do
            params(
              from_currency_code:
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::OrSymbol
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
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::OrSymbol
              )
            )
          end
          attr_reader :to_currency_code

          sig do
            params(
              to_currency_code:
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::OrSymbol
            ).void
          end
          attr_writer :to_currency_code

          sig do
            params(
              after: String,
              from_currency_code:
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::OrSymbol,
              limit: Integer,
              to_currency_code:
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::OrSymbol,
              request_options: HubspotSDK::RequestOptions::OrHash
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
                  HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::OrSymbol,
                limit: Integer,
                to_currency_code:
                  HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::OrSymbol,
                request_options: HubspotSDK::RequestOptions
              }
            )
          end
          def to_hash
          end

          module FromCurrencyCode
            extend HubspotSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            AED =
              T.let(
                :AED,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            AFN =
              T.let(
                :AFN,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            ALL =
              T.let(
                :ALL,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            AMD =
              T.let(
                :AMD,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            ANG =
              T.let(
                :ANG,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            AOA =
              T.let(
                :AOA,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            ARS =
              T.let(
                :ARS,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            AUD =
              T.let(
                :AUD,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            AWG =
              T.let(
                :AWG,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            AZN =
              T.let(
                :AZN,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            BAM =
              T.let(
                :BAM,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            BBD =
              T.let(
                :BBD,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            BDT =
              T.let(
                :BDT,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            BGN =
              T.let(
                :BGN,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            BHD =
              T.let(
                :BHD,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            BIF =
              T.let(
                :BIF,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            BMD =
              T.let(
                :BMD,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            BND =
              T.let(
                :BND,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            BOB =
              T.let(
                :BOB,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            BOV =
              T.let(
                :BOV,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            BRL =
              T.let(
                :BRL,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            BSD =
              T.let(
                :BSD,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            BTN =
              T.let(
                :BTN,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            BWP =
              T.let(
                :BWP,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            BYN =
              T.let(
                :BYN,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            BZD =
              T.let(
                :BZD,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            CAD =
              T.let(
                :CAD,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            CDF =
              T.let(
                :CDF,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            CHE =
              T.let(
                :CHE,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            CHF =
              T.let(
                :CHF,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            CHW =
              T.let(
                :CHW,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            CLF =
              T.let(
                :CLF,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            CLP =
              T.let(
                :CLP,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            CNY =
              T.let(
                :CNY,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            COP =
              T.let(
                :COP,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            COU =
              T.let(
                :COU,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            CRC =
              T.let(
                :CRC,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            CUC =
              T.let(
                :CUC,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            CUP =
              T.let(
                :CUP,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            CVE =
              T.let(
                :CVE,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            CZK =
              T.let(
                :CZK,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            DJF =
              T.let(
                :DJF,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            DKK =
              T.let(
                :DKK,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            DOP =
              T.let(
                :DOP,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            DZD =
              T.let(
                :DZD,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            EGP =
              T.let(
                :EGP,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            ERN =
              T.let(
                :ERN,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            ETB =
              T.let(
                :ETB,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            EUR =
              T.let(
                :EUR,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            FJD =
              T.let(
                :FJD,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            FKP =
              T.let(
                :FKP,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            GBP =
              T.let(
                :GBP,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            GEL =
              T.let(
                :GEL,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            GHS =
              T.let(
                :GHS,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            GIP =
              T.let(
                :GIP,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            GMD =
              T.let(
                :GMD,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            GNF =
              T.let(
                :GNF,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            GTQ =
              T.let(
                :GTQ,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            GYD =
              T.let(
                :GYD,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            HKD =
              T.let(
                :HKD,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            HNL =
              T.let(
                :HNL,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            HRK =
              T.let(
                :HRK,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            HTG =
              T.let(
                :HTG,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            HUF =
              T.let(
                :HUF,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            IDR =
              T.let(
                :IDR,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            ILS =
              T.let(
                :ILS,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            INR =
              T.let(
                :INR,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            IQD =
              T.let(
                :IQD,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            IRR =
              T.let(
                :IRR,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            ISK =
              T.let(
                :ISK,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            JMD =
              T.let(
                :JMD,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            JOD =
              T.let(
                :JOD,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            JPY =
              T.let(
                :JPY,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            KES =
              T.let(
                :KES,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            KGS =
              T.let(
                :KGS,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            KHR =
              T.let(
                :KHR,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            KMF =
              T.let(
                :KMF,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            KPW =
              T.let(
                :KPW,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            KRW =
              T.let(
                :KRW,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            KWD =
              T.let(
                :KWD,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            KYD =
              T.let(
                :KYD,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            KZT =
              T.let(
                :KZT,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            LAK =
              T.let(
                :LAK,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            LBP =
              T.let(
                :LBP,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            LKR =
              T.let(
                :LKR,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            LRD =
              T.let(
                :LRD,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            LSL =
              T.let(
                :LSL,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            LYD =
              T.let(
                :LYD,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            MAD =
              T.let(
                :MAD,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            MDL =
              T.let(
                :MDL,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            MGA =
              T.let(
                :MGA,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            MKD =
              T.let(
                :MKD,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            MMK =
              T.let(
                :MMK,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            MNT =
              T.let(
                :MNT,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            MOP =
              T.let(
                :MOP,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            MRU =
              T.let(
                :MRU,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            MUR =
              T.let(
                :MUR,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            MVR =
              T.let(
                :MVR,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            MWK =
              T.let(
                :MWK,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            MXN =
              T.let(
                :MXN,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            MXV =
              T.let(
                :MXV,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            MYR =
              T.let(
                :MYR,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            MZN =
              T.let(
                :MZN,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            NAD =
              T.let(
                :NAD,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            NGN =
              T.let(
                :NGN,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            NIO =
              T.let(
                :NIO,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            NOK =
              T.let(
                :NOK,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            NPR =
              T.let(
                :NPR,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            NZD =
              T.let(
                :NZD,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            OMR =
              T.let(
                :OMR,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            PAB =
              T.let(
                :PAB,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            PEN =
              T.let(
                :PEN,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            PGK =
              T.let(
                :PGK,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            PHP =
              T.let(
                :PHP,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            PKR =
              T.let(
                :PKR,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            PLN =
              T.let(
                :PLN,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            PYG =
              T.let(
                :PYG,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            QAR =
              T.let(
                :QAR,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            RON =
              T.let(
                :RON,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            RSD =
              T.let(
                :RSD,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            RUB =
              T.let(
                :RUB,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            RWF =
              T.let(
                :RWF,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            SAR =
              T.let(
                :SAR,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            SBD =
              T.let(
                :SBD,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            SCR =
              T.let(
                :SCR,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            SDG =
              T.let(
                :SDG,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            SEK =
              T.let(
                :SEK,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            SGD =
              T.let(
                :SGD,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            SHP =
              T.let(
                :SHP,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            SLL =
              T.let(
                :SLL,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            SOS =
              T.let(
                :SOS,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            SRD =
              T.let(
                :SRD,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            SSP =
              T.let(
                :SSP,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            STN =
              T.let(
                :STN,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            SVC =
              T.let(
                :SVC,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            SYP =
              T.let(
                :SYP,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            SZL =
              T.let(
                :SZL,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            THB =
              T.let(
                :THB,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            TJS =
              T.let(
                :TJS,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            TMT =
              T.let(
                :TMT,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            TND =
              T.let(
                :TND,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            TOP =
              T.let(
                :TOP,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            TRY =
              T.let(
                :TRY,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            TTD =
              T.let(
                :TTD,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            TWD =
              T.let(
                :TWD,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            TZS =
              T.let(
                :TZS,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            UAH =
              T.let(
                :UAH,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            UGX =
              T.let(
                :UGX,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            USD =
              T.let(
                :USD,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            USN =
              T.let(
                :USN,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            UYI =
              T.let(
                :UYI,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            UYU =
              T.let(
                :UYU,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            UZS =
              T.let(
                :UZS,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            VEF =
              T.let(
                :VEF,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            VND =
              T.let(
                :VND,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            VUV =
              T.let(
                :VUV,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            WST =
              T.let(
                :WST,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            XAF =
              T.let(
                :XAF,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            XAG =
              T.let(
                :XAG,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            XAU =
              T.let(
                :XAU,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            XBA =
              T.let(
                :XBA,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            XBB =
              T.let(
                :XBB,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            XBC =
              T.let(
                :XBC,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            XBD =
              T.let(
                :XBD,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            XCD =
              T.let(
                :XCD,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            XDR =
              T.let(
                :XDR,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            XOF =
              T.let(
                :XOF,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            XPD =
              T.let(
                :XPD,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            XPF =
              T.let(
                :XPF,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            XPT =
              T.let(
                :XPT,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            XSU =
              T.let(
                :XSU,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            XUA =
              T.let(
                :XUA,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            YER =
              T.let(
                :YER,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            ZAR =
              T.let(
                :ZAR,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            ZMW =
              T.let(
                :ZMW,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )
            ZWL =
              T.let(
                :ZWL,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          module ToCurrencyCode
            extend HubspotSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            AED =
              T.let(
                :AED,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            AFN =
              T.let(
                :AFN,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            ALL =
              T.let(
                :ALL,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            AMD =
              T.let(
                :AMD,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            ANG =
              T.let(
                :ANG,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            AOA =
              T.let(
                :AOA,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            ARS =
              T.let(
                :ARS,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            AUD =
              T.let(
                :AUD,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            AWG =
              T.let(
                :AWG,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            AZN =
              T.let(
                :AZN,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            BAM =
              T.let(
                :BAM,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            BBD =
              T.let(
                :BBD,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            BDT =
              T.let(
                :BDT,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            BGN =
              T.let(
                :BGN,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            BHD =
              T.let(
                :BHD,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            BIF =
              T.let(
                :BIF,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            BMD =
              T.let(
                :BMD,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            BND =
              T.let(
                :BND,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            BOB =
              T.let(
                :BOB,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            BOV =
              T.let(
                :BOV,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            BRL =
              T.let(
                :BRL,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            BSD =
              T.let(
                :BSD,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            BTN =
              T.let(
                :BTN,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            BWP =
              T.let(
                :BWP,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            BYN =
              T.let(
                :BYN,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            BZD =
              T.let(
                :BZD,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            CAD =
              T.let(
                :CAD,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            CDF =
              T.let(
                :CDF,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            CHE =
              T.let(
                :CHE,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            CHF =
              T.let(
                :CHF,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            CHW =
              T.let(
                :CHW,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            CLF =
              T.let(
                :CLF,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            CLP =
              T.let(
                :CLP,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            CNY =
              T.let(
                :CNY,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            COP =
              T.let(
                :COP,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            COU =
              T.let(
                :COU,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            CRC =
              T.let(
                :CRC,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            CUC =
              T.let(
                :CUC,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            CUP =
              T.let(
                :CUP,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            CVE =
              T.let(
                :CVE,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            CZK =
              T.let(
                :CZK,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            DJF =
              T.let(
                :DJF,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            DKK =
              T.let(
                :DKK,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            DOP =
              T.let(
                :DOP,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            DZD =
              T.let(
                :DZD,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            EGP =
              T.let(
                :EGP,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            ERN =
              T.let(
                :ERN,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            ETB =
              T.let(
                :ETB,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            EUR =
              T.let(
                :EUR,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            FJD =
              T.let(
                :FJD,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            FKP =
              T.let(
                :FKP,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            GBP =
              T.let(
                :GBP,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            GEL =
              T.let(
                :GEL,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            GHS =
              T.let(
                :GHS,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            GIP =
              T.let(
                :GIP,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            GMD =
              T.let(
                :GMD,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            GNF =
              T.let(
                :GNF,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            GTQ =
              T.let(
                :GTQ,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            GYD =
              T.let(
                :GYD,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            HKD =
              T.let(
                :HKD,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            HNL =
              T.let(
                :HNL,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            HRK =
              T.let(
                :HRK,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            HTG =
              T.let(
                :HTG,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            HUF =
              T.let(
                :HUF,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            IDR =
              T.let(
                :IDR,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            ILS =
              T.let(
                :ILS,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            INR =
              T.let(
                :INR,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            IQD =
              T.let(
                :IQD,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            IRR =
              T.let(
                :IRR,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            ISK =
              T.let(
                :ISK,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            JMD =
              T.let(
                :JMD,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            JOD =
              T.let(
                :JOD,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            JPY =
              T.let(
                :JPY,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            KES =
              T.let(
                :KES,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            KGS =
              T.let(
                :KGS,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            KHR =
              T.let(
                :KHR,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            KMF =
              T.let(
                :KMF,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            KPW =
              T.let(
                :KPW,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            KRW =
              T.let(
                :KRW,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            KWD =
              T.let(
                :KWD,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            KYD =
              T.let(
                :KYD,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            KZT =
              T.let(
                :KZT,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            LAK =
              T.let(
                :LAK,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            LBP =
              T.let(
                :LBP,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            LKR =
              T.let(
                :LKR,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            LRD =
              T.let(
                :LRD,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            LSL =
              T.let(
                :LSL,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            LYD =
              T.let(
                :LYD,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            MAD =
              T.let(
                :MAD,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            MDL =
              T.let(
                :MDL,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            MGA =
              T.let(
                :MGA,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            MKD =
              T.let(
                :MKD,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            MMK =
              T.let(
                :MMK,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            MNT =
              T.let(
                :MNT,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            MOP =
              T.let(
                :MOP,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            MRU =
              T.let(
                :MRU,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            MUR =
              T.let(
                :MUR,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            MVR =
              T.let(
                :MVR,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            MWK =
              T.let(
                :MWK,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            MXN =
              T.let(
                :MXN,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            MXV =
              T.let(
                :MXV,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            MYR =
              T.let(
                :MYR,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            MZN =
              T.let(
                :MZN,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            NAD =
              T.let(
                :NAD,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            NGN =
              T.let(
                :NGN,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            NIO =
              T.let(
                :NIO,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            NOK =
              T.let(
                :NOK,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            NPR =
              T.let(
                :NPR,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            NZD =
              T.let(
                :NZD,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            OMR =
              T.let(
                :OMR,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            PAB =
              T.let(
                :PAB,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            PEN =
              T.let(
                :PEN,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            PGK =
              T.let(
                :PGK,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            PHP =
              T.let(
                :PHP,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            PKR =
              T.let(
                :PKR,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            PLN =
              T.let(
                :PLN,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            PYG =
              T.let(
                :PYG,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            QAR =
              T.let(
                :QAR,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            RON =
              T.let(
                :RON,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            RSD =
              T.let(
                :RSD,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            RUB =
              T.let(
                :RUB,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            RWF =
              T.let(
                :RWF,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            SAR =
              T.let(
                :SAR,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            SBD =
              T.let(
                :SBD,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            SCR =
              T.let(
                :SCR,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            SDG =
              T.let(
                :SDG,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            SEK =
              T.let(
                :SEK,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            SGD =
              T.let(
                :SGD,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            SHP =
              T.let(
                :SHP,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            SLL =
              T.let(
                :SLL,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            SOS =
              T.let(
                :SOS,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            SRD =
              T.let(
                :SRD,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            SSP =
              T.let(
                :SSP,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            STN =
              T.let(
                :STN,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            SVC =
              T.let(
                :SVC,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            SYP =
              T.let(
                :SYP,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            SZL =
              T.let(
                :SZL,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            THB =
              T.let(
                :THB,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            TJS =
              T.let(
                :TJS,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            TMT =
              T.let(
                :TMT,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            TND =
              T.let(
                :TND,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            TOP =
              T.let(
                :TOP,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            TRY =
              T.let(
                :TRY,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            TTD =
              T.let(
                :TTD,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            TWD =
              T.let(
                :TWD,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            TZS =
              T.let(
                :TZS,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            UAH =
              T.let(
                :UAH,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            UGX =
              T.let(
                :UGX,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            USD =
              T.let(
                :USD,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            USN =
              T.let(
                :USN,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            UYI =
              T.let(
                :UYI,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            UYU =
              T.let(
                :UYU,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            UZS =
              T.let(
                :UZS,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            VEF =
              T.let(
                :VEF,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            VND =
              T.let(
                :VND,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            VUV =
              T.let(
                :VUV,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            WST =
              T.let(
                :WST,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            XAF =
              T.let(
                :XAF,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            XAG =
              T.let(
                :XAG,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            XAU =
              T.let(
                :XAU,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            XBA =
              T.let(
                :XBA,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            XBB =
              T.let(
                :XBB,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            XBC =
              T.let(
                :XBC,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            XBD =
              T.let(
                :XBD,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            XCD =
              T.let(
                :XCD,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            XDR =
              T.let(
                :XDR,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            XOF =
              T.let(
                :XOF,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            XPD =
              T.let(
                :XPD,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            XPF =
              T.let(
                :XPF,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            XPT =
              T.let(
                :XPT,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            XSU =
              T.let(
                :XSU,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            XUA =
              T.let(
                :XUA,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            YER =
              T.let(
                :YER,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            ZAR =
              T.let(
                :ZAR,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            ZMW =
              T.let(
                :ZMW,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )
            ZWL =
              T.let(
                :ZWL,
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
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
