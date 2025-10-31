# typed: strong

module HubspotSDK
  module Models
    module Settings
      class ExchangeRate < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Settings::ExchangeRate,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :id

        sig { returns(Float) }
        attr_accessor :conversion_rate

        sig { returns(Time) }
        attr_accessor :created_at

        sig { returns(Time) }
        attr_accessor :effective_at

        sig do
          returns(
            HubspotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
          )
        end
        attr_accessor :from_currency_code

        sig do
          returns(
            HubspotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
          )
        end
        attr_accessor :to_currency_code

        sig { returns(Time) }
        attr_accessor :updated_at

        sig { returns(T::Boolean) }
        attr_accessor :visible_in_ui

        sig do
          params(
            id: String,
            conversion_rate: Float,
            created_at: Time,
            effective_at: Time,
            from_currency_code:
              HubspotSDK::Settings::ExchangeRate::FromCurrencyCode::OrSymbol,
            to_currency_code:
              HubspotSDK::Settings::ExchangeRate::ToCurrencyCode::OrSymbol,
            updated_at: Time,
            visible_in_ui: T::Boolean
          ).returns(T.attached_class)
        end
        def self.new(
          id:,
          conversion_rate:,
          created_at:,
          effective_at:,
          from_currency_code:,
          to_currency_code:,
          updated_at:,
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
                HubspotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol,
              to_currency_code:
                HubspotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol,
              updated_at: Time,
              visible_in_ui: T::Boolean
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
                HubspotSDK::Settings::ExchangeRate::FromCurrencyCode
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          AED =
            T.let(
              :AED,
              HubspotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          AFN =
            T.let(
              :AFN,
              HubspotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          ALL =
            T.let(
              :ALL,
              HubspotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          AMD =
            T.let(
              :AMD,
              HubspotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          ANG =
            T.let(
              :ANG,
              HubspotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          AOA =
            T.let(
              :AOA,
              HubspotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          ARS =
            T.let(
              :ARS,
              HubspotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          AUD =
            T.let(
              :AUD,
              HubspotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          AWG =
            T.let(
              :AWG,
              HubspotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          AZN =
            T.let(
              :AZN,
              HubspotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          BAM =
            T.let(
              :BAM,
              HubspotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          BBD =
            T.let(
              :BBD,
              HubspotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          BDT =
            T.let(
              :BDT,
              HubspotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          BGN =
            T.let(
              :BGN,
              HubspotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          BHD =
            T.let(
              :BHD,
              HubspotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          BIF =
            T.let(
              :BIF,
              HubspotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          BMD =
            T.let(
              :BMD,
              HubspotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          BND =
            T.let(
              :BND,
              HubspotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          BOB =
            T.let(
              :BOB,
              HubspotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          BOV =
            T.let(
              :BOV,
              HubspotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          BRL =
            T.let(
              :BRL,
              HubspotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          BSD =
            T.let(
              :BSD,
              HubspotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          BTN =
            T.let(
              :BTN,
              HubspotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          BWP =
            T.let(
              :BWP,
              HubspotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          BYN =
            T.let(
              :BYN,
              HubspotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          BZD =
            T.let(
              :BZD,
              HubspotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          CAD =
            T.let(
              :CAD,
              HubspotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          CDF =
            T.let(
              :CDF,
              HubspotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          CHE =
            T.let(
              :CHE,
              HubspotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          CHF =
            T.let(
              :CHF,
              HubspotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          CHW =
            T.let(
              :CHW,
              HubspotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          CLF =
            T.let(
              :CLF,
              HubspotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          CLP =
            T.let(
              :CLP,
              HubspotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          CNY =
            T.let(
              :CNY,
              HubspotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          COP =
            T.let(
              :COP,
              HubspotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          COU =
            T.let(
              :COU,
              HubspotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          CRC =
            T.let(
              :CRC,
              HubspotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          CUC =
            T.let(
              :CUC,
              HubspotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          CUP =
            T.let(
              :CUP,
              HubspotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          CVE =
            T.let(
              :CVE,
              HubspotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          CZK =
            T.let(
              :CZK,
              HubspotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          DJF =
            T.let(
              :DJF,
              HubspotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          DKK =
            T.let(
              :DKK,
              HubspotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          DOP =
            T.let(
              :DOP,
              HubspotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          DZD =
            T.let(
              :DZD,
              HubspotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          EGP =
            T.let(
              :EGP,
              HubspotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          ERN =
            T.let(
              :ERN,
              HubspotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          ETB =
            T.let(
              :ETB,
              HubspotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          EUR =
            T.let(
              :EUR,
              HubspotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          FJD =
            T.let(
              :FJD,
              HubspotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          FKP =
            T.let(
              :FKP,
              HubspotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          GBP =
            T.let(
              :GBP,
              HubspotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          GEL =
            T.let(
              :GEL,
              HubspotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          GHS =
            T.let(
              :GHS,
              HubspotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          GIP =
            T.let(
              :GIP,
              HubspotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          GMD =
            T.let(
              :GMD,
              HubspotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          GNF =
            T.let(
              :GNF,
              HubspotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          GTQ =
            T.let(
              :GTQ,
              HubspotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          GYD =
            T.let(
              :GYD,
              HubspotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          HKD =
            T.let(
              :HKD,
              HubspotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          HNL =
            T.let(
              :HNL,
              HubspotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          HRK =
            T.let(
              :HRK,
              HubspotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          HTG =
            T.let(
              :HTG,
              HubspotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          HUF =
            T.let(
              :HUF,
              HubspotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          IDR =
            T.let(
              :IDR,
              HubspotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          ILS =
            T.let(
              :ILS,
              HubspotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          INR =
            T.let(
              :INR,
              HubspotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          IQD =
            T.let(
              :IQD,
              HubspotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          IRR =
            T.let(
              :IRR,
              HubspotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          ISK =
            T.let(
              :ISK,
              HubspotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          JMD =
            T.let(
              :JMD,
              HubspotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          JOD =
            T.let(
              :JOD,
              HubspotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          JPY =
            T.let(
              :JPY,
              HubspotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          KES =
            T.let(
              :KES,
              HubspotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          KGS =
            T.let(
              :KGS,
              HubspotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          KHR =
            T.let(
              :KHR,
              HubspotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          KMF =
            T.let(
              :KMF,
              HubspotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          KPW =
            T.let(
              :KPW,
              HubspotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          KRW =
            T.let(
              :KRW,
              HubspotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          KWD =
            T.let(
              :KWD,
              HubspotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          KYD =
            T.let(
              :KYD,
              HubspotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          KZT =
            T.let(
              :KZT,
              HubspotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          LAK =
            T.let(
              :LAK,
              HubspotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          LBP =
            T.let(
              :LBP,
              HubspotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          LKR =
            T.let(
              :LKR,
              HubspotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          LRD =
            T.let(
              :LRD,
              HubspotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          LSL =
            T.let(
              :LSL,
              HubspotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          LYD =
            T.let(
              :LYD,
              HubspotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          MAD =
            T.let(
              :MAD,
              HubspotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          MDL =
            T.let(
              :MDL,
              HubspotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          MGA =
            T.let(
              :MGA,
              HubspotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          MKD =
            T.let(
              :MKD,
              HubspotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          MMK =
            T.let(
              :MMK,
              HubspotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          MNT =
            T.let(
              :MNT,
              HubspotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          MOP =
            T.let(
              :MOP,
              HubspotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          MRU =
            T.let(
              :MRU,
              HubspotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          MUR =
            T.let(
              :MUR,
              HubspotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          MVR =
            T.let(
              :MVR,
              HubspotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          MWK =
            T.let(
              :MWK,
              HubspotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          MXN =
            T.let(
              :MXN,
              HubspotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          MXV =
            T.let(
              :MXV,
              HubspotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          MYR =
            T.let(
              :MYR,
              HubspotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          MZN =
            T.let(
              :MZN,
              HubspotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          NAD =
            T.let(
              :NAD,
              HubspotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          NGN =
            T.let(
              :NGN,
              HubspotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          NIO =
            T.let(
              :NIO,
              HubspotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          NOK =
            T.let(
              :NOK,
              HubspotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          NPR =
            T.let(
              :NPR,
              HubspotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          NZD =
            T.let(
              :NZD,
              HubspotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          OMR =
            T.let(
              :OMR,
              HubspotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          PAB =
            T.let(
              :PAB,
              HubspotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          PEN =
            T.let(
              :PEN,
              HubspotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          PGK =
            T.let(
              :PGK,
              HubspotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          PHP =
            T.let(
              :PHP,
              HubspotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          PKR =
            T.let(
              :PKR,
              HubspotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          PLN =
            T.let(
              :PLN,
              HubspotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          PYG =
            T.let(
              :PYG,
              HubspotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          QAR =
            T.let(
              :QAR,
              HubspotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          RON =
            T.let(
              :RON,
              HubspotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          RSD =
            T.let(
              :RSD,
              HubspotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          RUB =
            T.let(
              :RUB,
              HubspotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          RWF =
            T.let(
              :RWF,
              HubspotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          SAR =
            T.let(
              :SAR,
              HubspotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          SBD =
            T.let(
              :SBD,
              HubspotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          SCR =
            T.let(
              :SCR,
              HubspotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          SDG =
            T.let(
              :SDG,
              HubspotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          SEK =
            T.let(
              :SEK,
              HubspotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          SGD =
            T.let(
              :SGD,
              HubspotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          SHP =
            T.let(
              :SHP,
              HubspotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          SLL =
            T.let(
              :SLL,
              HubspotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          SOS =
            T.let(
              :SOS,
              HubspotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          SRD =
            T.let(
              :SRD,
              HubspotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          SSP =
            T.let(
              :SSP,
              HubspotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          STN =
            T.let(
              :STN,
              HubspotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          SVC =
            T.let(
              :SVC,
              HubspotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          SYP =
            T.let(
              :SYP,
              HubspotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          SZL =
            T.let(
              :SZL,
              HubspotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          THB =
            T.let(
              :THB,
              HubspotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          TJS =
            T.let(
              :TJS,
              HubspotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          TMT =
            T.let(
              :TMT,
              HubspotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          TND =
            T.let(
              :TND,
              HubspotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          TOP =
            T.let(
              :TOP,
              HubspotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          TRY =
            T.let(
              :TRY,
              HubspotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          TTD =
            T.let(
              :TTD,
              HubspotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          TWD =
            T.let(
              :TWD,
              HubspotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          TZS =
            T.let(
              :TZS,
              HubspotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          UAH =
            T.let(
              :UAH,
              HubspotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          UGX =
            T.let(
              :UGX,
              HubspotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          USD =
            T.let(
              :USD,
              HubspotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          USN =
            T.let(
              :USN,
              HubspotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          UYI =
            T.let(
              :UYI,
              HubspotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          UYU =
            T.let(
              :UYU,
              HubspotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          UZS =
            T.let(
              :UZS,
              HubspotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          VEF =
            T.let(
              :VEF,
              HubspotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          VND =
            T.let(
              :VND,
              HubspotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          VUV =
            T.let(
              :VUV,
              HubspotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          WST =
            T.let(
              :WST,
              HubspotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          XAF =
            T.let(
              :XAF,
              HubspotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          XAG =
            T.let(
              :XAG,
              HubspotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          XAU =
            T.let(
              :XAU,
              HubspotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          XBA =
            T.let(
              :XBA,
              HubspotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          XBB =
            T.let(
              :XBB,
              HubspotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          XBC =
            T.let(
              :XBC,
              HubspotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          XBD =
            T.let(
              :XBD,
              HubspotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          XCD =
            T.let(
              :XCD,
              HubspotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          XDR =
            T.let(
              :XDR,
              HubspotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          XOF =
            T.let(
              :XOF,
              HubspotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          XPD =
            T.let(
              :XPD,
              HubspotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          XPF =
            T.let(
              :XPF,
              HubspotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          XPT =
            T.let(
              :XPT,
              HubspotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          XSU =
            T.let(
              :XSU,
              HubspotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          XUA =
            T.let(
              :XUA,
              HubspotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          YER =
            T.let(
              :YER,
              HubspotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          ZAR =
            T.let(
              :ZAR,
              HubspotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          ZMW =
            T.let(
              :ZMW,
              HubspotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )
          ZWL =
            T.let(
              :ZWL,
              HubspotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Settings::ExchangeRate::FromCurrencyCode::TaggedSymbol
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
              T.all(Symbol, HubspotSDK::Settings::ExchangeRate::ToCurrencyCode)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          AED =
            T.let(
              :AED,
              HubspotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          AFN =
            T.let(
              :AFN,
              HubspotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          ALL =
            T.let(
              :ALL,
              HubspotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          AMD =
            T.let(
              :AMD,
              HubspotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          ANG =
            T.let(
              :ANG,
              HubspotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          AOA =
            T.let(
              :AOA,
              HubspotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          ARS =
            T.let(
              :ARS,
              HubspotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          AUD =
            T.let(
              :AUD,
              HubspotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          AWG =
            T.let(
              :AWG,
              HubspotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          AZN =
            T.let(
              :AZN,
              HubspotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          BAM =
            T.let(
              :BAM,
              HubspotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          BBD =
            T.let(
              :BBD,
              HubspotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          BDT =
            T.let(
              :BDT,
              HubspotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          BGN =
            T.let(
              :BGN,
              HubspotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          BHD =
            T.let(
              :BHD,
              HubspotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          BIF =
            T.let(
              :BIF,
              HubspotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          BMD =
            T.let(
              :BMD,
              HubspotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          BND =
            T.let(
              :BND,
              HubspotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          BOB =
            T.let(
              :BOB,
              HubspotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          BOV =
            T.let(
              :BOV,
              HubspotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          BRL =
            T.let(
              :BRL,
              HubspotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          BSD =
            T.let(
              :BSD,
              HubspotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          BTN =
            T.let(
              :BTN,
              HubspotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          BWP =
            T.let(
              :BWP,
              HubspotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          BYN =
            T.let(
              :BYN,
              HubspotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          BZD =
            T.let(
              :BZD,
              HubspotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          CAD =
            T.let(
              :CAD,
              HubspotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          CDF =
            T.let(
              :CDF,
              HubspotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          CHE =
            T.let(
              :CHE,
              HubspotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          CHF =
            T.let(
              :CHF,
              HubspotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          CHW =
            T.let(
              :CHW,
              HubspotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          CLF =
            T.let(
              :CLF,
              HubspotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          CLP =
            T.let(
              :CLP,
              HubspotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          CNY =
            T.let(
              :CNY,
              HubspotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          COP =
            T.let(
              :COP,
              HubspotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          COU =
            T.let(
              :COU,
              HubspotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          CRC =
            T.let(
              :CRC,
              HubspotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          CUC =
            T.let(
              :CUC,
              HubspotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          CUP =
            T.let(
              :CUP,
              HubspotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          CVE =
            T.let(
              :CVE,
              HubspotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          CZK =
            T.let(
              :CZK,
              HubspotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          DJF =
            T.let(
              :DJF,
              HubspotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          DKK =
            T.let(
              :DKK,
              HubspotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          DOP =
            T.let(
              :DOP,
              HubspotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          DZD =
            T.let(
              :DZD,
              HubspotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          EGP =
            T.let(
              :EGP,
              HubspotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          ERN =
            T.let(
              :ERN,
              HubspotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          ETB =
            T.let(
              :ETB,
              HubspotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          EUR =
            T.let(
              :EUR,
              HubspotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          FJD =
            T.let(
              :FJD,
              HubspotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          FKP =
            T.let(
              :FKP,
              HubspotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          GBP =
            T.let(
              :GBP,
              HubspotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          GEL =
            T.let(
              :GEL,
              HubspotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          GHS =
            T.let(
              :GHS,
              HubspotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          GIP =
            T.let(
              :GIP,
              HubspotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          GMD =
            T.let(
              :GMD,
              HubspotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          GNF =
            T.let(
              :GNF,
              HubspotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          GTQ =
            T.let(
              :GTQ,
              HubspotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          GYD =
            T.let(
              :GYD,
              HubspotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          HKD =
            T.let(
              :HKD,
              HubspotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          HNL =
            T.let(
              :HNL,
              HubspotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          HRK =
            T.let(
              :HRK,
              HubspotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          HTG =
            T.let(
              :HTG,
              HubspotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          HUF =
            T.let(
              :HUF,
              HubspotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          IDR =
            T.let(
              :IDR,
              HubspotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          ILS =
            T.let(
              :ILS,
              HubspotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          INR =
            T.let(
              :INR,
              HubspotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          IQD =
            T.let(
              :IQD,
              HubspotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          IRR =
            T.let(
              :IRR,
              HubspotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          ISK =
            T.let(
              :ISK,
              HubspotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          JMD =
            T.let(
              :JMD,
              HubspotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          JOD =
            T.let(
              :JOD,
              HubspotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          JPY =
            T.let(
              :JPY,
              HubspotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          KES =
            T.let(
              :KES,
              HubspotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          KGS =
            T.let(
              :KGS,
              HubspotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          KHR =
            T.let(
              :KHR,
              HubspotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          KMF =
            T.let(
              :KMF,
              HubspotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          KPW =
            T.let(
              :KPW,
              HubspotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          KRW =
            T.let(
              :KRW,
              HubspotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          KWD =
            T.let(
              :KWD,
              HubspotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          KYD =
            T.let(
              :KYD,
              HubspotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          KZT =
            T.let(
              :KZT,
              HubspotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          LAK =
            T.let(
              :LAK,
              HubspotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          LBP =
            T.let(
              :LBP,
              HubspotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          LKR =
            T.let(
              :LKR,
              HubspotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          LRD =
            T.let(
              :LRD,
              HubspotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          LSL =
            T.let(
              :LSL,
              HubspotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          LYD =
            T.let(
              :LYD,
              HubspotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          MAD =
            T.let(
              :MAD,
              HubspotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          MDL =
            T.let(
              :MDL,
              HubspotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          MGA =
            T.let(
              :MGA,
              HubspotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          MKD =
            T.let(
              :MKD,
              HubspotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          MMK =
            T.let(
              :MMK,
              HubspotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          MNT =
            T.let(
              :MNT,
              HubspotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          MOP =
            T.let(
              :MOP,
              HubspotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          MRU =
            T.let(
              :MRU,
              HubspotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          MUR =
            T.let(
              :MUR,
              HubspotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          MVR =
            T.let(
              :MVR,
              HubspotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          MWK =
            T.let(
              :MWK,
              HubspotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          MXN =
            T.let(
              :MXN,
              HubspotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          MXV =
            T.let(
              :MXV,
              HubspotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          MYR =
            T.let(
              :MYR,
              HubspotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          MZN =
            T.let(
              :MZN,
              HubspotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          NAD =
            T.let(
              :NAD,
              HubspotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          NGN =
            T.let(
              :NGN,
              HubspotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          NIO =
            T.let(
              :NIO,
              HubspotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          NOK =
            T.let(
              :NOK,
              HubspotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          NPR =
            T.let(
              :NPR,
              HubspotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          NZD =
            T.let(
              :NZD,
              HubspotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          OMR =
            T.let(
              :OMR,
              HubspotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          PAB =
            T.let(
              :PAB,
              HubspotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          PEN =
            T.let(
              :PEN,
              HubspotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          PGK =
            T.let(
              :PGK,
              HubspotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          PHP =
            T.let(
              :PHP,
              HubspotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          PKR =
            T.let(
              :PKR,
              HubspotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          PLN =
            T.let(
              :PLN,
              HubspotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          PYG =
            T.let(
              :PYG,
              HubspotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          QAR =
            T.let(
              :QAR,
              HubspotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          RON =
            T.let(
              :RON,
              HubspotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          RSD =
            T.let(
              :RSD,
              HubspotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          RUB =
            T.let(
              :RUB,
              HubspotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          RWF =
            T.let(
              :RWF,
              HubspotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          SAR =
            T.let(
              :SAR,
              HubspotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          SBD =
            T.let(
              :SBD,
              HubspotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          SCR =
            T.let(
              :SCR,
              HubspotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          SDG =
            T.let(
              :SDG,
              HubspotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          SEK =
            T.let(
              :SEK,
              HubspotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          SGD =
            T.let(
              :SGD,
              HubspotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          SHP =
            T.let(
              :SHP,
              HubspotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          SLL =
            T.let(
              :SLL,
              HubspotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          SOS =
            T.let(
              :SOS,
              HubspotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          SRD =
            T.let(
              :SRD,
              HubspotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          SSP =
            T.let(
              :SSP,
              HubspotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          STN =
            T.let(
              :STN,
              HubspotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          SVC =
            T.let(
              :SVC,
              HubspotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          SYP =
            T.let(
              :SYP,
              HubspotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          SZL =
            T.let(
              :SZL,
              HubspotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          THB =
            T.let(
              :THB,
              HubspotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          TJS =
            T.let(
              :TJS,
              HubspotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          TMT =
            T.let(
              :TMT,
              HubspotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          TND =
            T.let(
              :TND,
              HubspotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          TOP =
            T.let(
              :TOP,
              HubspotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          TRY =
            T.let(
              :TRY,
              HubspotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          TTD =
            T.let(
              :TTD,
              HubspotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          TWD =
            T.let(
              :TWD,
              HubspotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          TZS =
            T.let(
              :TZS,
              HubspotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          UAH =
            T.let(
              :UAH,
              HubspotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          UGX =
            T.let(
              :UGX,
              HubspotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          USD =
            T.let(
              :USD,
              HubspotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          USN =
            T.let(
              :USN,
              HubspotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          UYI =
            T.let(
              :UYI,
              HubspotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          UYU =
            T.let(
              :UYU,
              HubspotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          UZS =
            T.let(
              :UZS,
              HubspotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          VEF =
            T.let(
              :VEF,
              HubspotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          VND =
            T.let(
              :VND,
              HubspotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          VUV =
            T.let(
              :VUV,
              HubspotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          WST =
            T.let(
              :WST,
              HubspotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          XAF =
            T.let(
              :XAF,
              HubspotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          XAG =
            T.let(
              :XAG,
              HubspotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          XAU =
            T.let(
              :XAU,
              HubspotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          XBA =
            T.let(
              :XBA,
              HubspotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          XBB =
            T.let(
              :XBB,
              HubspotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          XBC =
            T.let(
              :XBC,
              HubspotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          XBD =
            T.let(
              :XBD,
              HubspotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          XCD =
            T.let(
              :XCD,
              HubspotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          XDR =
            T.let(
              :XDR,
              HubspotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          XOF =
            T.let(
              :XOF,
              HubspotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          XPD =
            T.let(
              :XPD,
              HubspotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          XPF =
            T.let(
              :XPF,
              HubspotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          XPT =
            T.let(
              :XPT,
              HubspotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          XSU =
            T.let(
              :XSU,
              HubspotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          XUA =
            T.let(
              :XUA,
              HubspotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          YER =
            T.let(
              :YER,
              HubspotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          ZAR =
            T.let(
              :ZAR,
              HubspotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          ZMW =
            T.let(
              :ZMW,
              HubspotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )
          ZWL =
            T.let(
              :ZWL,
              HubspotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Settings::ExchangeRate::ToCurrencyCode::TaggedSymbol
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
