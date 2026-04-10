# typed: strong

module HubSpotSDK
  module Models
    module Settings
      class CompanyCurrencyUpdateRequest < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Settings::CompanyCurrencyUpdateRequest,
              HubSpotSDK::Internal::AnyHash
            )
          end

        # The three-letter code representing a specific currency (ex. USD).
        sig do
          returns(
            HubSpotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::OrSymbol
          )
        end
        attr_accessor :currency_code

        sig do
          params(
            currency_code:
              HubSpotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          # The three-letter code representing a specific currency (ex. USD).
          currency_code:
        )
        end

        sig do
          override.returns(
            {
              currency_code:
                HubSpotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::OrSymbol
            }
          )
        end
        def to_hash
        end

        # The three-letter code representing a specific currency (ex. USD).
        module CurrencyCode
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubSpotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          AED =
            T.let(
              :AED,
              HubSpotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          AFN =
            T.let(
              :AFN,
              HubSpotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          ALL =
            T.let(
              :ALL,
              HubSpotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          AMD =
            T.let(
              :AMD,
              HubSpotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          ANG =
            T.let(
              :ANG,
              HubSpotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          AOA =
            T.let(
              :AOA,
              HubSpotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          ARS =
            T.let(
              :ARS,
              HubSpotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          AUD =
            T.let(
              :AUD,
              HubSpotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          AWG =
            T.let(
              :AWG,
              HubSpotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          AZN =
            T.let(
              :AZN,
              HubSpotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          BAM =
            T.let(
              :BAM,
              HubSpotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          BBD =
            T.let(
              :BBD,
              HubSpotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          BDT =
            T.let(
              :BDT,
              HubSpotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          BGN =
            T.let(
              :BGN,
              HubSpotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          BHD =
            T.let(
              :BHD,
              HubSpotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          BIF =
            T.let(
              :BIF,
              HubSpotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          BMD =
            T.let(
              :BMD,
              HubSpotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          BND =
            T.let(
              :BND,
              HubSpotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          BOB =
            T.let(
              :BOB,
              HubSpotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          BOV =
            T.let(
              :BOV,
              HubSpotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          BRL =
            T.let(
              :BRL,
              HubSpotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          BSD =
            T.let(
              :BSD,
              HubSpotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          BTN =
            T.let(
              :BTN,
              HubSpotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          BWP =
            T.let(
              :BWP,
              HubSpotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          BYN =
            T.let(
              :BYN,
              HubSpotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          BZD =
            T.let(
              :BZD,
              HubSpotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          CAD =
            T.let(
              :CAD,
              HubSpotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          CDF =
            T.let(
              :CDF,
              HubSpotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          CHE =
            T.let(
              :CHE,
              HubSpotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          CHF =
            T.let(
              :CHF,
              HubSpotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          CHW =
            T.let(
              :CHW,
              HubSpotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          CLF =
            T.let(
              :CLF,
              HubSpotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          CLP =
            T.let(
              :CLP,
              HubSpotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          CNY =
            T.let(
              :CNY,
              HubSpotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          COP =
            T.let(
              :COP,
              HubSpotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          COU =
            T.let(
              :COU,
              HubSpotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          CRC =
            T.let(
              :CRC,
              HubSpotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          CUC =
            T.let(
              :CUC,
              HubSpotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          CUP =
            T.let(
              :CUP,
              HubSpotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          CVE =
            T.let(
              :CVE,
              HubSpotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          CZK =
            T.let(
              :CZK,
              HubSpotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          DJF =
            T.let(
              :DJF,
              HubSpotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          DKK =
            T.let(
              :DKK,
              HubSpotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          DOP =
            T.let(
              :DOP,
              HubSpotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          DZD =
            T.let(
              :DZD,
              HubSpotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          EGP =
            T.let(
              :EGP,
              HubSpotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          ERN =
            T.let(
              :ERN,
              HubSpotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          ETB =
            T.let(
              :ETB,
              HubSpotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          EUR =
            T.let(
              :EUR,
              HubSpotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          FJD =
            T.let(
              :FJD,
              HubSpotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          FKP =
            T.let(
              :FKP,
              HubSpotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          GBP =
            T.let(
              :GBP,
              HubSpotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          GEL =
            T.let(
              :GEL,
              HubSpotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          GHS =
            T.let(
              :GHS,
              HubSpotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          GIP =
            T.let(
              :GIP,
              HubSpotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          GMD =
            T.let(
              :GMD,
              HubSpotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          GNF =
            T.let(
              :GNF,
              HubSpotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          GTQ =
            T.let(
              :GTQ,
              HubSpotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          GYD =
            T.let(
              :GYD,
              HubSpotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          HKD =
            T.let(
              :HKD,
              HubSpotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          HNL =
            T.let(
              :HNL,
              HubSpotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          HRK =
            T.let(
              :HRK,
              HubSpotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          HTG =
            T.let(
              :HTG,
              HubSpotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          HUF =
            T.let(
              :HUF,
              HubSpotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          IDR =
            T.let(
              :IDR,
              HubSpotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          ILS =
            T.let(
              :ILS,
              HubSpotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          INR =
            T.let(
              :INR,
              HubSpotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          IQD =
            T.let(
              :IQD,
              HubSpotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          IRR =
            T.let(
              :IRR,
              HubSpotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          ISK =
            T.let(
              :ISK,
              HubSpotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          JMD =
            T.let(
              :JMD,
              HubSpotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          JOD =
            T.let(
              :JOD,
              HubSpotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          JPY =
            T.let(
              :JPY,
              HubSpotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          KES =
            T.let(
              :KES,
              HubSpotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          KGS =
            T.let(
              :KGS,
              HubSpotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          KHR =
            T.let(
              :KHR,
              HubSpotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          KMF =
            T.let(
              :KMF,
              HubSpotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          KPW =
            T.let(
              :KPW,
              HubSpotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          KRW =
            T.let(
              :KRW,
              HubSpotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          KWD =
            T.let(
              :KWD,
              HubSpotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          KYD =
            T.let(
              :KYD,
              HubSpotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          KZT =
            T.let(
              :KZT,
              HubSpotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          LAK =
            T.let(
              :LAK,
              HubSpotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          LBP =
            T.let(
              :LBP,
              HubSpotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          LKR =
            T.let(
              :LKR,
              HubSpotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          LRD =
            T.let(
              :LRD,
              HubSpotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          LSL =
            T.let(
              :LSL,
              HubSpotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          LYD =
            T.let(
              :LYD,
              HubSpotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          MAD =
            T.let(
              :MAD,
              HubSpotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          MDL =
            T.let(
              :MDL,
              HubSpotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          MGA =
            T.let(
              :MGA,
              HubSpotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          MKD =
            T.let(
              :MKD,
              HubSpotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          MMK =
            T.let(
              :MMK,
              HubSpotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          MNT =
            T.let(
              :MNT,
              HubSpotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          MOP =
            T.let(
              :MOP,
              HubSpotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          MRU =
            T.let(
              :MRU,
              HubSpotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          MUR =
            T.let(
              :MUR,
              HubSpotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          MVR =
            T.let(
              :MVR,
              HubSpotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          MWK =
            T.let(
              :MWK,
              HubSpotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          MXN =
            T.let(
              :MXN,
              HubSpotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          MXV =
            T.let(
              :MXV,
              HubSpotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          MYR =
            T.let(
              :MYR,
              HubSpotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          MZN =
            T.let(
              :MZN,
              HubSpotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          NAD =
            T.let(
              :NAD,
              HubSpotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          NGN =
            T.let(
              :NGN,
              HubSpotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          NIO =
            T.let(
              :NIO,
              HubSpotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          NOK =
            T.let(
              :NOK,
              HubSpotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          NPR =
            T.let(
              :NPR,
              HubSpotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          NZD =
            T.let(
              :NZD,
              HubSpotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          OMR =
            T.let(
              :OMR,
              HubSpotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          PAB =
            T.let(
              :PAB,
              HubSpotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          PEN =
            T.let(
              :PEN,
              HubSpotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          PGK =
            T.let(
              :PGK,
              HubSpotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          PHP =
            T.let(
              :PHP,
              HubSpotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          PKR =
            T.let(
              :PKR,
              HubSpotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          PLN =
            T.let(
              :PLN,
              HubSpotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          PYG =
            T.let(
              :PYG,
              HubSpotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          QAR =
            T.let(
              :QAR,
              HubSpotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          RON =
            T.let(
              :RON,
              HubSpotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          RSD =
            T.let(
              :RSD,
              HubSpotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          RUB =
            T.let(
              :RUB,
              HubSpotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          RWF =
            T.let(
              :RWF,
              HubSpotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          SAR =
            T.let(
              :SAR,
              HubSpotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          SBD =
            T.let(
              :SBD,
              HubSpotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          SCR =
            T.let(
              :SCR,
              HubSpotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          SDG =
            T.let(
              :SDG,
              HubSpotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          SEK =
            T.let(
              :SEK,
              HubSpotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          SGD =
            T.let(
              :SGD,
              HubSpotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          SHP =
            T.let(
              :SHP,
              HubSpotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          SLL =
            T.let(
              :SLL,
              HubSpotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          SOS =
            T.let(
              :SOS,
              HubSpotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          SRD =
            T.let(
              :SRD,
              HubSpotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          SSP =
            T.let(
              :SSP,
              HubSpotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          STN =
            T.let(
              :STN,
              HubSpotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          SVC =
            T.let(
              :SVC,
              HubSpotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          SYP =
            T.let(
              :SYP,
              HubSpotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          SZL =
            T.let(
              :SZL,
              HubSpotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          THB =
            T.let(
              :THB,
              HubSpotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          TJS =
            T.let(
              :TJS,
              HubSpotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          TMT =
            T.let(
              :TMT,
              HubSpotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          TND =
            T.let(
              :TND,
              HubSpotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          TOP =
            T.let(
              :TOP,
              HubSpotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          TRY =
            T.let(
              :TRY,
              HubSpotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          TTD =
            T.let(
              :TTD,
              HubSpotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          TWD =
            T.let(
              :TWD,
              HubSpotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          TZS =
            T.let(
              :TZS,
              HubSpotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          UAH =
            T.let(
              :UAH,
              HubSpotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          UGX =
            T.let(
              :UGX,
              HubSpotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          USD =
            T.let(
              :USD,
              HubSpotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          USN =
            T.let(
              :USN,
              HubSpotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          UYI =
            T.let(
              :UYI,
              HubSpotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          UYU =
            T.let(
              :UYU,
              HubSpotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          UZS =
            T.let(
              :UZS,
              HubSpotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          VEF =
            T.let(
              :VEF,
              HubSpotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          VND =
            T.let(
              :VND,
              HubSpotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          VUV =
            T.let(
              :VUV,
              HubSpotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          WST =
            T.let(
              :WST,
              HubSpotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          XAF =
            T.let(
              :XAF,
              HubSpotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          XAG =
            T.let(
              :XAG,
              HubSpotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          XAU =
            T.let(
              :XAU,
              HubSpotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          XBA =
            T.let(
              :XBA,
              HubSpotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          XBB =
            T.let(
              :XBB,
              HubSpotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          XBC =
            T.let(
              :XBC,
              HubSpotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          XBD =
            T.let(
              :XBD,
              HubSpotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          XCD =
            T.let(
              :XCD,
              HubSpotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          XDR =
            T.let(
              :XDR,
              HubSpotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          XOF =
            T.let(
              :XOF,
              HubSpotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          XPD =
            T.let(
              :XPD,
              HubSpotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          XPF =
            T.let(
              :XPF,
              HubSpotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          XPT =
            T.let(
              :XPT,
              HubSpotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          XSU =
            T.let(
              :XSU,
              HubSpotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          XUA =
            T.let(
              :XUA,
              HubSpotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          YER =
            T.let(
              :YER,
              HubSpotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          ZAR =
            T.let(
              :ZAR,
              HubSpotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          ZMW =
            T.let(
              :ZMW,
              HubSpotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          ZWL =
            T.let(
              :ZWL,
              HubSpotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
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
