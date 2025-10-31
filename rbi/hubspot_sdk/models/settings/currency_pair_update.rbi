# typed: strong

module HubspotSDK
  module Models
    module Settings
      class CurrencyPairUpdate < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Settings::CurrencyPairUpdate,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig do
          returns(
            HubspotSDK::Settings::CurrencyPairUpdate::FromCurrencyCode::OrSymbol
          )
        end
        attr_accessor :from_currency_code

        sig do
          returns(
            HubspotSDK::Settings::CurrencyPairUpdate::ToCurrencyCode::OrSymbol
          )
        end
        attr_accessor :to_currency_code

        sig { returns(T::Boolean) }
        attr_accessor :visible_in_ui

        sig do
          params(
            from_currency_code:
              HubspotSDK::Settings::CurrencyPairUpdate::FromCurrencyCode::OrSymbol,
            to_currency_code:
              HubspotSDK::Settings::CurrencyPairUpdate::ToCurrencyCode::OrSymbol,
            visible_in_ui: T::Boolean
          ).returns(T.attached_class)
        end
        def self.new(from_currency_code:, to_currency_code:, visible_in_ui:)
        end

        sig do
          override.returns(
            {
              from_currency_code:
                HubspotSDK::Settings::CurrencyPairUpdate::FromCurrencyCode::OrSymbol,
              to_currency_code:
                HubspotSDK::Settings::CurrencyPairUpdate::ToCurrencyCode::OrSymbol,
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
                HubspotSDK::Settings::CurrencyPairUpdate::FromCurrencyCode
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          AED =
            T.let(
              :AED,
              HubspotSDK::Settings::CurrencyPairUpdate::FromCurrencyCode::TaggedSymbol
            )
          AFN =
            T.let(
              :AFN,
              HubspotSDK::Settings::CurrencyPairUpdate::FromCurrencyCode::TaggedSymbol
            )
          ALL =
            T.let(
              :ALL,
              HubspotSDK::Settings::CurrencyPairUpdate::FromCurrencyCode::TaggedSymbol
            )
          AMD =
            T.let(
              :AMD,
              HubspotSDK::Settings::CurrencyPairUpdate::FromCurrencyCode::TaggedSymbol
            )
          ANG =
            T.let(
              :ANG,
              HubspotSDK::Settings::CurrencyPairUpdate::FromCurrencyCode::TaggedSymbol
            )
          AOA =
            T.let(
              :AOA,
              HubspotSDK::Settings::CurrencyPairUpdate::FromCurrencyCode::TaggedSymbol
            )
          ARS =
            T.let(
              :ARS,
              HubspotSDK::Settings::CurrencyPairUpdate::FromCurrencyCode::TaggedSymbol
            )
          AUD =
            T.let(
              :AUD,
              HubspotSDK::Settings::CurrencyPairUpdate::FromCurrencyCode::TaggedSymbol
            )
          AWG =
            T.let(
              :AWG,
              HubspotSDK::Settings::CurrencyPairUpdate::FromCurrencyCode::TaggedSymbol
            )
          AZN =
            T.let(
              :AZN,
              HubspotSDK::Settings::CurrencyPairUpdate::FromCurrencyCode::TaggedSymbol
            )
          BAM =
            T.let(
              :BAM,
              HubspotSDK::Settings::CurrencyPairUpdate::FromCurrencyCode::TaggedSymbol
            )
          BBD =
            T.let(
              :BBD,
              HubspotSDK::Settings::CurrencyPairUpdate::FromCurrencyCode::TaggedSymbol
            )
          BDT =
            T.let(
              :BDT,
              HubspotSDK::Settings::CurrencyPairUpdate::FromCurrencyCode::TaggedSymbol
            )
          BGN =
            T.let(
              :BGN,
              HubspotSDK::Settings::CurrencyPairUpdate::FromCurrencyCode::TaggedSymbol
            )
          BHD =
            T.let(
              :BHD,
              HubspotSDK::Settings::CurrencyPairUpdate::FromCurrencyCode::TaggedSymbol
            )
          BIF =
            T.let(
              :BIF,
              HubspotSDK::Settings::CurrencyPairUpdate::FromCurrencyCode::TaggedSymbol
            )
          BMD =
            T.let(
              :BMD,
              HubspotSDK::Settings::CurrencyPairUpdate::FromCurrencyCode::TaggedSymbol
            )
          BND =
            T.let(
              :BND,
              HubspotSDK::Settings::CurrencyPairUpdate::FromCurrencyCode::TaggedSymbol
            )
          BOB =
            T.let(
              :BOB,
              HubspotSDK::Settings::CurrencyPairUpdate::FromCurrencyCode::TaggedSymbol
            )
          BOV =
            T.let(
              :BOV,
              HubspotSDK::Settings::CurrencyPairUpdate::FromCurrencyCode::TaggedSymbol
            )
          BRL =
            T.let(
              :BRL,
              HubspotSDK::Settings::CurrencyPairUpdate::FromCurrencyCode::TaggedSymbol
            )
          BSD =
            T.let(
              :BSD,
              HubspotSDK::Settings::CurrencyPairUpdate::FromCurrencyCode::TaggedSymbol
            )
          BTN =
            T.let(
              :BTN,
              HubspotSDK::Settings::CurrencyPairUpdate::FromCurrencyCode::TaggedSymbol
            )
          BWP =
            T.let(
              :BWP,
              HubspotSDK::Settings::CurrencyPairUpdate::FromCurrencyCode::TaggedSymbol
            )
          BYN =
            T.let(
              :BYN,
              HubspotSDK::Settings::CurrencyPairUpdate::FromCurrencyCode::TaggedSymbol
            )
          BZD =
            T.let(
              :BZD,
              HubspotSDK::Settings::CurrencyPairUpdate::FromCurrencyCode::TaggedSymbol
            )
          CAD =
            T.let(
              :CAD,
              HubspotSDK::Settings::CurrencyPairUpdate::FromCurrencyCode::TaggedSymbol
            )
          CDF =
            T.let(
              :CDF,
              HubspotSDK::Settings::CurrencyPairUpdate::FromCurrencyCode::TaggedSymbol
            )
          CHE =
            T.let(
              :CHE,
              HubspotSDK::Settings::CurrencyPairUpdate::FromCurrencyCode::TaggedSymbol
            )
          CHF =
            T.let(
              :CHF,
              HubspotSDK::Settings::CurrencyPairUpdate::FromCurrencyCode::TaggedSymbol
            )
          CHW =
            T.let(
              :CHW,
              HubspotSDK::Settings::CurrencyPairUpdate::FromCurrencyCode::TaggedSymbol
            )
          CLF =
            T.let(
              :CLF,
              HubspotSDK::Settings::CurrencyPairUpdate::FromCurrencyCode::TaggedSymbol
            )
          CLP =
            T.let(
              :CLP,
              HubspotSDK::Settings::CurrencyPairUpdate::FromCurrencyCode::TaggedSymbol
            )
          CNY =
            T.let(
              :CNY,
              HubspotSDK::Settings::CurrencyPairUpdate::FromCurrencyCode::TaggedSymbol
            )
          COP =
            T.let(
              :COP,
              HubspotSDK::Settings::CurrencyPairUpdate::FromCurrencyCode::TaggedSymbol
            )
          COU =
            T.let(
              :COU,
              HubspotSDK::Settings::CurrencyPairUpdate::FromCurrencyCode::TaggedSymbol
            )
          CRC =
            T.let(
              :CRC,
              HubspotSDK::Settings::CurrencyPairUpdate::FromCurrencyCode::TaggedSymbol
            )
          CUC =
            T.let(
              :CUC,
              HubspotSDK::Settings::CurrencyPairUpdate::FromCurrencyCode::TaggedSymbol
            )
          CUP =
            T.let(
              :CUP,
              HubspotSDK::Settings::CurrencyPairUpdate::FromCurrencyCode::TaggedSymbol
            )
          CVE =
            T.let(
              :CVE,
              HubspotSDK::Settings::CurrencyPairUpdate::FromCurrencyCode::TaggedSymbol
            )
          CZK =
            T.let(
              :CZK,
              HubspotSDK::Settings::CurrencyPairUpdate::FromCurrencyCode::TaggedSymbol
            )
          DJF =
            T.let(
              :DJF,
              HubspotSDK::Settings::CurrencyPairUpdate::FromCurrencyCode::TaggedSymbol
            )
          DKK =
            T.let(
              :DKK,
              HubspotSDK::Settings::CurrencyPairUpdate::FromCurrencyCode::TaggedSymbol
            )
          DOP =
            T.let(
              :DOP,
              HubspotSDK::Settings::CurrencyPairUpdate::FromCurrencyCode::TaggedSymbol
            )
          DZD =
            T.let(
              :DZD,
              HubspotSDK::Settings::CurrencyPairUpdate::FromCurrencyCode::TaggedSymbol
            )
          EGP =
            T.let(
              :EGP,
              HubspotSDK::Settings::CurrencyPairUpdate::FromCurrencyCode::TaggedSymbol
            )
          ERN =
            T.let(
              :ERN,
              HubspotSDK::Settings::CurrencyPairUpdate::FromCurrencyCode::TaggedSymbol
            )
          ETB =
            T.let(
              :ETB,
              HubspotSDK::Settings::CurrencyPairUpdate::FromCurrencyCode::TaggedSymbol
            )
          EUR =
            T.let(
              :EUR,
              HubspotSDK::Settings::CurrencyPairUpdate::FromCurrencyCode::TaggedSymbol
            )
          FJD =
            T.let(
              :FJD,
              HubspotSDK::Settings::CurrencyPairUpdate::FromCurrencyCode::TaggedSymbol
            )
          FKP =
            T.let(
              :FKP,
              HubspotSDK::Settings::CurrencyPairUpdate::FromCurrencyCode::TaggedSymbol
            )
          GBP =
            T.let(
              :GBP,
              HubspotSDK::Settings::CurrencyPairUpdate::FromCurrencyCode::TaggedSymbol
            )
          GEL =
            T.let(
              :GEL,
              HubspotSDK::Settings::CurrencyPairUpdate::FromCurrencyCode::TaggedSymbol
            )
          GHS =
            T.let(
              :GHS,
              HubspotSDK::Settings::CurrencyPairUpdate::FromCurrencyCode::TaggedSymbol
            )
          GIP =
            T.let(
              :GIP,
              HubspotSDK::Settings::CurrencyPairUpdate::FromCurrencyCode::TaggedSymbol
            )
          GMD =
            T.let(
              :GMD,
              HubspotSDK::Settings::CurrencyPairUpdate::FromCurrencyCode::TaggedSymbol
            )
          GNF =
            T.let(
              :GNF,
              HubspotSDK::Settings::CurrencyPairUpdate::FromCurrencyCode::TaggedSymbol
            )
          GTQ =
            T.let(
              :GTQ,
              HubspotSDK::Settings::CurrencyPairUpdate::FromCurrencyCode::TaggedSymbol
            )
          GYD =
            T.let(
              :GYD,
              HubspotSDK::Settings::CurrencyPairUpdate::FromCurrencyCode::TaggedSymbol
            )
          HKD =
            T.let(
              :HKD,
              HubspotSDK::Settings::CurrencyPairUpdate::FromCurrencyCode::TaggedSymbol
            )
          HNL =
            T.let(
              :HNL,
              HubspotSDK::Settings::CurrencyPairUpdate::FromCurrencyCode::TaggedSymbol
            )
          HRK =
            T.let(
              :HRK,
              HubspotSDK::Settings::CurrencyPairUpdate::FromCurrencyCode::TaggedSymbol
            )
          HTG =
            T.let(
              :HTG,
              HubspotSDK::Settings::CurrencyPairUpdate::FromCurrencyCode::TaggedSymbol
            )
          HUF =
            T.let(
              :HUF,
              HubspotSDK::Settings::CurrencyPairUpdate::FromCurrencyCode::TaggedSymbol
            )
          IDR =
            T.let(
              :IDR,
              HubspotSDK::Settings::CurrencyPairUpdate::FromCurrencyCode::TaggedSymbol
            )
          ILS =
            T.let(
              :ILS,
              HubspotSDK::Settings::CurrencyPairUpdate::FromCurrencyCode::TaggedSymbol
            )
          INR =
            T.let(
              :INR,
              HubspotSDK::Settings::CurrencyPairUpdate::FromCurrencyCode::TaggedSymbol
            )
          IQD =
            T.let(
              :IQD,
              HubspotSDK::Settings::CurrencyPairUpdate::FromCurrencyCode::TaggedSymbol
            )
          IRR =
            T.let(
              :IRR,
              HubspotSDK::Settings::CurrencyPairUpdate::FromCurrencyCode::TaggedSymbol
            )
          ISK =
            T.let(
              :ISK,
              HubspotSDK::Settings::CurrencyPairUpdate::FromCurrencyCode::TaggedSymbol
            )
          JMD =
            T.let(
              :JMD,
              HubspotSDK::Settings::CurrencyPairUpdate::FromCurrencyCode::TaggedSymbol
            )
          JOD =
            T.let(
              :JOD,
              HubspotSDK::Settings::CurrencyPairUpdate::FromCurrencyCode::TaggedSymbol
            )
          JPY =
            T.let(
              :JPY,
              HubspotSDK::Settings::CurrencyPairUpdate::FromCurrencyCode::TaggedSymbol
            )
          KES =
            T.let(
              :KES,
              HubspotSDK::Settings::CurrencyPairUpdate::FromCurrencyCode::TaggedSymbol
            )
          KGS =
            T.let(
              :KGS,
              HubspotSDK::Settings::CurrencyPairUpdate::FromCurrencyCode::TaggedSymbol
            )
          KHR =
            T.let(
              :KHR,
              HubspotSDK::Settings::CurrencyPairUpdate::FromCurrencyCode::TaggedSymbol
            )
          KMF =
            T.let(
              :KMF,
              HubspotSDK::Settings::CurrencyPairUpdate::FromCurrencyCode::TaggedSymbol
            )
          KPW =
            T.let(
              :KPW,
              HubspotSDK::Settings::CurrencyPairUpdate::FromCurrencyCode::TaggedSymbol
            )
          KRW =
            T.let(
              :KRW,
              HubspotSDK::Settings::CurrencyPairUpdate::FromCurrencyCode::TaggedSymbol
            )
          KWD =
            T.let(
              :KWD,
              HubspotSDK::Settings::CurrencyPairUpdate::FromCurrencyCode::TaggedSymbol
            )
          KYD =
            T.let(
              :KYD,
              HubspotSDK::Settings::CurrencyPairUpdate::FromCurrencyCode::TaggedSymbol
            )
          KZT =
            T.let(
              :KZT,
              HubspotSDK::Settings::CurrencyPairUpdate::FromCurrencyCode::TaggedSymbol
            )
          LAK =
            T.let(
              :LAK,
              HubspotSDK::Settings::CurrencyPairUpdate::FromCurrencyCode::TaggedSymbol
            )
          LBP =
            T.let(
              :LBP,
              HubspotSDK::Settings::CurrencyPairUpdate::FromCurrencyCode::TaggedSymbol
            )
          LKR =
            T.let(
              :LKR,
              HubspotSDK::Settings::CurrencyPairUpdate::FromCurrencyCode::TaggedSymbol
            )
          LRD =
            T.let(
              :LRD,
              HubspotSDK::Settings::CurrencyPairUpdate::FromCurrencyCode::TaggedSymbol
            )
          LSL =
            T.let(
              :LSL,
              HubspotSDK::Settings::CurrencyPairUpdate::FromCurrencyCode::TaggedSymbol
            )
          LYD =
            T.let(
              :LYD,
              HubspotSDK::Settings::CurrencyPairUpdate::FromCurrencyCode::TaggedSymbol
            )
          MAD =
            T.let(
              :MAD,
              HubspotSDK::Settings::CurrencyPairUpdate::FromCurrencyCode::TaggedSymbol
            )
          MDL =
            T.let(
              :MDL,
              HubspotSDK::Settings::CurrencyPairUpdate::FromCurrencyCode::TaggedSymbol
            )
          MGA =
            T.let(
              :MGA,
              HubspotSDK::Settings::CurrencyPairUpdate::FromCurrencyCode::TaggedSymbol
            )
          MKD =
            T.let(
              :MKD,
              HubspotSDK::Settings::CurrencyPairUpdate::FromCurrencyCode::TaggedSymbol
            )
          MMK =
            T.let(
              :MMK,
              HubspotSDK::Settings::CurrencyPairUpdate::FromCurrencyCode::TaggedSymbol
            )
          MNT =
            T.let(
              :MNT,
              HubspotSDK::Settings::CurrencyPairUpdate::FromCurrencyCode::TaggedSymbol
            )
          MOP =
            T.let(
              :MOP,
              HubspotSDK::Settings::CurrencyPairUpdate::FromCurrencyCode::TaggedSymbol
            )
          MRU =
            T.let(
              :MRU,
              HubspotSDK::Settings::CurrencyPairUpdate::FromCurrencyCode::TaggedSymbol
            )
          MUR =
            T.let(
              :MUR,
              HubspotSDK::Settings::CurrencyPairUpdate::FromCurrencyCode::TaggedSymbol
            )
          MVR =
            T.let(
              :MVR,
              HubspotSDK::Settings::CurrencyPairUpdate::FromCurrencyCode::TaggedSymbol
            )
          MWK =
            T.let(
              :MWK,
              HubspotSDK::Settings::CurrencyPairUpdate::FromCurrencyCode::TaggedSymbol
            )
          MXN =
            T.let(
              :MXN,
              HubspotSDK::Settings::CurrencyPairUpdate::FromCurrencyCode::TaggedSymbol
            )
          MXV =
            T.let(
              :MXV,
              HubspotSDK::Settings::CurrencyPairUpdate::FromCurrencyCode::TaggedSymbol
            )
          MYR =
            T.let(
              :MYR,
              HubspotSDK::Settings::CurrencyPairUpdate::FromCurrencyCode::TaggedSymbol
            )
          MZN =
            T.let(
              :MZN,
              HubspotSDK::Settings::CurrencyPairUpdate::FromCurrencyCode::TaggedSymbol
            )
          NAD =
            T.let(
              :NAD,
              HubspotSDK::Settings::CurrencyPairUpdate::FromCurrencyCode::TaggedSymbol
            )
          NGN =
            T.let(
              :NGN,
              HubspotSDK::Settings::CurrencyPairUpdate::FromCurrencyCode::TaggedSymbol
            )
          NIO =
            T.let(
              :NIO,
              HubspotSDK::Settings::CurrencyPairUpdate::FromCurrencyCode::TaggedSymbol
            )
          NOK =
            T.let(
              :NOK,
              HubspotSDK::Settings::CurrencyPairUpdate::FromCurrencyCode::TaggedSymbol
            )
          NPR =
            T.let(
              :NPR,
              HubspotSDK::Settings::CurrencyPairUpdate::FromCurrencyCode::TaggedSymbol
            )
          NZD =
            T.let(
              :NZD,
              HubspotSDK::Settings::CurrencyPairUpdate::FromCurrencyCode::TaggedSymbol
            )
          OMR =
            T.let(
              :OMR,
              HubspotSDK::Settings::CurrencyPairUpdate::FromCurrencyCode::TaggedSymbol
            )
          PAB =
            T.let(
              :PAB,
              HubspotSDK::Settings::CurrencyPairUpdate::FromCurrencyCode::TaggedSymbol
            )
          PEN =
            T.let(
              :PEN,
              HubspotSDK::Settings::CurrencyPairUpdate::FromCurrencyCode::TaggedSymbol
            )
          PGK =
            T.let(
              :PGK,
              HubspotSDK::Settings::CurrencyPairUpdate::FromCurrencyCode::TaggedSymbol
            )
          PHP =
            T.let(
              :PHP,
              HubspotSDK::Settings::CurrencyPairUpdate::FromCurrencyCode::TaggedSymbol
            )
          PKR =
            T.let(
              :PKR,
              HubspotSDK::Settings::CurrencyPairUpdate::FromCurrencyCode::TaggedSymbol
            )
          PLN =
            T.let(
              :PLN,
              HubspotSDK::Settings::CurrencyPairUpdate::FromCurrencyCode::TaggedSymbol
            )
          PYG =
            T.let(
              :PYG,
              HubspotSDK::Settings::CurrencyPairUpdate::FromCurrencyCode::TaggedSymbol
            )
          QAR =
            T.let(
              :QAR,
              HubspotSDK::Settings::CurrencyPairUpdate::FromCurrencyCode::TaggedSymbol
            )
          RON =
            T.let(
              :RON,
              HubspotSDK::Settings::CurrencyPairUpdate::FromCurrencyCode::TaggedSymbol
            )
          RSD =
            T.let(
              :RSD,
              HubspotSDK::Settings::CurrencyPairUpdate::FromCurrencyCode::TaggedSymbol
            )
          RUB =
            T.let(
              :RUB,
              HubspotSDK::Settings::CurrencyPairUpdate::FromCurrencyCode::TaggedSymbol
            )
          RWF =
            T.let(
              :RWF,
              HubspotSDK::Settings::CurrencyPairUpdate::FromCurrencyCode::TaggedSymbol
            )
          SAR =
            T.let(
              :SAR,
              HubspotSDK::Settings::CurrencyPairUpdate::FromCurrencyCode::TaggedSymbol
            )
          SBD =
            T.let(
              :SBD,
              HubspotSDK::Settings::CurrencyPairUpdate::FromCurrencyCode::TaggedSymbol
            )
          SCR =
            T.let(
              :SCR,
              HubspotSDK::Settings::CurrencyPairUpdate::FromCurrencyCode::TaggedSymbol
            )
          SDG =
            T.let(
              :SDG,
              HubspotSDK::Settings::CurrencyPairUpdate::FromCurrencyCode::TaggedSymbol
            )
          SEK =
            T.let(
              :SEK,
              HubspotSDK::Settings::CurrencyPairUpdate::FromCurrencyCode::TaggedSymbol
            )
          SGD =
            T.let(
              :SGD,
              HubspotSDK::Settings::CurrencyPairUpdate::FromCurrencyCode::TaggedSymbol
            )
          SHP =
            T.let(
              :SHP,
              HubspotSDK::Settings::CurrencyPairUpdate::FromCurrencyCode::TaggedSymbol
            )
          SLL =
            T.let(
              :SLL,
              HubspotSDK::Settings::CurrencyPairUpdate::FromCurrencyCode::TaggedSymbol
            )
          SOS =
            T.let(
              :SOS,
              HubspotSDK::Settings::CurrencyPairUpdate::FromCurrencyCode::TaggedSymbol
            )
          SRD =
            T.let(
              :SRD,
              HubspotSDK::Settings::CurrencyPairUpdate::FromCurrencyCode::TaggedSymbol
            )
          SSP =
            T.let(
              :SSP,
              HubspotSDK::Settings::CurrencyPairUpdate::FromCurrencyCode::TaggedSymbol
            )
          STN =
            T.let(
              :STN,
              HubspotSDK::Settings::CurrencyPairUpdate::FromCurrencyCode::TaggedSymbol
            )
          SVC =
            T.let(
              :SVC,
              HubspotSDK::Settings::CurrencyPairUpdate::FromCurrencyCode::TaggedSymbol
            )
          SYP =
            T.let(
              :SYP,
              HubspotSDK::Settings::CurrencyPairUpdate::FromCurrencyCode::TaggedSymbol
            )
          SZL =
            T.let(
              :SZL,
              HubspotSDK::Settings::CurrencyPairUpdate::FromCurrencyCode::TaggedSymbol
            )
          THB =
            T.let(
              :THB,
              HubspotSDK::Settings::CurrencyPairUpdate::FromCurrencyCode::TaggedSymbol
            )
          TJS =
            T.let(
              :TJS,
              HubspotSDK::Settings::CurrencyPairUpdate::FromCurrencyCode::TaggedSymbol
            )
          TMT =
            T.let(
              :TMT,
              HubspotSDK::Settings::CurrencyPairUpdate::FromCurrencyCode::TaggedSymbol
            )
          TND =
            T.let(
              :TND,
              HubspotSDK::Settings::CurrencyPairUpdate::FromCurrencyCode::TaggedSymbol
            )
          TOP =
            T.let(
              :TOP,
              HubspotSDK::Settings::CurrencyPairUpdate::FromCurrencyCode::TaggedSymbol
            )
          TRY =
            T.let(
              :TRY,
              HubspotSDK::Settings::CurrencyPairUpdate::FromCurrencyCode::TaggedSymbol
            )
          TTD =
            T.let(
              :TTD,
              HubspotSDK::Settings::CurrencyPairUpdate::FromCurrencyCode::TaggedSymbol
            )
          TWD =
            T.let(
              :TWD,
              HubspotSDK::Settings::CurrencyPairUpdate::FromCurrencyCode::TaggedSymbol
            )
          TZS =
            T.let(
              :TZS,
              HubspotSDK::Settings::CurrencyPairUpdate::FromCurrencyCode::TaggedSymbol
            )
          UAH =
            T.let(
              :UAH,
              HubspotSDK::Settings::CurrencyPairUpdate::FromCurrencyCode::TaggedSymbol
            )
          UGX =
            T.let(
              :UGX,
              HubspotSDK::Settings::CurrencyPairUpdate::FromCurrencyCode::TaggedSymbol
            )
          USD =
            T.let(
              :USD,
              HubspotSDK::Settings::CurrencyPairUpdate::FromCurrencyCode::TaggedSymbol
            )
          USN =
            T.let(
              :USN,
              HubspotSDK::Settings::CurrencyPairUpdate::FromCurrencyCode::TaggedSymbol
            )
          UYI =
            T.let(
              :UYI,
              HubspotSDK::Settings::CurrencyPairUpdate::FromCurrencyCode::TaggedSymbol
            )
          UYU =
            T.let(
              :UYU,
              HubspotSDK::Settings::CurrencyPairUpdate::FromCurrencyCode::TaggedSymbol
            )
          UZS =
            T.let(
              :UZS,
              HubspotSDK::Settings::CurrencyPairUpdate::FromCurrencyCode::TaggedSymbol
            )
          VEF =
            T.let(
              :VEF,
              HubspotSDK::Settings::CurrencyPairUpdate::FromCurrencyCode::TaggedSymbol
            )
          VND =
            T.let(
              :VND,
              HubspotSDK::Settings::CurrencyPairUpdate::FromCurrencyCode::TaggedSymbol
            )
          VUV =
            T.let(
              :VUV,
              HubspotSDK::Settings::CurrencyPairUpdate::FromCurrencyCode::TaggedSymbol
            )
          WST =
            T.let(
              :WST,
              HubspotSDK::Settings::CurrencyPairUpdate::FromCurrencyCode::TaggedSymbol
            )
          XAF =
            T.let(
              :XAF,
              HubspotSDK::Settings::CurrencyPairUpdate::FromCurrencyCode::TaggedSymbol
            )
          XAG =
            T.let(
              :XAG,
              HubspotSDK::Settings::CurrencyPairUpdate::FromCurrencyCode::TaggedSymbol
            )
          XAU =
            T.let(
              :XAU,
              HubspotSDK::Settings::CurrencyPairUpdate::FromCurrencyCode::TaggedSymbol
            )
          XBA =
            T.let(
              :XBA,
              HubspotSDK::Settings::CurrencyPairUpdate::FromCurrencyCode::TaggedSymbol
            )
          XBB =
            T.let(
              :XBB,
              HubspotSDK::Settings::CurrencyPairUpdate::FromCurrencyCode::TaggedSymbol
            )
          XBC =
            T.let(
              :XBC,
              HubspotSDK::Settings::CurrencyPairUpdate::FromCurrencyCode::TaggedSymbol
            )
          XBD =
            T.let(
              :XBD,
              HubspotSDK::Settings::CurrencyPairUpdate::FromCurrencyCode::TaggedSymbol
            )
          XCD =
            T.let(
              :XCD,
              HubspotSDK::Settings::CurrencyPairUpdate::FromCurrencyCode::TaggedSymbol
            )
          XDR =
            T.let(
              :XDR,
              HubspotSDK::Settings::CurrencyPairUpdate::FromCurrencyCode::TaggedSymbol
            )
          XOF =
            T.let(
              :XOF,
              HubspotSDK::Settings::CurrencyPairUpdate::FromCurrencyCode::TaggedSymbol
            )
          XPD =
            T.let(
              :XPD,
              HubspotSDK::Settings::CurrencyPairUpdate::FromCurrencyCode::TaggedSymbol
            )
          XPF =
            T.let(
              :XPF,
              HubspotSDK::Settings::CurrencyPairUpdate::FromCurrencyCode::TaggedSymbol
            )
          XPT =
            T.let(
              :XPT,
              HubspotSDK::Settings::CurrencyPairUpdate::FromCurrencyCode::TaggedSymbol
            )
          XSU =
            T.let(
              :XSU,
              HubspotSDK::Settings::CurrencyPairUpdate::FromCurrencyCode::TaggedSymbol
            )
          XUA =
            T.let(
              :XUA,
              HubspotSDK::Settings::CurrencyPairUpdate::FromCurrencyCode::TaggedSymbol
            )
          YER =
            T.let(
              :YER,
              HubspotSDK::Settings::CurrencyPairUpdate::FromCurrencyCode::TaggedSymbol
            )
          ZAR =
            T.let(
              :ZAR,
              HubspotSDK::Settings::CurrencyPairUpdate::FromCurrencyCode::TaggedSymbol
            )
          ZMW =
            T.let(
              :ZMW,
              HubspotSDK::Settings::CurrencyPairUpdate::FromCurrencyCode::TaggedSymbol
            )
          ZWL =
            T.let(
              :ZWL,
              HubspotSDK::Settings::CurrencyPairUpdate::FromCurrencyCode::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Settings::CurrencyPairUpdate::FromCurrencyCode::TaggedSymbol
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
                HubspotSDK::Settings::CurrencyPairUpdate::ToCurrencyCode
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          AED =
            T.let(
              :AED,
              HubspotSDK::Settings::CurrencyPairUpdate::ToCurrencyCode::TaggedSymbol
            )
          AFN =
            T.let(
              :AFN,
              HubspotSDK::Settings::CurrencyPairUpdate::ToCurrencyCode::TaggedSymbol
            )
          ALL =
            T.let(
              :ALL,
              HubspotSDK::Settings::CurrencyPairUpdate::ToCurrencyCode::TaggedSymbol
            )
          AMD =
            T.let(
              :AMD,
              HubspotSDK::Settings::CurrencyPairUpdate::ToCurrencyCode::TaggedSymbol
            )
          ANG =
            T.let(
              :ANG,
              HubspotSDK::Settings::CurrencyPairUpdate::ToCurrencyCode::TaggedSymbol
            )
          AOA =
            T.let(
              :AOA,
              HubspotSDK::Settings::CurrencyPairUpdate::ToCurrencyCode::TaggedSymbol
            )
          ARS =
            T.let(
              :ARS,
              HubspotSDK::Settings::CurrencyPairUpdate::ToCurrencyCode::TaggedSymbol
            )
          AUD =
            T.let(
              :AUD,
              HubspotSDK::Settings::CurrencyPairUpdate::ToCurrencyCode::TaggedSymbol
            )
          AWG =
            T.let(
              :AWG,
              HubspotSDK::Settings::CurrencyPairUpdate::ToCurrencyCode::TaggedSymbol
            )
          AZN =
            T.let(
              :AZN,
              HubspotSDK::Settings::CurrencyPairUpdate::ToCurrencyCode::TaggedSymbol
            )
          BAM =
            T.let(
              :BAM,
              HubspotSDK::Settings::CurrencyPairUpdate::ToCurrencyCode::TaggedSymbol
            )
          BBD =
            T.let(
              :BBD,
              HubspotSDK::Settings::CurrencyPairUpdate::ToCurrencyCode::TaggedSymbol
            )
          BDT =
            T.let(
              :BDT,
              HubspotSDK::Settings::CurrencyPairUpdate::ToCurrencyCode::TaggedSymbol
            )
          BGN =
            T.let(
              :BGN,
              HubspotSDK::Settings::CurrencyPairUpdate::ToCurrencyCode::TaggedSymbol
            )
          BHD =
            T.let(
              :BHD,
              HubspotSDK::Settings::CurrencyPairUpdate::ToCurrencyCode::TaggedSymbol
            )
          BIF =
            T.let(
              :BIF,
              HubspotSDK::Settings::CurrencyPairUpdate::ToCurrencyCode::TaggedSymbol
            )
          BMD =
            T.let(
              :BMD,
              HubspotSDK::Settings::CurrencyPairUpdate::ToCurrencyCode::TaggedSymbol
            )
          BND =
            T.let(
              :BND,
              HubspotSDK::Settings::CurrencyPairUpdate::ToCurrencyCode::TaggedSymbol
            )
          BOB =
            T.let(
              :BOB,
              HubspotSDK::Settings::CurrencyPairUpdate::ToCurrencyCode::TaggedSymbol
            )
          BOV =
            T.let(
              :BOV,
              HubspotSDK::Settings::CurrencyPairUpdate::ToCurrencyCode::TaggedSymbol
            )
          BRL =
            T.let(
              :BRL,
              HubspotSDK::Settings::CurrencyPairUpdate::ToCurrencyCode::TaggedSymbol
            )
          BSD =
            T.let(
              :BSD,
              HubspotSDK::Settings::CurrencyPairUpdate::ToCurrencyCode::TaggedSymbol
            )
          BTN =
            T.let(
              :BTN,
              HubspotSDK::Settings::CurrencyPairUpdate::ToCurrencyCode::TaggedSymbol
            )
          BWP =
            T.let(
              :BWP,
              HubspotSDK::Settings::CurrencyPairUpdate::ToCurrencyCode::TaggedSymbol
            )
          BYN =
            T.let(
              :BYN,
              HubspotSDK::Settings::CurrencyPairUpdate::ToCurrencyCode::TaggedSymbol
            )
          BZD =
            T.let(
              :BZD,
              HubspotSDK::Settings::CurrencyPairUpdate::ToCurrencyCode::TaggedSymbol
            )
          CAD =
            T.let(
              :CAD,
              HubspotSDK::Settings::CurrencyPairUpdate::ToCurrencyCode::TaggedSymbol
            )
          CDF =
            T.let(
              :CDF,
              HubspotSDK::Settings::CurrencyPairUpdate::ToCurrencyCode::TaggedSymbol
            )
          CHE =
            T.let(
              :CHE,
              HubspotSDK::Settings::CurrencyPairUpdate::ToCurrencyCode::TaggedSymbol
            )
          CHF =
            T.let(
              :CHF,
              HubspotSDK::Settings::CurrencyPairUpdate::ToCurrencyCode::TaggedSymbol
            )
          CHW =
            T.let(
              :CHW,
              HubspotSDK::Settings::CurrencyPairUpdate::ToCurrencyCode::TaggedSymbol
            )
          CLF =
            T.let(
              :CLF,
              HubspotSDK::Settings::CurrencyPairUpdate::ToCurrencyCode::TaggedSymbol
            )
          CLP =
            T.let(
              :CLP,
              HubspotSDK::Settings::CurrencyPairUpdate::ToCurrencyCode::TaggedSymbol
            )
          CNY =
            T.let(
              :CNY,
              HubspotSDK::Settings::CurrencyPairUpdate::ToCurrencyCode::TaggedSymbol
            )
          COP =
            T.let(
              :COP,
              HubspotSDK::Settings::CurrencyPairUpdate::ToCurrencyCode::TaggedSymbol
            )
          COU =
            T.let(
              :COU,
              HubspotSDK::Settings::CurrencyPairUpdate::ToCurrencyCode::TaggedSymbol
            )
          CRC =
            T.let(
              :CRC,
              HubspotSDK::Settings::CurrencyPairUpdate::ToCurrencyCode::TaggedSymbol
            )
          CUC =
            T.let(
              :CUC,
              HubspotSDK::Settings::CurrencyPairUpdate::ToCurrencyCode::TaggedSymbol
            )
          CUP =
            T.let(
              :CUP,
              HubspotSDK::Settings::CurrencyPairUpdate::ToCurrencyCode::TaggedSymbol
            )
          CVE =
            T.let(
              :CVE,
              HubspotSDK::Settings::CurrencyPairUpdate::ToCurrencyCode::TaggedSymbol
            )
          CZK =
            T.let(
              :CZK,
              HubspotSDK::Settings::CurrencyPairUpdate::ToCurrencyCode::TaggedSymbol
            )
          DJF =
            T.let(
              :DJF,
              HubspotSDK::Settings::CurrencyPairUpdate::ToCurrencyCode::TaggedSymbol
            )
          DKK =
            T.let(
              :DKK,
              HubspotSDK::Settings::CurrencyPairUpdate::ToCurrencyCode::TaggedSymbol
            )
          DOP =
            T.let(
              :DOP,
              HubspotSDK::Settings::CurrencyPairUpdate::ToCurrencyCode::TaggedSymbol
            )
          DZD =
            T.let(
              :DZD,
              HubspotSDK::Settings::CurrencyPairUpdate::ToCurrencyCode::TaggedSymbol
            )
          EGP =
            T.let(
              :EGP,
              HubspotSDK::Settings::CurrencyPairUpdate::ToCurrencyCode::TaggedSymbol
            )
          ERN =
            T.let(
              :ERN,
              HubspotSDK::Settings::CurrencyPairUpdate::ToCurrencyCode::TaggedSymbol
            )
          ETB =
            T.let(
              :ETB,
              HubspotSDK::Settings::CurrencyPairUpdate::ToCurrencyCode::TaggedSymbol
            )
          EUR =
            T.let(
              :EUR,
              HubspotSDK::Settings::CurrencyPairUpdate::ToCurrencyCode::TaggedSymbol
            )
          FJD =
            T.let(
              :FJD,
              HubspotSDK::Settings::CurrencyPairUpdate::ToCurrencyCode::TaggedSymbol
            )
          FKP =
            T.let(
              :FKP,
              HubspotSDK::Settings::CurrencyPairUpdate::ToCurrencyCode::TaggedSymbol
            )
          GBP =
            T.let(
              :GBP,
              HubspotSDK::Settings::CurrencyPairUpdate::ToCurrencyCode::TaggedSymbol
            )
          GEL =
            T.let(
              :GEL,
              HubspotSDK::Settings::CurrencyPairUpdate::ToCurrencyCode::TaggedSymbol
            )
          GHS =
            T.let(
              :GHS,
              HubspotSDK::Settings::CurrencyPairUpdate::ToCurrencyCode::TaggedSymbol
            )
          GIP =
            T.let(
              :GIP,
              HubspotSDK::Settings::CurrencyPairUpdate::ToCurrencyCode::TaggedSymbol
            )
          GMD =
            T.let(
              :GMD,
              HubspotSDK::Settings::CurrencyPairUpdate::ToCurrencyCode::TaggedSymbol
            )
          GNF =
            T.let(
              :GNF,
              HubspotSDK::Settings::CurrencyPairUpdate::ToCurrencyCode::TaggedSymbol
            )
          GTQ =
            T.let(
              :GTQ,
              HubspotSDK::Settings::CurrencyPairUpdate::ToCurrencyCode::TaggedSymbol
            )
          GYD =
            T.let(
              :GYD,
              HubspotSDK::Settings::CurrencyPairUpdate::ToCurrencyCode::TaggedSymbol
            )
          HKD =
            T.let(
              :HKD,
              HubspotSDK::Settings::CurrencyPairUpdate::ToCurrencyCode::TaggedSymbol
            )
          HNL =
            T.let(
              :HNL,
              HubspotSDK::Settings::CurrencyPairUpdate::ToCurrencyCode::TaggedSymbol
            )
          HRK =
            T.let(
              :HRK,
              HubspotSDK::Settings::CurrencyPairUpdate::ToCurrencyCode::TaggedSymbol
            )
          HTG =
            T.let(
              :HTG,
              HubspotSDK::Settings::CurrencyPairUpdate::ToCurrencyCode::TaggedSymbol
            )
          HUF =
            T.let(
              :HUF,
              HubspotSDK::Settings::CurrencyPairUpdate::ToCurrencyCode::TaggedSymbol
            )
          IDR =
            T.let(
              :IDR,
              HubspotSDK::Settings::CurrencyPairUpdate::ToCurrencyCode::TaggedSymbol
            )
          ILS =
            T.let(
              :ILS,
              HubspotSDK::Settings::CurrencyPairUpdate::ToCurrencyCode::TaggedSymbol
            )
          INR =
            T.let(
              :INR,
              HubspotSDK::Settings::CurrencyPairUpdate::ToCurrencyCode::TaggedSymbol
            )
          IQD =
            T.let(
              :IQD,
              HubspotSDK::Settings::CurrencyPairUpdate::ToCurrencyCode::TaggedSymbol
            )
          IRR =
            T.let(
              :IRR,
              HubspotSDK::Settings::CurrencyPairUpdate::ToCurrencyCode::TaggedSymbol
            )
          ISK =
            T.let(
              :ISK,
              HubspotSDK::Settings::CurrencyPairUpdate::ToCurrencyCode::TaggedSymbol
            )
          JMD =
            T.let(
              :JMD,
              HubspotSDK::Settings::CurrencyPairUpdate::ToCurrencyCode::TaggedSymbol
            )
          JOD =
            T.let(
              :JOD,
              HubspotSDK::Settings::CurrencyPairUpdate::ToCurrencyCode::TaggedSymbol
            )
          JPY =
            T.let(
              :JPY,
              HubspotSDK::Settings::CurrencyPairUpdate::ToCurrencyCode::TaggedSymbol
            )
          KES =
            T.let(
              :KES,
              HubspotSDK::Settings::CurrencyPairUpdate::ToCurrencyCode::TaggedSymbol
            )
          KGS =
            T.let(
              :KGS,
              HubspotSDK::Settings::CurrencyPairUpdate::ToCurrencyCode::TaggedSymbol
            )
          KHR =
            T.let(
              :KHR,
              HubspotSDK::Settings::CurrencyPairUpdate::ToCurrencyCode::TaggedSymbol
            )
          KMF =
            T.let(
              :KMF,
              HubspotSDK::Settings::CurrencyPairUpdate::ToCurrencyCode::TaggedSymbol
            )
          KPW =
            T.let(
              :KPW,
              HubspotSDK::Settings::CurrencyPairUpdate::ToCurrencyCode::TaggedSymbol
            )
          KRW =
            T.let(
              :KRW,
              HubspotSDK::Settings::CurrencyPairUpdate::ToCurrencyCode::TaggedSymbol
            )
          KWD =
            T.let(
              :KWD,
              HubspotSDK::Settings::CurrencyPairUpdate::ToCurrencyCode::TaggedSymbol
            )
          KYD =
            T.let(
              :KYD,
              HubspotSDK::Settings::CurrencyPairUpdate::ToCurrencyCode::TaggedSymbol
            )
          KZT =
            T.let(
              :KZT,
              HubspotSDK::Settings::CurrencyPairUpdate::ToCurrencyCode::TaggedSymbol
            )
          LAK =
            T.let(
              :LAK,
              HubspotSDK::Settings::CurrencyPairUpdate::ToCurrencyCode::TaggedSymbol
            )
          LBP =
            T.let(
              :LBP,
              HubspotSDK::Settings::CurrencyPairUpdate::ToCurrencyCode::TaggedSymbol
            )
          LKR =
            T.let(
              :LKR,
              HubspotSDK::Settings::CurrencyPairUpdate::ToCurrencyCode::TaggedSymbol
            )
          LRD =
            T.let(
              :LRD,
              HubspotSDK::Settings::CurrencyPairUpdate::ToCurrencyCode::TaggedSymbol
            )
          LSL =
            T.let(
              :LSL,
              HubspotSDK::Settings::CurrencyPairUpdate::ToCurrencyCode::TaggedSymbol
            )
          LYD =
            T.let(
              :LYD,
              HubspotSDK::Settings::CurrencyPairUpdate::ToCurrencyCode::TaggedSymbol
            )
          MAD =
            T.let(
              :MAD,
              HubspotSDK::Settings::CurrencyPairUpdate::ToCurrencyCode::TaggedSymbol
            )
          MDL =
            T.let(
              :MDL,
              HubspotSDK::Settings::CurrencyPairUpdate::ToCurrencyCode::TaggedSymbol
            )
          MGA =
            T.let(
              :MGA,
              HubspotSDK::Settings::CurrencyPairUpdate::ToCurrencyCode::TaggedSymbol
            )
          MKD =
            T.let(
              :MKD,
              HubspotSDK::Settings::CurrencyPairUpdate::ToCurrencyCode::TaggedSymbol
            )
          MMK =
            T.let(
              :MMK,
              HubspotSDK::Settings::CurrencyPairUpdate::ToCurrencyCode::TaggedSymbol
            )
          MNT =
            T.let(
              :MNT,
              HubspotSDK::Settings::CurrencyPairUpdate::ToCurrencyCode::TaggedSymbol
            )
          MOP =
            T.let(
              :MOP,
              HubspotSDK::Settings::CurrencyPairUpdate::ToCurrencyCode::TaggedSymbol
            )
          MRU =
            T.let(
              :MRU,
              HubspotSDK::Settings::CurrencyPairUpdate::ToCurrencyCode::TaggedSymbol
            )
          MUR =
            T.let(
              :MUR,
              HubspotSDK::Settings::CurrencyPairUpdate::ToCurrencyCode::TaggedSymbol
            )
          MVR =
            T.let(
              :MVR,
              HubspotSDK::Settings::CurrencyPairUpdate::ToCurrencyCode::TaggedSymbol
            )
          MWK =
            T.let(
              :MWK,
              HubspotSDK::Settings::CurrencyPairUpdate::ToCurrencyCode::TaggedSymbol
            )
          MXN =
            T.let(
              :MXN,
              HubspotSDK::Settings::CurrencyPairUpdate::ToCurrencyCode::TaggedSymbol
            )
          MXV =
            T.let(
              :MXV,
              HubspotSDK::Settings::CurrencyPairUpdate::ToCurrencyCode::TaggedSymbol
            )
          MYR =
            T.let(
              :MYR,
              HubspotSDK::Settings::CurrencyPairUpdate::ToCurrencyCode::TaggedSymbol
            )
          MZN =
            T.let(
              :MZN,
              HubspotSDK::Settings::CurrencyPairUpdate::ToCurrencyCode::TaggedSymbol
            )
          NAD =
            T.let(
              :NAD,
              HubspotSDK::Settings::CurrencyPairUpdate::ToCurrencyCode::TaggedSymbol
            )
          NGN =
            T.let(
              :NGN,
              HubspotSDK::Settings::CurrencyPairUpdate::ToCurrencyCode::TaggedSymbol
            )
          NIO =
            T.let(
              :NIO,
              HubspotSDK::Settings::CurrencyPairUpdate::ToCurrencyCode::TaggedSymbol
            )
          NOK =
            T.let(
              :NOK,
              HubspotSDK::Settings::CurrencyPairUpdate::ToCurrencyCode::TaggedSymbol
            )
          NPR =
            T.let(
              :NPR,
              HubspotSDK::Settings::CurrencyPairUpdate::ToCurrencyCode::TaggedSymbol
            )
          NZD =
            T.let(
              :NZD,
              HubspotSDK::Settings::CurrencyPairUpdate::ToCurrencyCode::TaggedSymbol
            )
          OMR =
            T.let(
              :OMR,
              HubspotSDK::Settings::CurrencyPairUpdate::ToCurrencyCode::TaggedSymbol
            )
          PAB =
            T.let(
              :PAB,
              HubspotSDK::Settings::CurrencyPairUpdate::ToCurrencyCode::TaggedSymbol
            )
          PEN =
            T.let(
              :PEN,
              HubspotSDK::Settings::CurrencyPairUpdate::ToCurrencyCode::TaggedSymbol
            )
          PGK =
            T.let(
              :PGK,
              HubspotSDK::Settings::CurrencyPairUpdate::ToCurrencyCode::TaggedSymbol
            )
          PHP =
            T.let(
              :PHP,
              HubspotSDK::Settings::CurrencyPairUpdate::ToCurrencyCode::TaggedSymbol
            )
          PKR =
            T.let(
              :PKR,
              HubspotSDK::Settings::CurrencyPairUpdate::ToCurrencyCode::TaggedSymbol
            )
          PLN =
            T.let(
              :PLN,
              HubspotSDK::Settings::CurrencyPairUpdate::ToCurrencyCode::TaggedSymbol
            )
          PYG =
            T.let(
              :PYG,
              HubspotSDK::Settings::CurrencyPairUpdate::ToCurrencyCode::TaggedSymbol
            )
          QAR =
            T.let(
              :QAR,
              HubspotSDK::Settings::CurrencyPairUpdate::ToCurrencyCode::TaggedSymbol
            )
          RON =
            T.let(
              :RON,
              HubspotSDK::Settings::CurrencyPairUpdate::ToCurrencyCode::TaggedSymbol
            )
          RSD =
            T.let(
              :RSD,
              HubspotSDK::Settings::CurrencyPairUpdate::ToCurrencyCode::TaggedSymbol
            )
          RUB =
            T.let(
              :RUB,
              HubspotSDK::Settings::CurrencyPairUpdate::ToCurrencyCode::TaggedSymbol
            )
          RWF =
            T.let(
              :RWF,
              HubspotSDK::Settings::CurrencyPairUpdate::ToCurrencyCode::TaggedSymbol
            )
          SAR =
            T.let(
              :SAR,
              HubspotSDK::Settings::CurrencyPairUpdate::ToCurrencyCode::TaggedSymbol
            )
          SBD =
            T.let(
              :SBD,
              HubspotSDK::Settings::CurrencyPairUpdate::ToCurrencyCode::TaggedSymbol
            )
          SCR =
            T.let(
              :SCR,
              HubspotSDK::Settings::CurrencyPairUpdate::ToCurrencyCode::TaggedSymbol
            )
          SDG =
            T.let(
              :SDG,
              HubspotSDK::Settings::CurrencyPairUpdate::ToCurrencyCode::TaggedSymbol
            )
          SEK =
            T.let(
              :SEK,
              HubspotSDK::Settings::CurrencyPairUpdate::ToCurrencyCode::TaggedSymbol
            )
          SGD =
            T.let(
              :SGD,
              HubspotSDK::Settings::CurrencyPairUpdate::ToCurrencyCode::TaggedSymbol
            )
          SHP =
            T.let(
              :SHP,
              HubspotSDK::Settings::CurrencyPairUpdate::ToCurrencyCode::TaggedSymbol
            )
          SLL =
            T.let(
              :SLL,
              HubspotSDK::Settings::CurrencyPairUpdate::ToCurrencyCode::TaggedSymbol
            )
          SOS =
            T.let(
              :SOS,
              HubspotSDK::Settings::CurrencyPairUpdate::ToCurrencyCode::TaggedSymbol
            )
          SRD =
            T.let(
              :SRD,
              HubspotSDK::Settings::CurrencyPairUpdate::ToCurrencyCode::TaggedSymbol
            )
          SSP =
            T.let(
              :SSP,
              HubspotSDK::Settings::CurrencyPairUpdate::ToCurrencyCode::TaggedSymbol
            )
          STN =
            T.let(
              :STN,
              HubspotSDK::Settings::CurrencyPairUpdate::ToCurrencyCode::TaggedSymbol
            )
          SVC =
            T.let(
              :SVC,
              HubspotSDK::Settings::CurrencyPairUpdate::ToCurrencyCode::TaggedSymbol
            )
          SYP =
            T.let(
              :SYP,
              HubspotSDK::Settings::CurrencyPairUpdate::ToCurrencyCode::TaggedSymbol
            )
          SZL =
            T.let(
              :SZL,
              HubspotSDK::Settings::CurrencyPairUpdate::ToCurrencyCode::TaggedSymbol
            )
          THB =
            T.let(
              :THB,
              HubspotSDK::Settings::CurrencyPairUpdate::ToCurrencyCode::TaggedSymbol
            )
          TJS =
            T.let(
              :TJS,
              HubspotSDK::Settings::CurrencyPairUpdate::ToCurrencyCode::TaggedSymbol
            )
          TMT =
            T.let(
              :TMT,
              HubspotSDK::Settings::CurrencyPairUpdate::ToCurrencyCode::TaggedSymbol
            )
          TND =
            T.let(
              :TND,
              HubspotSDK::Settings::CurrencyPairUpdate::ToCurrencyCode::TaggedSymbol
            )
          TOP =
            T.let(
              :TOP,
              HubspotSDK::Settings::CurrencyPairUpdate::ToCurrencyCode::TaggedSymbol
            )
          TRY =
            T.let(
              :TRY,
              HubspotSDK::Settings::CurrencyPairUpdate::ToCurrencyCode::TaggedSymbol
            )
          TTD =
            T.let(
              :TTD,
              HubspotSDK::Settings::CurrencyPairUpdate::ToCurrencyCode::TaggedSymbol
            )
          TWD =
            T.let(
              :TWD,
              HubspotSDK::Settings::CurrencyPairUpdate::ToCurrencyCode::TaggedSymbol
            )
          TZS =
            T.let(
              :TZS,
              HubspotSDK::Settings::CurrencyPairUpdate::ToCurrencyCode::TaggedSymbol
            )
          UAH =
            T.let(
              :UAH,
              HubspotSDK::Settings::CurrencyPairUpdate::ToCurrencyCode::TaggedSymbol
            )
          UGX =
            T.let(
              :UGX,
              HubspotSDK::Settings::CurrencyPairUpdate::ToCurrencyCode::TaggedSymbol
            )
          USD =
            T.let(
              :USD,
              HubspotSDK::Settings::CurrencyPairUpdate::ToCurrencyCode::TaggedSymbol
            )
          USN =
            T.let(
              :USN,
              HubspotSDK::Settings::CurrencyPairUpdate::ToCurrencyCode::TaggedSymbol
            )
          UYI =
            T.let(
              :UYI,
              HubspotSDK::Settings::CurrencyPairUpdate::ToCurrencyCode::TaggedSymbol
            )
          UYU =
            T.let(
              :UYU,
              HubspotSDK::Settings::CurrencyPairUpdate::ToCurrencyCode::TaggedSymbol
            )
          UZS =
            T.let(
              :UZS,
              HubspotSDK::Settings::CurrencyPairUpdate::ToCurrencyCode::TaggedSymbol
            )
          VEF =
            T.let(
              :VEF,
              HubspotSDK::Settings::CurrencyPairUpdate::ToCurrencyCode::TaggedSymbol
            )
          VND =
            T.let(
              :VND,
              HubspotSDK::Settings::CurrencyPairUpdate::ToCurrencyCode::TaggedSymbol
            )
          VUV =
            T.let(
              :VUV,
              HubspotSDK::Settings::CurrencyPairUpdate::ToCurrencyCode::TaggedSymbol
            )
          WST =
            T.let(
              :WST,
              HubspotSDK::Settings::CurrencyPairUpdate::ToCurrencyCode::TaggedSymbol
            )
          XAF =
            T.let(
              :XAF,
              HubspotSDK::Settings::CurrencyPairUpdate::ToCurrencyCode::TaggedSymbol
            )
          XAG =
            T.let(
              :XAG,
              HubspotSDK::Settings::CurrencyPairUpdate::ToCurrencyCode::TaggedSymbol
            )
          XAU =
            T.let(
              :XAU,
              HubspotSDK::Settings::CurrencyPairUpdate::ToCurrencyCode::TaggedSymbol
            )
          XBA =
            T.let(
              :XBA,
              HubspotSDK::Settings::CurrencyPairUpdate::ToCurrencyCode::TaggedSymbol
            )
          XBB =
            T.let(
              :XBB,
              HubspotSDK::Settings::CurrencyPairUpdate::ToCurrencyCode::TaggedSymbol
            )
          XBC =
            T.let(
              :XBC,
              HubspotSDK::Settings::CurrencyPairUpdate::ToCurrencyCode::TaggedSymbol
            )
          XBD =
            T.let(
              :XBD,
              HubspotSDK::Settings::CurrencyPairUpdate::ToCurrencyCode::TaggedSymbol
            )
          XCD =
            T.let(
              :XCD,
              HubspotSDK::Settings::CurrencyPairUpdate::ToCurrencyCode::TaggedSymbol
            )
          XDR =
            T.let(
              :XDR,
              HubspotSDK::Settings::CurrencyPairUpdate::ToCurrencyCode::TaggedSymbol
            )
          XOF =
            T.let(
              :XOF,
              HubspotSDK::Settings::CurrencyPairUpdate::ToCurrencyCode::TaggedSymbol
            )
          XPD =
            T.let(
              :XPD,
              HubspotSDK::Settings::CurrencyPairUpdate::ToCurrencyCode::TaggedSymbol
            )
          XPF =
            T.let(
              :XPF,
              HubspotSDK::Settings::CurrencyPairUpdate::ToCurrencyCode::TaggedSymbol
            )
          XPT =
            T.let(
              :XPT,
              HubspotSDK::Settings::CurrencyPairUpdate::ToCurrencyCode::TaggedSymbol
            )
          XSU =
            T.let(
              :XSU,
              HubspotSDK::Settings::CurrencyPairUpdate::ToCurrencyCode::TaggedSymbol
            )
          XUA =
            T.let(
              :XUA,
              HubspotSDK::Settings::CurrencyPairUpdate::ToCurrencyCode::TaggedSymbol
            )
          YER =
            T.let(
              :YER,
              HubspotSDK::Settings::CurrencyPairUpdate::ToCurrencyCode::TaggedSymbol
            )
          ZAR =
            T.let(
              :ZAR,
              HubspotSDK::Settings::CurrencyPairUpdate::ToCurrencyCode::TaggedSymbol
            )
          ZMW =
            T.let(
              :ZMW,
              HubspotSDK::Settings::CurrencyPairUpdate::ToCurrencyCode::TaggedSymbol
            )
          ZWL =
            T.let(
              :ZWL,
              HubspotSDK::Settings::CurrencyPairUpdate::ToCurrencyCode::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Settings::CurrencyPairUpdate::ToCurrencyCode::TaggedSymbol
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
