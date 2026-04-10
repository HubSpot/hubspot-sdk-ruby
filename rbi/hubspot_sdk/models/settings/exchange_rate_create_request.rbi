# typed: strong

module HubSpotSDK
  module Models
    module Settings
      class ExchangeRateCreateRequest < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Settings::ExchangeRateCreateRequest,
              HubSpotSDK::Internal::AnyHash
            )
          end

        # The conversion rate between the to and from currency code of this exchange rate.
        sig { returns(Float) }
        attr_accessor :conversion_rate

        # This represents the three-letter currency code (such as USD for US Dollar) of
        # the currency you want to convert from.
        sig do
          returns(
            HubSpotSDK::Settings::ExchangeRateCreateRequest::FromCurrencyCode::OrSymbol
          )
        end
        attr_accessor :from_currency_code

        # The date the exchange rate is in effect.
        sig { returns(T.nilable(Time)) }
        attr_reader :effective_at

        sig { params(effective_at: Time).void }
        attr_writer :effective_at

        sig do
          params(
            conversion_rate: Float,
            from_currency_code:
              HubSpotSDK::Settings::ExchangeRateCreateRequest::FromCurrencyCode::OrSymbol,
            effective_at: Time
          ).returns(T.attached_class)
        end
        def self.new(
          # The conversion rate between the to and from currency code of this exchange rate.
          conversion_rate:,
          # This represents the three-letter currency code (such as USD for US Dollar) of
          # the currency you want to convert from.
          from_currency_code:,
          # The date the exchange rate is in effect.
          effective_at: nil
        )
        end

        sig do
          override.returns(
            {
              conversion_rate: Float,
              from_currency_code:
                HubSpotSDK::Settings::ExchangeRateCreateRequest::FromCurrencyCode::OrSymbol,
              effective_at: Time
            }
          )
        end
        def to_hash
        end

        # This represents the three-letter currency code (such as USD for US Dollar) of
        # the currency you want to convert from.
        module FromCurrencyCode
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubSpotSDK::Settings::ExchangeRateCreateRequest::FromCurrencyCode
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          AED =
            T.let(
              :AED,
              HubSpotSDK::Settings::ExchangeRateCreateRequest::FromCurrencyCode::TaggedSymbol
            )
          AFN =
            T.let(
              :AFN,
              HubSpotSDK::Settings::ExchangeRateCreateRequest::FromCurrencyCode::TaggedSymbol
            )
          ALL =
            T.let(
              :ALL,
              HubSpotSDK::Settings::ExchangeRateCreateRequest::FromCurrencyCode::TaggedSymbol
            )
          AMD =
            T.let(
              :AMD,
              HubSpotSDK::Settings::ExchangeRateCreateRequest::FromCurrencyCode::TaggedSymbol
            )
          ANG =
            T.let(
              :ANG,
              HubSpotSDK::Settings::ExchangeRateCreateRequest::FromCurrencyCode::TaggedSymbol
            )
          AOA =
            T.let(
              :AOA,
              HubSpotSDK::Settings::ExchangeRateCreateRequest::FromCurrencyCode::TaggedSymbol
            )
          ARS =
            T.let(
              :ARS,
              HubSpotSDK::Settings::ExchangeRateCreateRequest::FromCurrencyCode::TaggedSymbol
            )
          AUD =
            T.let(
              :AUD,
              HubSpotSDK::Settings::ExchangeRateCreateRequest::FromCurrencyCode::TaggedSymbol
            )
          AWG =
            T.let(
              :AWG,
              HubSpotSDK::Settings::ExchangeRateCreateRequest::FromCurrencyCode::TaggedSymbol
            )
          AZN =
            T.let(
              :AZN,
              HubSpotSDK::Settings::ExchangeRateCreateRequest::FromCurrencyCode::TaggedSymbol
            )
          BAM =
            T.let(
              :BAM,
              HubSpotSDK::Settings::ExchangeRateCreateRequest::FromCurrencyCode::TaggedSymbol
            )
          BBD =
            T.let(
              :BBD,
              HubSpotSDK::Settings::ExchangeRateCreateRequest::FromCurrencyCode::TaggedSymbol
            )
          BDT =
            T.let(
              :BDT,
              HubSpotSDK::Settings::ExchangeRateCreateRequest::FromCurrencyCode::TaggedSymbol
            )
          BGN =
            T.let(
              :BGN,
              HubSpotSDK::Settings::ExchangeRateCreateRequest::FromCurrencyCode::TaggedSymbol
            )
          BHD =
            T.let(
              :BHD,
              HubSpotSDK::Settings::ExchangeRateCreateRequest::FromCurrencyCode::TaggedSymbol
            )
          BIF =
            T.let(
              :BIF,
              HubSpotSDK::Settings::ExchangeRateCreateRequest::FromCurrencyCode::TaggedSymbol
            )
          BMD =
            T.let(
              :BMD,
              HubSpotSDK::Settings::ExchangeRateCreateRequest::FromCurrencyCode::TaggedSymbol
            )
          BND =
            T.let(
              :BND,
              HubSpotSDK::Settings::ExchangeRateCreateRequest::FromCurrencyCode::TaggedSymbol
            )
          BOB =
            T.let(
              :BOB,
              HubSpotSDK::Settings::ExchangeRateCreateRequest::FromCurrencyCode::TaggedSymbol
            )
          BOV =
            T.let(
              :BOV,
              HubSpotSDK::Settings::ExchangeRateCreateRequest::FromCurrencyCode::TaggedSymbol
            )
          BRL =
            T.let(
              :BRL,
              HubSpotSDK::Settings::ExchangeRateCreateRequest::FromCurrencyCode::TaggedSymbol
            )
          BSD =
            T.let(
              :BSD,
              HubSpotSDK::Settings::ExchangeRateCreateRequest::FromCurrencyCode::TaggedSymbol
            )
          BTN =
            T.let(
              :BTN,
              HubSpotSDK::Settings::ExchangeRateCreateRequest::FromCurrencyCode::TaggedSymbol
            )
          BWP =
            T.let(
              :BWP,
              HubSpotSDK::Settings::ExchangeRateCreateRequest::FromCurrencyCode::TaggedSymbol
            )
          BYN =
            T.let(
              :BYN,
              HubSpotSDK::Settings::ExchangeRateCreateRequest::FromCurrencyCode::TaggedSymbol
            )
          BZD =
            T.let(
              :BZD,
              HubSpotSDK::Settings::ExchangeRateCreateRequest::FromCurrencyCode::TaggedSymbol
            )
          CAD =
            T.let(
              :CAD,
              HubSpotSDK::Settings::ExchangeRateCreateRequest::FromCurrencyCode::TaggedSymbol
            )
          CDF =
            T.let(
              :CDF,
              HubSpotSDK::Settings::ExchangeRateCreateRequest::FromCurrencyCode::TaggedSymbol
            )
          CHE =
            T.let(
              :CHE,
              HubSpotSDK::Settings::ExchangeRateCreateRequest::FromCurrencyCode::TaggedSymbol
            )
          CHF =
            T.let(
              :CHF,
              HubSpotSDK::Settings::ExchangeRateCreateRequest::FromCurrencyCode::TaggedSymbol
            )
          CHW =
            T.let(
              :CHW,
              HubSpotSDK::Settings::ExchangeRateCreateRequest::FromCurrencyCode::TaggedSymbol
            )
          CLF =
            T.let(
              :CLF,
              HubSpotSDK::Settings::ExchangeRateCreateRequest::FromCurrencyCode::TaggedSymbol
            )
          CLP =
            T.let(
              :CLP,
              HubSpotSDK::Settings::ExchangeRateCreateRequest::FromCurrencyCode::TaggedSymbol
            )
          CNY =
            T.let(
              :CNY,
              HubSpotSDK::Settings::ExchangeRateCreateRequest::FromCurrencyCode::TaggedSymbol
            )
          COP =
            T.let(
              :COP,
              HubSpotSDK::Settings::ExchangeRateCreateRequest::FromCurrencyCode::TaggedSymbol
            )
          COU =
            T.let(
              :COU,
              HubSpotSDK::Settings::ExchangeRateCreateRequest::FromCurrencyCode::TaggedSymbol
            )
          CRC =
            T.let(
              :CRC,
              HubSpotSDK::Settings::ExchangeRateCreateRequest::FromCurrencyCode::TaggedSymbol
            )
          CUC =
            T.let(
              :CUC,
              HubSpotSDK::Settings::ExchangeRateCreateRequest::FromCurrencyCode::TaggedSymbol
            )
          CUP =
            T.let(
              :CUP,
              HubSpotSDK::Settings::ExchangeRateCreateRequest::FromCurrencyCode::TaggedSymbol
            )
          CVE =
            T.let(
              :CVE,
              HubSpotSDK::Settings::ExchangeRateCreateRequest::FromCurrencyCode::TaggedSymbol
            )
          CZK =
            T.let(
              :CZK,
              HubSpotSDK::Settings::ExchangeRateCreateRequest::FromCurrencyCode::TaggedSymbol
            )
          DJF =
            T.let(
              :DJF,
              HubSpotSDK::Settings::ExchangeRateCreateRequest::FromCurrencyCode::TaggedSymbol
            )
          DKK =
            T.let(
              :DKK,
              HubSpotSDK::Settings::ExchangeRateCreateRequest::FromCurrencyCode::TaggedSymbol
            )
          DOP =
            T.let(
              :DOP,
              HubSpotSDK::Settings::ExchangeRateCreateRequest::FromCurrencyCode::TaggedSymbol
            )
          DZD =
            T.let(
              :DZD,
              HubSpotSDK::Settings::ExchangeRateCreateRequest::FromCurrencyCode::TaggedSymbol
            )
          EGP =
            T.let(
              :EGP,
              HubSpotSDK::Settings::ExchangeRateCreateRequest::FromCurrencyCode::TaggedSymbol
            )
          ERN =
            T.let(
              :ERN,
              HubSpotSDK::Settings::ExchangeRateCreateRequest::FromCurrencyCode::TaggedSymbol
            )
          ETB =
            T.let(
              :ETB,
              HubSpotSDK::Settings::ExchangeRateCreateRequest::FromCurrencyCode::TaggedSymbol
            )
          EUR =
            T.let(
              :EUR,
              HubSpotSDK::Settings::ExchangeRateCreateRequest::FromCurrencyCode::TaggedSymbol
            )
          FJD =
            T.let(
              :FJD,
              HubSpotSDK::Settings::ExchangeRateCreateRequest::FromCurrencyCode::TaggedSymbol
            )
          FKP =
            T.let(
              :FKP,
              HubSpotSDK::Settings::ExchangeRateCreateRequest::FromCurrencyCode::TaggedSymbol
            )
          GBP =
            T.let(
              :GBP,
              HubSpotSDK::Settings::ExchangeRateCreateRequest::FromCurrencyCode::TaggedSymbol
            )
          GEL =
            T.let(
              :GEL,
              HubSpotSDK::Settings::ExchangeRateCreateRequest::FromCurrencyCode::TaggedSymbol
            )
          GHS =
            T.let(
              :GHS,
              HubSpotSDK::Settings::ExchangeRateCreateRequest::FromCurrencyCode::TaggedSymbol
            )
          GIP =
            T.let(
              :GIP,
              HubSpotSDK::Settings::ExchangeRateCreateRequest::FromCurrencyCode::TaggedSymbol
            )
          GMD =
            T.let(
              :GMD,
              HubSpotSDK::Settings::ExchangeRateCreateRequest::FromCurrencyCode::TaggedSymbol
            )
          GNF =
            T.let(
              :GNF,
              HubSpotSDK::Settings::ExchangeRateCreateRequest::FromCurrencyCode::TaggedSymbol
            )
          GTQ =
            T.let(
              :GTQ,
              HubSpotSDK::Settings::ExchangeRateCreateRequest::FromCurrencyCode::TaggedSymbol
            )
          GYD =
            T.let(
              :GYD,
              HubSpotSDK::Settings::ExchangeRateCreateRequest::FromCurrencyCode::TaggedSymbol
            )
          HKD =
            T.let(
              :HKD,
              HubSpotSDK::Settings::ExchangeRateCreateRequest::FromCurrencyCode::TaggedSymbol
            )
          HNL =
            T.let(
              :HNL,
              HubSpotSDK::Settings::ExchangeRateCreateRequest::FromCurrencyCode::TaggedSymbol
            )
          HRK =
            T.let(
              :HRK,
              HubSpotSDK::Settings::ExchangeRateCreateRequest::FromCurrencyCode::TaggedSymbol
            )
          HTG =
            T.let(
              :HTG,
              HubSpotSDK::Settings::ExchangeRateCreateRequest::FromCurrencyCode::TaggedSymbol
            )
          HUF =
            T.let(
              :HUF,
              HubSpotSDK::Settings::ExchangeRateCreateRequest::FromCurrencyCode::TaggedSymbol
            )
          IDR =
            T.let(
              :IDR,
              HubSpotSDK::Settings::ExchangeRateCreateRequest::FromCurrencyCode::TaggedSymbol
            )
          ILS =
            T.let(
              :ILS,
              HubSpotSDK::Settings::ExchangeRateCreateRequest::FromCurrencyCode::TaggedSymbol
            )
          INR =
            T.let(
              :INR,
              HubSpotSDK::Settings::ExchangeRateCreateRequest::FromCurrencyCode::TaggedSymbol
            )
          IQD =
            T.let(
              :IQD,
              HubSpotSDK::Settings::ExchangeRateCreateRequest::FromCurrencyCode::TaggedSymbol
            )
          IRR =
            T.let(
              :IRR,
              HubSpotSDK::Settings::ExchangeRateCreateRequest::FromCurrencyCode::TaggedSymbol
            )
          ISK =
            T.let(
              :ISK,
              HubSpotSDK::Settings::ExchangeRateCreateRequest::FromCurrencyCode::TaggedSymbol
            )
          JMD =
            T.let(
              :JMD,
              HubSpotSDK::Settings::ExchangeRateCreateRequest::FromCurrencyCode::TaggedSymbol
            )
          JOD =
            T.let(
              :JOD,
              HubSpotSDK::Settings::ExchangeRateCreateRequest::FromCurrencyCode::TaggedSymbol
            )
          JPY =
            T.let(
              :JPY,
              HubSpotSDK::Settings::ExchangeRateCreateRequest::FromCurrencyCode::TaggedSymbol
            )
          KES =
            T.let(
              :KES,
              HubSpotSDK::Settings::ExchangeRateCreateRequest::FromCurrencyCode::TaggedSymbol
            )
          KGS =
            T.let(
              :KGS,
              HubSpotSDK::Settings::ExchangeRateCreateRequest::FromCurrencyCode::TaggedSymbol
            )
          KHR =
            T.let(
              :KHR,
              HubSpotSDK::Settings::ExchangeRateCreateRequest::FromCurrencyCode::TaggedSymbol
            )
          KMF =
            T.let(
              :KMF,
              HubSpotSDK::Settings::ExchangeRateCreateRequest::FromCurrencyCode::TaggedSymbol
            )
          KPW =
            T.let(
              :KPW,
              HubSpotSDK::Settings::ExchangeRateCreateRequest::FromCurrencyCode::TaggedSymbol
            )
          KRW =
            T.let(
              :KRW,
              HubSpotSDK::Settings::ExchangeRateCreateRequest::FromCurrencyCode::TaggedSymbol
            )
          KWD =
            T.let(
              :KWD,
              HubSpotSDK::Settings::ExchangeRateCreateRequest::FromCurrencyCode::TaggedSymbol
            )
          KYD =
            T.let(
              :KYD,
              HubSpotSDK::Settings::ExchangeRateCreateRequest::FromCurrencyCode::TaggedSymbol
            )
          KZT =
            T.let(
              :KZT,
              HubSpotSDK::Settings::ExchangeRateCreateRequest::FromCurrencyCode::TaggedSymbol
            )
          LAK =
            T.let(
              :LAK,
              HubSpotSDK::Settings::ExchangeRateCreateRequest::FromCurrencyCode::TaggedSymbol
            )
          LBP =
            T.let(
              :LBP,
              HubSpotSDK::Settings::ExchangeRateCreateRequest::FromCurrencyCode::TaggedSymbol
            )
          LKR =
            T.let(
              :LKR,
              HubSpotSDK::Settings::ExchangeRateCreateRequest::FromCurrencyCode::TaggedSymbol
            )
          LRD =
            T.let(
              :LRD,
              HubSpotSDK::Settings::ExchangeRateCreateRequest::FromCurrencyCode::TaggedSymbol
            )
          LSL =
            T.let(
              :LSL,
              HubSpotSDK::Settings::ExchangeRateCreateRequest::FromCurrencyCode::TaggedSymbol
            )
          LYD =
            T.let(
              :LYD,
              HubSpotSDK::Settings::ExchangeRateCreateRequest::FromCurrencyCode::TaggedSymbol
            )
          MAD =
            T.let(
              :MAD,
              HubSpotSDK::Settings::ExchangeRateCreateRequest::FromCurrencyCode::TaggedSymbol
            )
          MDL =
            T.let(
              :MDL,
              HubSpotSDK::Settings::ExchangeRateCreateRequest::FromCurrencyCode::TaggedSymbol
            )
          MGA =
            T.let(
              :MGA,
              HubSpotSDK::Settings::ExchangeRateCreateRequest::FromCurrencyCode::TaggedSymbol
            )
          MKD =
            T.let(
              :MKD,
              HubSpotSDK::Settings::ExchangeRateCreateRequest::FromCurrencyCode::TaggedSymbol
            )
          MMK =
            T.let(
              :MMK,
              HubSpotSDK::Settings::ExchangeRateCreateRequest::FromCurrencyCode::TaggedSymbol
            )
          MNT =
            T.let(
              :MNT,
              HubSpotSDK::Settings::ExchangeRateCreateRequest::FromCurrencyCode::TaggedSymbol
            )
          MOP =
            T.let(
              :MOP,
              HubSpotSDK::Settings::ExchangeRateCreateRequest::FromCurrencyCode::TaggedSymbol
            )
          MRU =
            T.let(
              :MRU,
              HubSpotSDK::Settings::ExchangeRateCreateRequest::FromCurrencyCode::TaggedSymbol
            )
          MUR =
            T.let(
              :MUR,
              HubSpotSDK::Settings::ExchangeRateCreateRequest::FromCurrencyCode::TaggedSymbol
            )
          MVR =
            T.let(
              :MVR,
              HubSpotSDK::Settings::ExchangeRateCreateRequest::FromCurrencyCode::TaggedSymbol
            )
          MWK =
            T.let(
              :MWK,
              HubSpotSDK::Settings::ExchangeRateCreateRequest::FromCurrencyCode::TaggedSymbol
            )
          MXN =
            T.let(
              :MXN,
              HubSpotSDK::Settings::ExchangeRateCreateRequest::FromCurrencyCode::TaggedSymbol
            )
          MXV =
            T.let(
              :MXV,
              HubSpotSDK::Settings::ExchangeRateCreateRequest::FromCurrencyCode::TaggedSymbol
            )
          MYR =
            T.let(
              :MYR,
              HubSpotSDK::Settings::ExchangeRateCreateRequest::FromCurrencyCode::TaggedSymbol
            )
          MZN =
            T.let(
              :MZN,
              HubSpotSDK::Settings::ExchangeRateCreateRequest::FromCurrencyCode::TaggedSymbol
            )
          NAD =
            T.let(
              :NAD,
              HubSpotSDK::Settings::ExchangeRateCreateRequest::FromCurrencyCode::TaggedSymbol
            )
          NGN =
            T.let(
              :NGN,
              HubSpotSDK::Settings::ExchangeRateCreateRequest::FromCurrencyCode::TaggedSymbol
            )
          NIO =
            T.let(
              :NIO,
              HubSpotSDK::Settings::ExchangeRateCreateRequest::FromCurrencyCode::TaggedSymbol
            )
          NOK =
            T.let(
              :NOK,
              HubSpotSDK::Settings::ExchangeRateCreateRequest::FromCurrencyCode::TaggedSymbol
            )
          NPR =
            T.let(
              :NPR,
              HubSpotSDK::Settings::ExchangeRateCreateRequest::FromCurrencyCode::TaggedSymbol
            )
          NZD =
            T.let(
              :NZD,
              HubSpotSDK::Settings::ExchangeRateCreateRequest::FromCurrencyCode::TaggedSymbol
            )
          OMR =
            T.let(
              :OMR,
              HubSpotSDK::Settings::ExchangeRateCreateRequest::FromCurrencyCode::TaggedSymbol
            )
          PAB =
            T.let(
              :PAB,
              HubSpotSDK::Settings::ExchangeRateCreateRequest::FromCurrencyCode::TaggedSymbol
            )
          PEN =
            T.let(
              :PEN,
              HubSpotSDK::Settings::ExchangeRateCreateRequest::FromCurrencyCode::TaggedSymbol
            )
          PGK =
            T.let(
              :PGK,
              HubSpotSDK::Settings::ExchangeRateCreateRequest::FromCurrencyCode::TaggedSymbol
            )
          PHP =
            T.let(
              :PHP,
              HubSpotSDK::Settings::ExchangeRateCreateRequest::FromCurrencyCode::TaggedSymbol
            )
          PKR =
            T.let(
              :PKR,
              HubSpotSDK::Settings::ExchangeRateCreateRequest::FromCurrencyCode::TaggedSymbol
            )
          PLN =
            T.let(
              :PLN,
              HubSpotSDK::Settings::ExchangeRateCreateRequest::FromCurrencyCode::TaggedSymbol
            )
          PYG =
            T.let(
              :PYG,
              HubSpotSDK::Settings::ExchangeRateCreateRequest::FromCurrencyCode::TaggedSymbol
            )
          QAR =
            T.let(
              :QAR,
              HubSpotSDK::Settings::ExchangeRateCreateRequest::FromCurrencyCode::TaggedSymbol
            )
          RON =
            T.let(
              :RON,
              HubSpotSDK::Settings::ExchangeRateCreateRequest::FromCurrencyCode::TaggedSymbol
            )
          RSD =
            T.let(
              :RSD,
              HubSpotSDK::Settings::ExchangeRateCreateRequest::FromCurrencyCode::TaggedSymbol
            )
          RUB =
            T.let(
              :RUB,
              HubSpotSDK::Settings::ExchangeRateCreateRequest::FromCurrencyCode::TaggedSymbol
            )
          RWF =
            T.let(
              :RWF,
              HubSpotSDK::Settings::ExchangeRateCreateRequest::FromCurrencyCode::TaggedSymbol
            )
          SAR =
            T.let(
              :SAR,
              HubSpotSDK::Settings::ExchangeRateCreateRequest::FromCurrencyCode::TaggedSymbol
            )
          SBD =
            T.let(
              :SBD,
              HubSpotSDK::Settings::ExchangeRateCreateRequest::FromCurrencyCode::TaggedSymbol
            )
          SCR =
            T.let(
              :SCR,
              HubSpotSDK::Settings::ExchangeRateCreateRequest::FromCurrencyCode::TaggedSymbol
            )
          SDG =
            T.let(
              :SDG,
              HubSpotSDK::Settings::ExchangeRateCreateRequest::FromCurrencyCode::TaggedSymbol
            )
          SEK =
            T.let(
              :SEK,
              HubSpotSDK::Settings::ExchangeRateCreateRequest::FromCurrencyCode::TaggedSymbol
            )
          SGD =
            T.let(
              :SGD,
              HubSpotSDK::Settings::ExchangeRateCreateRequest::FromCurrencyCode::TaggedSymbol
            )
          SHP =
            T.let(
              :SHP,
              HubSpotSDK::Settings::ExchangeRateCreateRequest::FromCurrencyCode::TaggedSymbol
            )
          SLL =
            T.let(
              :SLL,
              HubSpotSDK::Settings::ExchangeRateCreateRequest::FromCurrencyCode::TaggedSymbol
            )
          SOS =
            T.let(
              :SOS,
              HubSpotSDK::Settings::ExchangeRateCreateRequest::FromCurrencyCode::TaggedSymbol
            )
          SRD =
            T.let(
              :SRD,
              HubSpotSDK::Settings::ExchangeRateCreateRequest::FromCurrencyCode::TaggedSymbol
            )
          SSP =
            T.let(
              :SSP,
              HubSpotSDK::Settings::ExchangeRateCreateRequest::FromCurrencyCode::TaggedSymbol
            )
          STN =
            T.let(
              :STN,
              HubSpotSDK::Settings::ExchangeRateCreateRequest::FromCurrencyCode::TaggedSymbol
            )
          SVC =
            T.let(
              :SVC,
              HubSpotSDK::Settings::ExchangeRateCreateRequest::FromCurrencyCode::TaggedSymbol
            )
          SYP =
            T.let(
              :SYP,
              HubSpotSDK::Settings::ExchangeRateCreateRequest::FromCurrencyCode::TaggedSymbol
            )
          SZL =
            T.let(
              :SZL,
              HubSpotSDK::Settings::ExchangeRateCreateRequest::FromCurrencyCode::TaggedSymbol
            )
          THB =
            T.let(
              :THB,
              HubSpotSDK::Settings::ExchangeRateCreateRequest::FromCurrencyCode::TaggedSymbol
            )
          TJS =
            T.let(
              :TJS,
              HubSpotSDK::Settings::ExchangeRateCreateRequest::FromCurrencyCode::TaggedSymbol
            )
          TMT =
            T.let(
              :TMT,
              HubSpotSDK::Settings::ExchangeRateCreateRequest::FromCurrencyCode::TaggedSymbol
            )
          TND =
            T.let(
              :TND,
              HubSpotSDK::Settings::ExchangeRateCreateRequest::FromCurrencyCode::TaggedSymbol
            )
          TOP =
            T.let(
              :TOP,
              HubSpotSDK::Settings::ExchangeRateCreateRequest::FromCurrencyCode::TaggedSymbol
            )
          TRY =
            T.let(
              :TRY,
              HubSpotSDK::Settings::ExchangeRateCreateRequest::FromCurrencyCode::TaggedSymbol
            )
          TTD =
            T.let(
              :TTD,
              HubSpotSDK::Settings::ExchangeRateCreateRequest::FromCurrencyCode::TaggedSymbol
            )
          TWD =
            T.let(
              :TWD,
              HubSpotSDK::Settings::ExchangeRateCreateRequest::FromCurrencyCode::TaggedSymbol
            )
          TZS =
            T.let(
              :TZS,
              HubSpotSDK::Settings::ExchangeRateCreateRequest::FromCurrencyCode::TaggedSymbol
            )
          UAH =
            T.let(
              :UAH,
              HubSpotSDK::Settings::ExchangeRateCreateRequest::FromCurrencyCode::TaggedSymbol
            )
          UGX =
            T.let(
              :UGX,
              HubSpotSDK::Settings::ExchangeRateCreateRequest::FromCurrencyCode::TaggedSymbol
            )
          USD =
            T.let(
              :USD,
              HubSpotSDK::Settings::ExchangeRateCreateRequest::FromCurrencyCode::TaggedSymbol
            )
          USN =
            T.let(
              :USN,
              HubSpotSDK::Settings::ExchangeRateCreateRequest::FromCurrencyCode::TaggedSymbol
            )
          UYI =
            T.let(
              :UYI,
              HubSpotSDK::Settings::ExchangeRateCreateRequest::FromCurrencyCode::TaggedSymbol
            )
          UYU =
            T.let(
              :UYU,
              HubSpotSDK::Settings::ExchangeRateCreateRequest::FromCurrencyCode::TaggedSymbol
            )
          UZS =
            T.let(
              :UZS,
              HubSpotSDK::Settings::ExchangeRateCreateRequest::FromCurrencyCode::TaggedSymbol
            )
          VEF =
            T.let(
              :VEF,
              HubSpotSDK::Settings::ExchangeRateCreateRequest::FromCurrencyCode::TaggedSymbol
            )
          VND =
            T.let(
              :VND,
              HubSpotSDK::Settings::ExchangeRateCreateRequest::FromCurrencyCode::TaggedSymbol
            )
          VUV =
            T.let(
              :VUV,
              HubSpotSDK::Settings::ExchangeRateCreateRequest::FromCurrencyCode::TaggedSymbol
            )
          WST =
            T.let(
              :WST,
              HubSpotSDK::Settings::ExchangeRateCreateRequest::FromCurrencyCode::TaggedSymbol
            )
          XAF =
            T.let(
              :XAF,
              HubSpotSDK::Settings::ExchangeRateCreateRequest::FromCurrencyCode::TaggedSymbol
            )
          XAG =
            T.let(
              :XAG,
              HubSpotSDK::Settings::ExchangeRateCreateRequest::FromCurrencyCode::TaggedSymbol
            )
          XAU =
            T.let(
              :XAU,
              HubSpotSDK::Settings::ExchangeRateCreateRequest::FromCurrencyCode::TaggedSymbol
            )
          XBA =
            T.let(
              :XBA,
              HubSpotSDK::Settings::ExchangeRateCreateRequest::FromCurrencyCode::TaggedSymbol
            )
          XBB =
            T.let(
              :XBB,
              HubSpotSDK::Settings::ExchangeRateCreateRequest::FromCurrencyCode::TaggedSymbol
            )
          XBC =
            T.let(
              :XBC,
              HubSpotSDK::Settings::ExchangeRateCreateRequest::FromCurrencyCode::TaggedSymbol
            )
          XBD =
            T.let(
              :XBD,
              HubSpotSDK::Settings::ExchangeRateCreateRequest::FromCurrencyCode::TaggedSymbol
            )
          XCD =
            T.let(
              :XCD,
              HubSpotSDK::Settings::ExchangeRateCreateRequest::FromCurrencyCode::TaggedSymbol
            )
          XDR =
            T.let(
              :XDR,
              HubSpotSDK::Settings::ExchangeRateCreateRequest::FromCurrencyCode::TaggedSymbol
            )
          XOF =
            T.let(
              :XOF,
              HubSpotSDK::Settings::ExchangeRateCreateRequest::FromCurrencyCode::TaggedSymbol
            )
          XPD =
            T.let(
              :XPD,
              HubSpotSDK::Settings::ExchangeRateCreateRequest::FromCurrencyCode::TaggedSymbol
            )
          XPF =
            T.let(
              :XPF,
              HubSpotSDK::Settings::ExchangeRateCreateRequest::FromCurrencyCode::TaggedSymbol
            )
          XPT =
            T.let(
              :XPT,
              HubSpotSDK::Settings::ExchangeRateCreateRequest::FromCurrencyCode::TaggedSymbol
            )
          XSU =
            T.let(
              :XSU,
              HubSpotSDK::Settings::ExchangeRateCreateRequest::FromCurrencyCode::TaggedSymbol
            )
          XUA =
            T.let(
              :XUA,
              HubSpotSDK::Settings::ExchangeRateCreateRequest::FromCurrencyCode::TaggedSymbol
            )
          YER =
            T.let(
              :YER,
              HubSpotSDK::Settings::ExchangeRateCreateRequest::FromCurrencyCode::TaggedSymbol
            )
          ZAR =
            T.let(
              :ZAR,
              HubSpotSDK::Settings::ExchangeRateCreateRequest::FromCurrencyCode::TaggedSymbol
            )
          ZMW =
            T.let(
              :ZMW,
              HubSpotSDK::Settings::ExchangeRateCreateRequest::FromCurrencyCode::TaggedSymbol
            )
          ZWL =
            T.let(
              :ZWL,
              HubSpotSDK::Settings::ExchangeRateCreateRequest::FromCurrencyCode::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Settings::ExchangeRateCreateRequest::FromCurrencyCode::TaggedSymbol
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
