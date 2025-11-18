# typed: strong

module HubspotSDK
  module Models
    module Settings
      class CurrencyListExchangeRatesParams < HubspotSDK::Internal::Type::BaseModel
        extend HubspotSDK::Internal::Type::RequestParameters::Converter
        include HubspotSDK::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Settings::CurrencyListExchangeRatesParams,
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

        # Filters the response to only include exchange rates set from the specified
        # currency.
        sig do
          returns(
            T.nilable(
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::FromCurrencyCode::OrSymbol
            )
          )
        end
        attr_reader :from_currency_code

        sig do
          params(
            from_currency_code:
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::FromCurrencyCode::OrSymbol
          ).void
        end
        attr_writer :from_currency_code

        # The maximum number of results to display per page.
        sig { returns(T.nilable(Integer)) }
        attr_reader :limit

        sig { params(limit: Integer).void }
        attr_writer :limit

        # Filters the response to only include exchange rates set to the specified
        # currency.
        sig do
          returns(
            T.nilable(
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::ToCurrencyCode::OrSymbol
            )
          )
        end
        attr_reader :to_currency_code

        sig do
          params(
            to_currency_code:
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::ToCurrencyCode::OrSymbol
          ).void
        end
        attr_writer :to_currency_code

        sig do
          params(
            after: String,
            from_currency_code:
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::FromCurrencyCode::OrSymbol,
            limit: Integer,
            to_currency_code:
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::ToCurrencyCode::OrSymbol,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # The paging cursor token of the last successfully read resource will be returned
          # as the `paging.next.after` JSON property of a paged response containing more
          # results.
          after: nil,
          # Filters the response to only include exchange rates set from the specified
          # currency.
          from_currency_code: nil,
          # The maximum number of results to display per page.
          limit: nil,
          # Filters the response to only include exchange rates set to the specified
          # currency.
          to_currency_code: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              after: String,
              from_currency_code:
                HubspotSDK::Settings::CurrencyListExchangeRatesParams::FromCurrencyCode::OrSymbol,
              limit: Integer,
              to_currency_code:
                HubspotSDK::Settings::CurrencyListExchangeRatesParams::ToCurrencyCode::OrSymbol,
              request_options: HubspotSDK::RequestOptions
            }
          )
        end
        def to_hash
        end

        # Filters the response to only include exchange rates set from the specified
        # currency.
        module FromCurrencyCode
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubspotSDK::Settings::CurrencyListExchangeRatesParams::FromCurrencyCode
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          AED =
            T.let(
              :AED,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
            )
          AFN =
            T.let(
              :AFN,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
            )
          ALL =
            T.let(
              :ALL,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
            )
          AMD =
            T.let(
              :AMD,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
            )
          ANG =
            T.let(
              :ANG,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
            )
          AOA =
            T.let(
              :AOA,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
            )
          ARS =
            T.let(
              :ARS,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
            )
          AUD =
            T.let(
              :AUD,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
            )
          AWG =
            T.let(
              :AWG,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
            )
          AZN =
            T.let(
              :AZN,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
            )
          BAM =
            T.let(
              :BAM,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
            )
          BBD =
            T.let(
              :BBD,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
            )
          BDT =
            T.let(
              :BDT,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
            )
          BGN =
            T.let(
              :BGN,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
            )
          BHD =
            T.let(
              :BHD,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
            )
          BIF =
            T.let(
              :BIF,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
            )
          BMD =
            T.let(
              :BMD,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
            )
          BND =
            T.let(
              :BND,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
            )
          BOB =
            T.let(
              :BOB,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
            )
          BOV =
            T.let(
              :BOV,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
            )
          BRL =
            T.let(
              :BRL,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
            )
          BSD =
            T.let(
              :BSD,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
            )
          BTN =
            T.let(
              :BTN,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
            )
          BWP =
            T.let(
              :BWP,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
            )
          BYN =
            T.let(
              :BYN,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
            )
          BZD =
            T.let(
              :BZD,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
            )
          CAD =
            T.let(
              :CAD,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
            )
          CDF =
            T.let(
              :CDF,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
            )
          CHE =
            T.let(
              :CHE,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
            )
          CHF =
            T.let(
              :CHF,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
            )
          CHW =
            T.let(
              :CHW,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
            )
          CLF =
            T.let(
              :CLF,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
            )
          CLP =
            T.let(
              :CLP,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
            )
          CNY =
            T.let(
              :CNY,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
            )
          COP =
            T.let(
              :COP,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
            )
          COU =
            T.let(
              :COU,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
            )
          CRC =
            T.let(
              :CRC,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
            )
          CUC =
            T.let(
              :CUC,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
            )
          CUP =
            T.let(
              :CUP,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
            )
          CVE =
            T.let(
              :CVE,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
            )
          CZK =
            T.let(
              :CZK,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
            )
          DJF =
            T.let(
              :DJF,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
            )
          DKK =
            T.let(
              :DKK,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
            )
          DOP =
            T.let(
              :DOP,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
            )
          DZD =
            T.let(
              :DZD,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
            )
          EGP =
            T.let(
              :EGP,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
            )
          ERN =
            T.let(
              :ERN,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
            )
          ETB =
            T.let(
              :ETB,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
            )
          EUR =
            T.let(
              :EUR,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
            )
          FJD =
            T.let(
              :FJD,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
            )
          FKP =
            T.let(
              :FKP,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
            )
          GBP =
            T.let(
              :GBP,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
            )
          GEL =
            T.let(
              :GEL,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
            )
          GHS =
            T.let(
              :GHS,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
            )
          GIP =
            T.let(
              :GIP,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
            )
          GMD =
            T.let(
              :GMD,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
            )
          GNF =
            T.let(
              :GNF,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
            )
          GTQ =
            T.let(
              :GTQ,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
            )
          GYD =
            T.let(
              :GYD,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
            )
          HKD =
            T.let(
              :HKD,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
            )
          HNL =
            T.let(
              :HNL,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
            )
          HRK =
            T.let(
              :HRK,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
            )
          HTG =
            T.let(
              :HTG,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
            )
          HUF =
            T.let(
              :HUF,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
            )
          IDR =
            T.let(
              :IDR,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
            )
          ILS =
            T.let(
              :ILS,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
            )
          INR =
            T.let(
              :INR,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
            )
          IQD =
            T.let(
              :IQD,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
            )
          IRR =
            T.let(
              :IRR,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
            )
          ISK =
            T.let(
              :ISK,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
            )
          JMD =
            T.let(
              :JMD,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
            )
          JOD =
            T.let(
              :JOD,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
            )
          JPY =
            T.let(
              :JPY,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
            )
          KES =
            T.let(
              :KES,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
            )
          KGS =
            T.let(
              :KGS,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
            )
          KHR =
            T.let(
              :KHR,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
            )
          KMF =
            T.let(
              :KMF,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
            )
          KPW =
            T.let(
              :KPW,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
            )
          KRW =
            T.let(
              :KRW,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
            )
          KWD =
            T.let(
              :KWD,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
            )
          KYD =
            T.let(
              :KYD,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
            )
          KZT =
            T.let(
              :KZT,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
            )
          LAK =
            T.let(
              :LAK,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
            )
          LBP =
            T.let(
              :LBP,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
            )
          LKR =
            T.let(
              :LKR,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
            )
          LRD =
            T.let(
              :LRD,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
            )
          LSL =
            T.let(
              :LSL,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
            )
          LYD =
            T.let(
              :LYD,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
            )
          MAD =
            T.let(
              :MAD,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
            )
          MDL =
            T.let(
              :MDL,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
            )
          MGA =
            T.let(
              :MGA,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
            )
          MKD =
            T.let(
              :MKD,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
            )
          MMK =
            T.let(
              :MMK,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
            )
          MNT =
            T.let(
              :MNT,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
            )
          MOP =
            T.let(
              :MOP,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
            )
          MRU =
            T.let(
              :MRU,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
            )
          MUR =
            T.let(
              :MUR,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
            )
          MVR =
            T.let(
              :MVR,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
            )
          MWK =
            T.let(
              :MWK,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
            )
          MXN =
            T.let(
              :MXN,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
            )
          MXV =
            T.let(
              :MXV,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
            )
          MYR =
            T.let(
              :MYR,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
            )
          MZN =
            T.let(
              :MZN,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
            )
          NAD =
            T.let(
              :NAD,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
            )
          NGN =
            T.let(
              :NGN,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
            )
          NIO =
            T.let(
              :NIO,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
            )
          NOK =
            T.let(
              :NOK,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
            )
          NPR =
            T.let(
              :NPR,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
            )
          NZD =
            T.let(
              :NZD,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
            )
          OMR =
            T.let(
              :OMR,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
            )
          PAB =
            T.let(
              :PAB,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
            )
          PEN =
            T.let(
              :PEN,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
            )
          PGK =
            T.let(
              :PGK,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
            )
          PHP =
            T.let(
              :PHP,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
            )
          PKR =
            T.let(
              :PKR,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
            )
          PLN =
            T.let(
              :PLN,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
            )
          PYG =
            T.let(
              :PYG,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
            )
          QAR =
            T.let(
              :QAR,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
            )
          RON =
            T.let(
              :RON,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
            )
          RSD =
            T.let(
              :RSD,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
            )
          RUB =
            T.let(
              :RUB,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
            )
          RWF =
            T.let(
              :RWF,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
            )
          SAR =
            T.let(
              :SAR,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
            )
          SBD =
            T.let(
              :SBD,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
            )
          SCR =
            T.let(
              :SCR,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
            )
          SDG =
            T.let(
              :SDG,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
            )
          SEK =
            T.let(
              :SEK,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
            )
          SGD =
            T.let(
              :SGD,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
            )
          SHP =
            T.let(
              :SHP,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
            )
          SLL =
            T.let(
              :SLL,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
            )
          SOS =
            T.let(
              :SOS,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
            )
          SRD =
            T.let(
              :SRD,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
            )
          SSP =
            T.let(
              :SSP,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
            )
          STN =
            T.let(
              :STN,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
            )
          SVC =
            T.let(
              :SVC,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
            )
          SYP =
            T.let(
              :SYP,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
            )
          SZL =
            T.let(
              :SZL,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
            )
          THB =
            T.let(
              :THB,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
            )
          TJS =
            T.let(
              :TJS,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
            )
          TMT =
            T.let(
              :TMT,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
            )
          TND =
            T.let(
              :TND,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
            )
          TOP =
            T.let(
              :TOP,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
            )
          TRY =
            T.let(
              :TRY,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
            )
          TTD =
            T.let(
              :TTD,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
            )
          TWD =
            T.let(
              :TWD,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
            )
          TZS =
            T.let(
              :TZS,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
            )
          UAH =
            T.let(
              :UAH,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
            )
          UGX =
            T.let(
              :UGX,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
            )
          USD =
            T.let(
              :USD,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
            )
          USN =
            T.let(
              :USN,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
            )
          UYI =
            T.let(
              :UYI,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
            )
          UYU =
            T.let(
              :UYU,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
            )
          UZS =
            T.let(
              :UZS,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
            )
          VEF =
            T.let(
              :VEF,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
            )
          VND =
            T.let(
              :VND,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
            )
          VUV =
            T.let(
              :VUV,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
            )
          WST =
            T.let(
              :WST,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
            )
          XAF =
            T.let(
              :XAF,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
            )
          XAG =
            T.let(
              :XAG,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
            )
          XAU =
            T.let(
              :XAU,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
            )
          XBA =
            T.let(
              :XBA,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
            )
          XBB =
            T.let(
              :XBB,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
            )
          XBC =
            T.let(
              :XBC,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
            )
          XBD =
            T.let(
              :XBD,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
            )
          XCD =
            T.let(
              :XCD,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
            )
          XDR =
            T.let(
              :XDR,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
            )
          XOF =
            T.let(
              :XOF,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
            )
          XPD =
            T.let(
              :XPD,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
            )
          XPF =
            T.let(
              :XPF,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
            )
          XPT =
            T.let(
              :XPT,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
            )
          XSU =
            T.let(
              :XSU,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
            )
          XUA =
            T.let(
              :XUA,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
            )
          YER =
            T.let(
              :YER,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
            )
          ZAR =
            T.let(
              :ZAR,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
            )
          ZMW =
            T.let(
              :ZMW,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
            )
          ZWL =
            T.let(
              :ZWL,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Settings::CurrencyListExchangeRatesParams::FromCurrencyCode::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # Filters the response to only include exchange rates set to the specified
        # currency.
        module ToCurrencyCode
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubspotSDK::Settings::CurrencyListExchangeRatesParams::ToCurrencyCode
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          AED =
            T.let(
              :AED,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
            )
          AFN =
            T.let(
              :AFN,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
            )
          ALL =
            T.let(
              :ALL,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
            )
          AMD =
            T.let(
              :AMD,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
            )
          ANG =
            T.let(
              :ANG,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
            )
          AOA =
            T.let(
              :AOA,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
            )
          ARS =
            T.let(
              :ARS,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
            )
          AUD =
            T.let(
              :AUD,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
            )
          AWG =
            T.let(
              :AWG,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
            )
          AZN =
            T.let(
              :AZN,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
            )
          BAM =
            T.let(
              :BAM,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
            )
          BBD =
            T.let(
              :BBD,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
            )
          BDT =
            T.let(
              :BDT,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
            )
          BGN =
            T.let(
              :BGN,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
            )
          BHD =
            T.let(
              :BHD,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
            )
          BIF =
            T.let(
              :BIF,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
            )
          BMD =
            T.let(
              :BMD,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
            )
          BND =
            T.let(
              :BND,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
            )
          BOB =
            T.let(
              :BOB,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
            )
          BOV =
            T.let(
              :BOV,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
            )
          BRL =
            T.let(
              :BRL,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
            )
          BSD =
            T.let(
              :BSD,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
            )
          BTN =
            T.let(
              :BTN,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
            )
          BWP =
            T.let(
              :BWP,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
            )
          BYN =
            T.let(
              :BYN,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
            )
          BZD =
            T.let(
              :BZD,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
            )
          CAD =
            T.let(
              :CAD,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
            )
          CDF =
            T.let(
              :CDF,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
            )
          CHE =
            T.let(
              :CHE,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
            )
          CHF =
            T.let(
              :CHF,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
            )
          CHW =
            T.let(
              :CHW,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
            )
          CLF =
            T.let(
              :CLF,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
            )
          CLP =
            T.let(
              :CLP,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
            )
          CNY =
            T.let(
              :CNY,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
            )
          COP =
            T.let(
              :COP,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
            )
          COU =
            T.let(
              :COU,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
            )
          CRC =
            T.let(
              :CRC,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
            )
          CUC =
            T.let(
              :CUC,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
            )
          CUP =
            T.let(
              :CUP,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
            )
          CVE =
            T.let(
              :CVE,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
            )
          CZK =
            T.let(
              :CZK,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
            )
          DJF =
            T.let(
              :DJF,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
            )
          DKK =
            T.let(
              :DKK,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
            )
          DOP =
            T.let(
              :DOP,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
            )
          DZD =
            T.let(
              :DZD,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
            )
          EGP =
            T.let(
              :EGP,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
            )
          ERN =
            T.let(
              :ERN,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
            )
          ETB =
            T.let(
              :ETB,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
            )
          EUR =
            T.let(
              :EUR,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
            )
          FJD =
            T.let(
              :FJD,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
            )
          FKP =
            T.let(
              :FKP,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
            )
          GBP =
            T.let(
              :GBP,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
            )
          GEL =
            T.let(
              :GEL,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
            )
          GHS =
            T.let(
              :GHS,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
            )
          GIP =
            T.let(
              :GIP,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
            )
          GMD =
            T.let(
              :GMD,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
            )
          GNF =
            T.let(
              :GNF,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
            )
          GTQ =
            T.let(
              :GTQ,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
            )
          GYD =
            T.let(
              :GYD,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
            )
          HKD =
            T.let(
              :HKD,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
            )
          HNL =
            T.let(
              :HNL,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
            )
          HRK =
            T.let(
              :HRK,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
            )
          HTG =
            T.let(
              :HTG,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
            )
          HUF =
            T.let(
              :HUF,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
            )
          IDR =
            T.let(
              :IDR,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
            )
          ILS =
            T.let(
              :ILS,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
            )
          INR =
            T.let(
              :INR,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
            )
          IQD =
            T.let(
              :IQD,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
            )
          IRR =
            T.let(
              :IRR,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
            )
          ISK =
            T.let(
              :ISK,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
            )
          JMD =
            T.let(
              :JMD,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
            )
          JOD =
            T.let(
              :JOD,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
            )
          JPY =
            T.let(
              :JPY,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
            )
          KES =
            T.let(
              :KES,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
            )
          KGS =
            T.let(
              :KGS,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
            )
          KHR =
            T.let(
              :KHR,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
            )
          KMF =
            T.let(
              :KMF,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
            )
          KPW =
            T.let(
              :KPW,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
            )
          KRW =
            T.let(
              :KRW,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
            )
          KWD =
            T.let(
              :KWD,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
            )
          KYD =
            T.let(
              :KYD,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
            )
          KZT =
            T.let(
              :KZT,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
            )
          LAK =
            T.let(
              :LAK,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
            )
          LBP =
            T.let(
              :LBP,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
            )
          LKR =
            T.let(
              :LKR,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
            )
          LRD =
            T.let(
              :LRD,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
            )
          LSL =
            T.let(
              :LSL,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
            )
          LYD =
            T.let(
              :LYD,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
            )
          MAD =
            T.let(
              :MAD,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
            )
          MDL =
            T.let(
              :MDL,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
            )
          MGA =
            T.let(
              :MGA,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
            )
          MKD =
            T.let(
              :MKD,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
            )
          MMK =
            T.let(
              :MMK,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
            )
          MNT =
            T.let(
              :MNT,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
            )
          MOP =
            T.let(
              :MOP,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
            )
          MRU =
            T.let(
              :MRU,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
            )
          MUR =
            T.let(
              :MUR,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
            )
          MVR =
            T.let(
              :MVR,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
            )
          MWK =
            T.let(
              :MWK,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
            )
          MXN =
            T.let(
              :MXN,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
            )
          MXV =
            T.let(
              :MXV,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
            )
          MYR =
            T.let(
              :MYR,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
            )
          MZN =
            T.let(
              :MZN,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
            )
          NAD =
            T.let(
              :NAD,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
            )
          NGN =
            T.let(
              :NGN,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
            )
          NIO =
            T.let(
              :NIO,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
            )
          NOK =
            T.let(
              :NOK,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
            )
          NPR =
            T.let(
              :NPR,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
            )
          NZD =
            T.let(
              :NZD,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
            )
          OMR =
            T.let(
              :OMR,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
            )
          PAB =
            T.let(
              :PAB,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
            )
          PEN =
            T.let(
              :PEN,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
            )
          PGK =
            T.let(
              :PGK,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
            )
          PHP =
            T.let(
              :PHP,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
            )
          PKR =
            T.let(
              :PKR,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
            )
          PLN =
            T.let(
              :PLN,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
            )
          PYG =
            T.let(
              :PYG,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
            )
          QAR =
            T.let(
              :QAR,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
            )
          RON =
            T.let(
              :RON,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
            )
          RSD =
            T.let(
              :RSD,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
            )
          RUB =
            T.let(
              :RUB,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
            )
          RWF =
            T.let(
              :RWF,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
            )
          SAR =
            T.let(
              :SAR,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
            )
          SBD =
            T.let(
              :SBD,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
            )
          SCR =
            T.let(
              :SCR,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
            )
          SDG =
            T.let(
              :SDG,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
            )
          SEK =
            T.let(
              :SEK,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
            )
          SGD =
            T.let(
              :SGD,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
            )
          SHP =
            T.let(
              :SHP,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
            )
          SLL =
            T.let(
              :SLL,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
            )
          SOS =
            T.let(
              :SOS,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
            )
          SRD =
            T.let(
              :SRD,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
            )
          SSP =
            T.let(
              :SSP,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
            )
          STN =
            T.let(
              :STN,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
            )
          SVC =
            T.let(
              :SVC,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
            )
          SYP =
            T.let(
              :SYP,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
            )
          SZL =
            T.let(
              :SZL,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
            )
          THB =
            T.let(
              :THB,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
            )
          TJS =
            T.let(
              :TJS,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
            )
          TMT =
            T.let(
              :TMT,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
            )
          TND =
            T.let(
              :TND,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
            )
          TOP =
            T.let(
              :TOP,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
            )
          TRY =
            T.let(
              :TRY,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
            )
          TTD =
            T.let(
              :TTD,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
            )
          TWD =
            T.let(
              :TWD,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
            )
          TZS =
            T.let(
              :TZS,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
            )
          UAH =
            T.let(
              :UAH,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
            )
          UGX =
            T.let(
              :UGX,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
            )
          USD =
            T.let(
              :USD,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
            )
          USN =
            T.let(
              :USN,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
            )
          UYI =
            T.let(
              :UYI,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
            )
          UYU =
            T.let(
              :UYU,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
            )
          UZS =
            T.let(
              :UZS,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
            )
          VEF =
            T.let(
              :VEF,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
            )
          VND =
            T.let(
              :VND,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
            )
          VUV =
            T.let(
              :VUV,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
            )
          WST =
            T.let(
              :WST,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
            )
          XAF =
            T.let(
              :XAF,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
            )
          XAG =
            T.let(
              :XAG,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
            )
          XAU =
            T.let(
              :XAU,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
            )
          XBA =
            T.let(
              :XBA,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
            )
          XBB =
            T.let(
              :XBB,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
            )
          XBC =
            T.let(
              :XBC,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
            )
          XBD =
            T.let(
              :XBD,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
            )
          XCD =
            T.let(
              :XCD,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
            )
          XDR =
            T.let(
              :XDR,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
            )
          XOF =
            T.let(
              :XOF,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
            )
          XPD =
            T.let(
              :XPD,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
            )
          XPF =
            T.let(
              :XPF,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
            )
          XPT =
            T.let(
              :XPT,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
            )
          XSU =
            T.let(
              :XSU,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
            )
          XUA =
            T.let(
              :XUA,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
            )
          YER =
            T.let(
              :YER,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
            )
          ZAR =
            T.let(
              :ZAR,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
            )
          ZMW =
            T.let(
              :ZMW,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
            )
          ZWL =
            T.let(
              :ZWL,
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Settings::CurrencyListExchangeRatesParams::ToCurrencyCode::TaggedSymbol
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
