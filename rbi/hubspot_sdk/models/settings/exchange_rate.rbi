# typed: strong

module HubSpotSDK
  module Models
    module Settings
      class ExchangeRate < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Settings::ExchangeRate,
              HubSpotSDK::Internal::AnyHash
            )
          end

        # A unique identifier for the exchange rate
        sig { returns(String) }
        attr_accessor :id

        # The conversion rate between the to and from currency code of this exchange rate.
        sig { returns(Float) }
        attr_accessor :conversion_rate

        # The date the exchange rate was created.
        sig { returns(Time) }
        attr_accessor :created_at

        # The date the exchange rate is in effect.
        sig { returns(Time) }
        attr_accessor :effective_at

        # This represents the three-letter currency code (such as USD for US Dollar) of
        # the currency you are converting from.
        sig do
          returns(
            HubSpotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
          )
        end
        attr_accessor :from_currency_code

        # This represents the three-letter currency code (such as USD for US Dollar) of
        # the currency you are converting to.
        sig do
          returns(
            HubSpotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
          )
        end
        attr_accessor :to_currency_code

        # The date the exchange rate was last updated.
        sig { returns(Time) }
        attr_accessor :updated_at

        # This indicates if the exchange rate is shown in the MultiCurrency settings page.
        sig { returns(T::Boolean) }
        attr_accessor :visible_in_ui

        sig do
          params(
            id: String,
            conversion_rate: Float,
            created_at: Time,
            effective_at: Time,
            from_currency_code:
              HubSpotSDK::Settings::ExchangeRate::FromCurrencyCode::OrSymbol,
            to_currency_code:
              HubSpotSDK::Settings::ExchangeRate::ToCurrencyCode::OrSymbol,
            updated_at: Time,
            visible_in_ui: T::Boolean
          ).returns(T.attached_class)
        end
        def self.new(
          # A unique identifier for the exchange rate
          id:,
          # The conversion rate between the to and from currency code of this exchange rate.
          conversion_rate:,
          # The date the exchange rate was created.
          created_at:,
          # The date the exchange rate is in effect.
          effective_at:,
          # This represents the three-letter currency code (such as USD for US Dollar) of
          # the currency you are converting from.
          from_currency_code:,
          # This represents the three-letter currency code (such as USD for US Dollar) of
          # the currency you are converting to.
          to_currency_code:,
          # The date the exchange rate was last updated.
          updated_at:,
          # This indicates if the exchange rate is shown in the MultiCurrency settings page.
          visible_in_ui:
        )
        end

        sig do
          override.returns(
            {
              id: String,
              conversion_rate: Float,
              created_at: Time,
              effective_at: Time,
              from_currency_code:
                HubSpotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol,
              to_currency_code:
                HubSpotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol,
              updated_at: Time,
              visible_in_ui: T::Boolean
            }
          )
        end
        def to_hash
        end

        # This represents the three-letter currency code (such as USD for US Dollar) of
        # the currency you are converting from.
        module FromCurrencyCode
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubSpotSDK::Settings::ExchangeRate::FromCurrencyCode
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          AED =
            T.let(
              :AED,
              HubSpotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          AFN =
            T.let(
              :AFN,
              HubSpotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          ALL =
            T.let(
              :ALL,
              HubSpotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          AMD =
            T.let(
              :AMD,
              HubSpotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          ANG =
            T.let(
              :ANG,
              HubSpotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          AOA =
            T.let(
              :AOA,
              HubSpotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          ARS =
            T.let(
              :ARS,
              HubSpotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          AUD =
            T.let(
              :AUD,
              HubSpotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          AWG =
            T.let(
              :AWG,
              HubSpotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          AZN =
            T.let(
              :AZN,
              HubSpotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          BAM =
            T.let(
              :BAM,
              HubSpotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          BBD =
            T.let(
              :BBD,
              HubSpotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          BDT =
            T.let(
              :BDT,
              HubSpotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          BGN =
            T.let(
              :BGN,
              HubSpotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          BHD =
            T.let(
              :BHD,
              HubSpotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          BIF =
            T.let(
              :BIF,
              HubSpotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          BMD =
            T.let(
              :BMD,
              HubSpotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          BND =
            T.let(
              :BND,
              HubSpotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          BOB =
            T.let(
              :BOB,
              HubSpotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          BOV =
            T.let(
              :BOV,
              HubSpotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          BRL =
            T.let(
              :BRL,
              HubSpotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          BSD =
            T.let(
              :BSD,
              HubSpotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          BTN =
            T.let(
              :BTN,
              HubSpotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          BWP =
            T.let(
              :BWP,
              HubSpotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          BYN =
            T.let(
              :BYN,
              HubSpotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          BZD =
            T.let(
              :BZD,
              HubSpotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          CAD =
            T.let(
              :CAD,
              HubSpotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          CDF =
            T.let(
              :CDF,
              HubSpotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          CHE =
            T.let(
              :CHE,
              HubSpotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          CHF =
            T.let(
              :CHF,
              HubSpotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          CHW =
            T.let(
              :CHW,
              HubSpotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          CLF =
            T.let(
              :CLF,
              HubSpotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          CLP =
            T.let(
              :CLP,
              HubSpotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          CNY =
            T.let(
              :CNY,
              HubSpotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          COP =
            T.let(
              :COP,
              HubSpotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          COU =
            T.let(
              :COU,
              HubSpotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          CRC =
            T.let(
              :CRC,
              HubSpotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          CUC =
            T.let(
              :CUC,
              HubSpotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          CUP =
            T.let(
              :CUP,
              HubSpotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          CVE =
            T.let(
              :CVE,
              HubSpotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          CZK =
            T.let(
              :CZK,
              HubSpotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          DJF =
            T.let(
              :DJF,
              HubSpotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          DKK =
            T.let(
              :DKK,
              HubSpotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          DOP =
            T.let(
              :DOP,
              HubSpotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          DZD =
            T.let(
              :DZD,
              HubSpotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          EGP =
            T.let(
              :EGP,
              HubSpotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          ERN =
            T.let(
              :ERN,
              HubSpotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          ETB =
            T.let(
              :ETB,
              HubSpotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          EUR =
            T.let(
              :EUR,
              HubSpotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          FJD =
            T.let(
              :FJD,
              HubSpotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          FKP =
            T.let(
              :FKP,
              HubSpotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          GBP =
            T.let(
              :GBP,
              HubSpotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          GEL =
            T.let(
              :GEL,
              HubSpotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          GHS =
            T.let(
              :GHS,
              HubSpotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          GIP =
            T.let(
              :GIP,
              HubSpotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          GMD =
            T.let(
              :GMD,
              HubSpotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          GNF =
            T.let(
              :GNF,
              HubSpotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          GTQ =
            T.let(
              :GTQ,
              HubSpotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          GYD =
            T.let(
              :GYD,
              HubSpotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          HKD =
            T.let(
              :HKD,
              HubSpotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          HNL =
            T.let(
              :HNL,
              HubSpotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          HRK =
            T.let(
              :HRK,
              HubSpotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          HTG =
            T.let(
              :HTG,
              HubSpotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          HUF =
            T.let(
              :HUF,
              HubSpotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          IDR =
            T.let(
              :IDR,
              HubSpotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          ILS =
            T.let(
              :ILS,
              HubSpotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          INR =
            T.let(
              :INR,
              HubSpotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          IQD =
            T.let(
              :IQD,
              HubSpotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          IRR =
            T.let(
              :IRR,
              HubSpotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          ISK =
            T.let(
              :ISK,
              HubSpotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          JMD =
            T.let(
              :JMD,
              HubSpotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          JOD =
            T.let(
              :JOD,
              HubSpotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          JPY =
            T.let(
              :JPY,
              HubSpotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          KES =
            T.let(
              :KES,
              HubSpotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          KGS =
            T.let(
              :KGS,
              HubSpotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          KHR =
            T.let(
              :KHR,
              HubSpotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          KMF =
            T.let(
              :KMF,
              HubSpotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          KPW =
            T.let(
              :KPW,
              HubSpotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          KRW =
            T.let(
              :KRW,
              HubSpotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          KWD =
            T.let(
              :KWD,
              HubSpotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          KYD =
            T.let(
              :KYD,
              HubSpotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          KZT =
            T.let(
              :KZT,
              HubSpotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          LAK =
            T.let(
              :LAK,
              HubSpotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          LBP =
            T.let(
              :LBP,
              HubSpotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          LKR =
            T.let(
              :LKR,
              HubSpotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          LRD =
            T.let(
              :LRD,
              HubSpotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          LSL =
            T.let(
              :LSL,
              HubSpotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          LYD =
            T.let(
              :LYD,
              HubSpotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          MAD =
            T.let(
              :MAD,
              HubSpotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          MDL =
            T.let(
              :MDL,
              HubSpotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          MGA =
            T.let(
              :MGA,
              HubSpotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          MKD =
            T.let(
              :MKD,
              HubSpotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          MMK =
            T.let(
              :MMK,
              HubSpotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          MNT =
            T.let(
              :MNT,
              HubSpotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          MOP =
            T.let(
              :MOP,
              HubSpotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          MRU =
            T.let(
              :MRU,
              HubSpotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          MUR =
            T.let(
              :MUR,
              HubSpotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          MVR =
            T.let(
              :MVR,
              HubSpotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          MWK =
            T.let(
              :MWK,
              HubSpotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          MXN =
            T.let(
              :MXN,
              HubSpotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          MXV =
            T.let(
              :MXV,
              HubSpotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          MYR =
            T.let(
              :MYR,
              HubSpotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          MZN =
            T.let(
              :MZN,
              HubSpotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          NAD =
            T.let(
              :NAD,
              HubSpotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          NGN =
            T.let(
              :NGN,
              HubSpotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          NIO =
            T.let(
              :NIO,
              HubSpotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          NOK =
            T.let(
              :NOK,
              HubSpotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          NPR =
            T.let(
              :NPR,
              HubSpotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          NZD =
            T.let(
              :NZD,
              HubSpotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          OMR =
            T.let(
              :OMR,
              HubSpotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          PAB =
            T.let(
              :PAB,
              HubSpotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          PEN =
            T.let(
              :PEN,
              HubSpotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          PGK =
            T.let(
              :PGK,
              HubSpotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          PHP =
            T.let(
              :PHP,
              HubSpotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          PKR =
            T.let(
              :PKR,
              HubSpotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          PLN =
            T.let(
              :PLN,
              HubSpotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          PYG =
            T.let(
              :PYG,
              HubSpotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          QAR =
            T.let(
              :QAR,
              HubSpotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          RON =
            T.let(
              :RON,
              HubSpotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          RSD =
            T.let(
              :RSD,
              HubSpotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          RUB =
            T.let(
              :RUB,
              HubSpotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          RWF =
            T.let(
              :RWF,
              HubSpotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          SAR =
            T.let(
              :SAR,
              HubSpotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          SBD =
            T.let(
              :SBD,
              HubSpotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          SCR =
            T.let(
              :SCR,
              HubSpotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          SDG =
            T.let(
              :SDG,
              HubSpotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          SEK =
            T.let(
              :SEK,
              HubSpotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          SGD =
            T.let(
              :SGD,
              HubSpotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          SHP =
            T.let(
              :SHP,
              HubSpotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          SLL =
            T.let(
              :SLL,
              HubSpotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          SOS =
            T.let(
              :SOS,
              HubSpotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          SRD =
            T.let(
              :SRD,
              HubSpotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          SSP =
            T.let(
              :SSP,
              HubSpotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          STN =
            T.let(
              :STN,
              HubSpotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          SVC =
            T.let(
              :SVC,
              HubSpotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          SYP =
            T.let(
              :SYP,
              HubSpotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          SZL =
            T.let(
              :SZL,
              HubSpotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          THB =
            T.let(
              :THB,
              HubSpotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          TJS =
            T.let(
              :TJS,
              HubSpotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          TMT =
            T.let(
              :TMT,
              HubSpotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          TND =
            T.let(
              :TND,
              HubSpotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          TOP =
            T.let(
              :TOP,
              HubSpotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          TRY =
            T.let(
              :TRY,
              HubSpotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          TTD =
            T.let(
              :TTD,
              HubSpotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          TWD =
            T.let(
              :TWD,
              HubSpotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          TZS =
            T.let(
              :TZS,
              HubSpotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          UAH =
            T.let(
              :UAH,
              HubSpotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          UGX =
            T.let(
              :UGX,
              HubSpotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          USD =
            T.let(
              :USD,
              HubSpotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          USN =
            T.let(
              :USN,
              HubSpotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          UYI =
            T.let(
              :UYI,
              HubSpotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          UYU =
            T.let(
              :UYU,
              HubSpotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          UZS =
            T.let(
              :UZS,
              HubSpotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          VEF =
            T.let(
              :VEF,
              HubSpotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          VND =
            T.let(
              :VND,
              HubSpotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          VUV =
            T.let(
              :VUV,
              HubSpotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          WST =
            T.let(
              :WST,
              HubSpotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          XAF =
            T.let(
              :XAF,
              HubSpotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          XAG =
            T.let(
              :XAG,
              HubSpotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          XAU =
            T.let(
              :XAU,
              HubSpotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          XBA =
            T.let(
              :XBA,
              HubSpotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          XBB =
            T.let(
              :XBB,
              HubSpotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          XBC =
            T.let(
              :XBC,
              HubSpotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          XBD =
            T.let(
              :XBD,
              HubSpotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          XCD =
            T.let(
              :XCD,
              HubSpotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          XDR =
            T.let(
              :XDR,
              HubSpotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          XOF =
            T.let(
              :XOF,
              HubSpotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          XPD =
            T.let(
              :XPD,
              HubSpotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          XPF =
            T.let(
              :XPF,
              HubSpotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          XPT =
            T.let(
              :XPT,
              HubSpotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          XSU =
            T.let(
              :XSU,
              HubSpotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          XUA =
            T.let(
              :XUA,
              HubSpotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          YER =
            T.let(
              :YER,
              HubSpotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          ZAR =
            T.let(
              :ZAR,
              HubSpotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          ZMW =
            T.let(
              :ZMW,
              HubSpotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          ZWL =
            T.let(
              :ZWL,
              HubSpotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # This represents the three-letter currency code (such as USD for US Dollar) of
        # the currency you are converting to.
        module ToCurrencyCode
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubSpotSDK::Settings::ExchangeRate::ToCurrencyCode)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          AED =
            T.let(
              :AED,
              HubSpotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          AFN =
            T.let(
              :AFN,
              HubSpotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          ALL =
            T.let(
              :ALL,
              HubSpotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          AMD =
            T.let(
              :AMD,
              HubSpotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          ANG =
            T.let(
              :ANG,
              HubSpotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          AOA =
            T.let(
              :AOA,
              HubSpotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          ARS =
            T.let(
              :ARS,
              HubSpotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          AUD =
            T.let(
              :AUD,
              HubSpotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          AWG =
            T.let(
              :AWG,
              HubSpotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          AZN =
            T.let(
              :AZN,
              HubSpotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          BAM =
            T.let(
              :BAM,
              HubSpotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          BBD =
            T.let(
              :BBD,
              HubSpotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          BDT =
            T.let(
              :BDT,
              HubSpotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          BGN =
            T.let(
              :BGN,
              HubSpotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          BHD =
            T.let(
              :BHD,
              HubSpotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          BIF =
            T.let(
              :BIF,
              HubSpotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          BMD =
            T.let(
              :BMD,
              HubSpotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          BND =
            T.let(
              :BND,
              HubSpotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          BOB =
            T.let(
              :BOB,
              HubSpotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          BOV =
            T.let(
              :BOV,
              HubSpotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          BRL =
            T.let(
              :BRL,
              HubSpotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          BSD =
            T.let(
              :BSD,
              HubSpotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          BTN =
            T.let(
              :BTN,
              HubSpotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          BWP =
            T.let(
              :BWP,
              HubSpotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          BYN =
            T.let(
              :BYN,
              HubSpotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          BZD =
            T.let(
              :BZD,
              HubSpotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          CAD =
            T.let(
              :CAD,
              HubSpotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          CDF =
            T.let(
              :CDF,
              HubSpotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          CHE =
            T.let(
              :CHE,
              HubSpotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          CHF =
            T.let(
              :CHF,
              HubSpotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          CHW =
            T.let(
              :CHW,
              HubSpotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          CLF =
            T.let(
              :CLF,
              HubSpotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          CLP =
            T.let(
              :CLP,
              HubSpotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          CNY =
            T.let(
              :CNY,
              HubSpotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          COP =
            T.let(
              :COP,
              HubSpotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          COU =
            T.let(
              :COU,
              HubSpotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          CRC =
            T.let(
              :CRC,
              HubSpotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          CUC =
            T.let(
              :CUC,
              HubSpotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          CUP =
            T.let(
              :CUP,
              HubSpotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          CVE =
            T.let(
              :CVE,
              HubSpotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          CZK =
            T.let(
              :CZK,
              HubSpotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          DJF =
            T.let(
              :DJF,
              HubSpotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          DKK =
            T.let(
              :DKK,
              HubSpotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          DOP =
            T.let(
              :DOP,
              HubSpotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          DZD =
            T.let(
              :DZD,
              HubSpotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          EGP =
            T.let(
              :EGP,
              HubSpotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          ERN =
            T.let(
              :ERN,
              HubSpotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          ETB =
            T.let(
              :ETB,
              HubSpotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          EUR =
            T.let(
              :EUR,
              HubSpotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          FJD =
            T.let(
              :FJD,
              HubSpotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          FKP =
            T.let(
              :FKP,
              HubSpotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          GBP =
            T.let(
              :GBP,
              HubSpotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          GEL =
            T.let(
              :GEL,
              HubSpotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          GHS =
            T.let(
              :GHS,
              HubSpotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          GIP =
            T.let(
              :GIP,
              HubSpotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          GMD =
            T.let(
              :GMD,
              HubSpotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          GNF =
            T.let(
              :GNF,
              HubSpotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          GTQ =
            T.let(
              :GTQ,
              HubSpotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          GYD =
            T.let(
              :GYD,
              HubSpotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          HKD =
            T.let(
              :HKD,
              HubSpotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          HNL =
            T.let(
              :HNL,
              HubSpotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          HRK =
            T.let(
              :HRK,
              HubSpotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          HTG =
            T.let(
              :HTG,
              HubSpotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          HUF =
            T.let(
              :HUF,
              HubSpotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          IDR =
            T.let(
              :IDR,
              HubSpotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          ILS =
            T.let(
              :ILS,
              HubSpotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          INR =
            T.let(
              :INR,
              HubSpotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          IQD =
            T.let(
              :IQD,
              HubSpotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          IRR =
            T.let(
              :IRR,
              HubSpotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          ISK =
            T.let(
              :ISK,
              HubSpotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          JMD =
            T.let(
              :JMD,
              HubSpotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          JOD =
            T.let(
              :JOD,
              HubSpotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          JPY =
            T.let(
              :JPY,
              HubSpotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          KES =
            T.let(
              :KES,
              HubSpotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          KGS =
            T.let(
              :KGS,
              HubSpotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          KHR =
            T.let(
              :KHR,
              HubSpotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          KMF =
            T.let(
              :KMF,
              HubSpotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          KPW =
            T.let(
              :KPW,
              HubSpotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          KRW =
            T.let(
              :KRW,
              HubSpotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          KWD =
            T.let(
              :KWD,
              HubSpotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          KYD =
            T.let(
              :KYD,
              HubSpotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          KZT =
            T.let(
              :KZT,
              HubSpotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          LAK =
            T.let(
              :LAK,
              HubSpotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          LBP =
            T.let(
              :LBP,
              HubSpotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          LKR =
            T.let(
              :LKR,
              HubSpotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          LRD =
            T.let(
              :LRD,
              HubSpotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          LSL =
            T.let(
              :LSL,
              HubSpotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          LYD =
            T.let(
              :LYD,
              HubSpotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          MAD =
            T.let(
              :MAD,
              HubSpotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          MDL =
            T.let(
              :MDL,
              HubSpotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          MGA =
            T.let(
              :MGA,
              HubSpotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          MKD =
            T.let(
              :MKD,
              HubSpotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          MMK =
            T.let(
              :MMK,
              HubSpotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          MNT =
            T.let(
              :MNT,
              HubSpotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          MOP =
            T.let(
              :MOP,
              HubSpotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          MRU =
            T.let(
              :MRU,
              HubSpotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          MUR =
            T.let(
              :MUR,
              HubSpotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          MVR =
            T.let(
              :MVR,
              HubSpotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          MWK =
            T.let(
              :MWK,
              HubSpotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          MXN =
            T.let(
              :MXN,
              HubSpotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          MXV =
            T.let(
              :MXV,
              HubSpotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          MYR =
            T.let(
              :MYR,
              HubSpotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          MZN =
            T.let(
              :MZN,
              HubSpotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          NAD =
            T.let(
              :NAD,
              HubSpotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          NGN =
            T.let(
              :NGN,
              HubSpotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          NIO =
            T.let(
              :NIO,
              HubSpotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          NOK =
            T.let(
              :NOK,
              HubSpotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          NPR =
            T.let(
              :NPR,
              HubSpotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          NZD =
            T.let(
              :NZD,
              HubSpotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          OMR =
            T.let(
              :OMR,
              HubSpotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          PAB =
            T.let(
              :PAB,
              HubSpotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          PEN =
            T.let(
              :PEN,
              HubSpotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          PGK =
            T.let(
              :PGK,
              HubSpotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          PHP =
            T.let(
              :PHP,
              HubSpotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          PKR =
            T.let(
              :PKR,
              HubSpotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          PLN =
            T.let(
              :PLN,
              HubSpotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          PYG =
            T.let(
              :PYG,
              HubSpotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          QAR =
            T.let(
              :QAR,
              HubSpotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          RON =
            T.let(
              :RON,
              HubSpotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          RSD =
            T.let(
              :RSD,
              HubSpotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          RUB =
            T.let(
              :RUB,
              HubSpotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          RWF =
            T.let(
              :RWF,
              HubSpotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          SAR =
            T.let(
              :SAR,
              HubSpotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          SBD =
            T.let(
              :SBD,
              HubSpotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          SCR =
            T.let(
              :SCR,
              HubSpotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          SDG =
            T.let(
              :SDG,
              HubSpotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          SEK =
            T.let(
              :SEK,
              HubSpotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          SGD =
            T.let(
              :SGD,
              HubSpotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          SHP =
            T.let(
              :SHP,
              HubSpotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          SLL =
            T.let(
              :SLL,
              HubSpotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          SOS =
            T.let(
              :SOS,
              HubSpotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          SRD =
            T.let(
              :SRD,
              HubSpotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          SSP =
            T.let(
              :SSP,
              HubSpotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          STN =
            T.let(
              :STN,
              HubSpotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          SVC =
            T.let(
              :SVC,
              HubSpotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          SYP =
            T.let(
              :SYP,
              HubSpotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          SZL =
            T.let(
              :SZL,
              HubSpotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          THB =
            T.let(
              :THB,
              HubSpotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          TJS =
            T.let(
              :TJS,
              HubSpotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          TMT =
            T.let(
              :TMT,
              HubSpotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          TND =
            T.let(
              :TND,
              HubSpotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          TOP =
            T.let(
              :TOP,
              HubSpotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          TRY =
            T.let(
              :TRY,
              HubSpotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          TTD =
            T.let(
              :TTD,
              HubSpotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          TWD =
            T.let(
              :TWD,
              HubSpotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          TZS =
            T.let(
              :TZS,
              HubSpotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          UAH =
            T.let(
              :UAH,
              HubSpotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          UGX =
            T.let(
              :UGX,
              HubSpotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          USD =
            T.let(
              :USD,
              HubSpotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          USN =
            T.let(
              :USN,
              HubSpotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          UYI =
            T.let(
              :UYI,
              HubSpotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          UYU =
            T.let(
              :UYU,
              HubSpotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          UZS =
            T.let(
              :UZS,
              HubSpotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          VEF =
            T.let(
              :VEF,
              HubSpotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          VND =
            T.let(
              :VND,
              HubSpotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          VUV =
            T.let(
              :VUV,
              HubSpotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          WST =
            T.let(
              :WST,
              HubSpotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          XAF =
            T.let(
              :XAF,
              HubSpotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          XAG =
            T.let(
              :XAG,
              HubSpotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          XAU =
            T.let(
              :XAU,
              HubSpotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          XBA =
            T.let(
              :XBA,
              HubSpotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          XBB =
            T.let(
              :XBB,
              HubSpotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          XBC =
            T.let(
              :XBC,
              HubSpotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          XBD =
            T.let(
              :XBD,
              HubSpotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          XCD =
            T.let(
              :XCD,
              HubSpotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          XDR =
            T.let(
              :XDR,
              HubSpotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          XOF =
            T.let(
              :XOF,
              HubSpotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          XPD =
            T.let(
              :XPD,
              HubSpotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          XPF =
            T.let(
              :XPF,
              HubSpotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          XPT =
            T.let(
              :XPT,
              HubSpotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          XSU =
            T.let(
              :XSU,
              HubSpotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          XUA =
            T.let(
              :XUA,
              HubSpotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          YER =
            T.let(
              :YER,
              HubSpotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          ZAR =
            T.let(
              :ZAR,
              HubSpotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          ZMW =
            T.let(
              :ZMW,
              HubSpotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          ZWL =
            T.let(
              :ZWL,
              HubSpotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
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
