# typed: strong

module HubspotSDK
  module Models
    module Settings
      class CompanyCurrencyUpdateRequest < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Settings::CompanyCurrencyUpdateRequest,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig do
          returns(
            HubspotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::OrSymbol
          )
        end
        attr_accessor :currency_code

        sig do
          params(
            currency_code:
              HubspotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(currency_code:)
        end

        sig do
          override.returns(
            {
              currency_code:
                HubspotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::OrSymbol
            }
          )
        end
        def to_hash
        end

        module CurrencyCode
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubspotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          AED =
            T.let(
              :AED,
              HubspotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          AFN =
            T.let(
              :AFN,
              HubspotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          ALL =
            T.let(
              :ALL,
              HubspotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          AMD =
            T.let(
              :AMD,
              HubspotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          ANG =
            T.let(
              :ANG,
              HubspotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          AOA =
            T.let(
              :AOA,
              HubspotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          ARS =
            T.let(
              :ARS,
              HubspotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          AUD =
            T.let(
              :AUD,
              HubspotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          AWG =
            T.let(
              :AWG,
              HubspotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          AZN =
            T.let(
              :AZN,
              HubspotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          BAM =
            T.let(
              :BAM,
              HubspotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          BBD =
            T.let(
              :BBD,
              HubspotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          BDT =
            T.let(
              :BDT,
              HubspotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          BGN =
            T.let(
              :BGN,
              HubspotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          BHD =
            T.let(
              :BHD,
              HubspotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          BIF =
            T.let(
              :BIF,
              HubspotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          BMD =
            T.let(
              :BMD,
              HubspotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          BND =
            T.let(
              :BND,
              HubspotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          BOB =
            T.let(
              :BOB,
              HubspotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          BOV =
            T.let(
              :BOV,
              HubspotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          BRL =
            T.let(
              :BRL,
              HubspotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          BSD =
            T.let(
              :BSD,
              HubspotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          BTN =
            T.let(
              :BTN,
              HubspotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          BWP =
            T.let(
              :BWP,
              HubspotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          BYN =
            T.let(
              :BYN,
              HubspotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          BZD =
            T.let(
              :BZD,
              HubspotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          CAD =
            T.let(
              :CAD,
              HubspotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          CDF =
            T.let(
              :CDF,
              HubspotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          CHE =
            T.let(
              :CHE,
              HubspotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          CHF =
            T.let(
              :CHF,
              HubspotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          CHW =
            T.let(
              :CHW,
              HubspotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          CLF =
            T.let(
              :CLF,
              HubspotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          CLP =
            T.let(
              :CLP,
              HubspotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          CNY =
            T.let(
              :CNY,
              HubspotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          COP =
            T.let(
              :COP,
              HubspotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          COU =
            T.let(
              :COU,
              HubspotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          CRC =
            T.let(
              :CRC,
              HubspotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          CUC =
            T.let(
              :CUC,
              HubspotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          CUP =
            T.let(
              :CUP,
              HubspotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          CVE =
            T.let(
              :CVE,
              HubspotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          CZK =
            T.let(
              :CZK,
              HubspotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          DJF =
            T.let(
              :DJF,
              HubspotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          DKK =
            T.let(
              :DKK,
              HubspotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          DOP =
            T.let(
              :DOP,
              HubspotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          DZD =
            T.let(
              :DZD,
              HubspotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          EGP =
            T.let(
              :EGP,
              HubspotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          ERN =
            T.let(
              :ERN,
              HubspotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          ETB =
            T.let(
              :ETB,
              HubspotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          EUR =
            T.let(
              :EUR,
              HubspotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          FJD =
            T.let(
              :FJD,
              HubspotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          FKP =
            T.let(
              :FKP,
              HubspotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          GBP =
            T.let(
              :GBP,
              HubspotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          GEL =
            T.let(
              :GEL,
              HubspotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          GHS =
            T.let(
              :GHS,
              HubspotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          GIP =
            T.let(
              :GIP,
              HubspotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          GMD =
            T.let(
              :GMD,
              HubspotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          GNF =
            T.let(
              :GNF,
              HubspotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          GTQ =
            T.let(
              :GTQ,
              HubspotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          GYD =
            T.let(
              :GYD,
              HubspotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          HKD =
            T.let(
              :HKD,
              HubspotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          HNL =
            T.let(
              :HNL,
              HubspotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          HRK =
            T.let(
              :HRK,
              HubspotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          HTG =
            T.let(
              :HTG,
              HubspotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          HUF =
            T.let(
              :HUF,
              HubspotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          IDR =
            T.let(
              :IDR,
              HubspotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          ILS =
            T.let(
              :ILS,
              HubspotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          INR =
            T.let(
              :INR,
              HubspotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          IQD =
            T.let(
              :IQD,
              HubspotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          IRR =
            T.let(
              :IRR,
              HubspotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          ISK =
            T.let(
              :ISK,
              HubspotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          JMD =
            T.let(
              :JMD,
              HubspotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          JOD =
            T.let(
              :JOD,
              HubspotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          JPY =
            T.let(
              :JPY,
              HubspotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          KES =
            T.let(
              :KES,
              HubspotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          KGS =
            T.let(
              :KGS,
              HubspotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          KHR =
            T.let(
              :KHR,
              HubspotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          KMF =
            T.let(
              :KMF,
              HubspotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          KPW =
            T.let(
              :KPW,
              HubspotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          KRW =
            T.let(
              :KRW,
              HubspotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          KWD =
            T.let(
              :KWD,
              HubspotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          KYD =
            T.let(
              :KYD,
              HubspotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          KZT =
            T.let(
              :KZT,
              HubspotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          LAK =
            T.let(
              :LAK,
              HubspotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          LBP =
            T.let(
              :LBP,
              HubspotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          LKR =
            T.let(
              :LKR,
              HubspotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          LRD =
            T.let(
              :LRD,
              HubspotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          LSL =
            T.let(
              :LSL,
              HubspotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          LYD =
            T.let(
              :LYD,
              HubspotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          MAD =
            T.let(
              :MAD,
              HubspotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          MDL =
            T.let(
              :MDL,
              HubspotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          MGA =
            T.let(
              :MGA,
              HubspotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          MKD =
            T.let(
              :MKD,
              HubspotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          MMK =
            T.let(
              :MMK,
              HubspotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          MNT =
            T.let(
              :MNT,
              HubspotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          MOP =
            T.let(
              :MOP,
              HubspotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          MRU =
            T.let(
              :MRU,
              HubspotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          MUR =
            T.let(
              :MUR,
              HubspotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          MVR =
            T.let(
              :MVR,
              HubspotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          MWK =
            T.let(
              :MWK,
              HubspotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          MXN =
            T.let(
              :MXN,
              HubspotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          MXV =
            T.let(
              :MXV,
              HubspotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          MYR =
            T.let(
              :MYR,
              HubspotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          MZN =
            T.let(
              :MZN,
              HubspotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          NAD =
            T.let(
              :NAD,
              HubspotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          NGN =
            T.let(
              :NGN,
              HubspotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          NIO =
            T.let(
              :NIO,
              HubspotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          NOK =
            T.let(
              :NOK,
              HubspotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          NPR =
            T.let(
              :NPR,
              HubspotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          NZD =
            T.let(
              :NZD,
              HubspotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          OMR =
            T.let(
              :OMR,
              HubspotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          PAB =
            T.let(
              :PAB,
              HubspotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          PEN =
            T.let(
              :PEN,
              HubspotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          PGK =
            T.let(
              :PGK,
              HubspotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          PHP =
            T.let(
              :PHP,
              HubspotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          PKR =
            T.let(
              :PKR,
              HubspotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          PLN =
            T.let(
              :PLN,
              HubspotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          PYG =
            T.let(
              :PYG,
              HubspotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          QAR =
            T.let(
              :QAR,
              HubspotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          RON =
            T.let(
              :RON,
              HubspotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          RSD =
            T.let(
              :RSD,
              HubspotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          RUB =
            T.let(
              :RUB,
              HubspotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          RWF =
            T.let(
              :RWF,
              HubspotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          SAR =
            T.let(
              :SAR,
              HubspotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          SBD =
            T.let(
              :SBD,
              HubspotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          SCR =
            T.let(
              :SCR,
              HubspotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          SDG =
            T.let(
              :SDG,
              HubspotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          SEK =
            T.let(
              :SEK,
              HubspotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          SGD =
            T.let(
              :SGD,
              HubspotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          SHP =
            T.let(
              :SHP,
              HubspotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          SLL =
            T.let(
              :SLL,
              HubspotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          SOS =
            T.let(
              :SOS,
              HubspotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          SRD =
            T.let(
              :SRD,
              HubspotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          SSP =
            T.let(
              :SSP,
              HubspotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          STN =
            T.let(
              :STN,
              HubspotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          SVC =
            T.let(
              :SVC,
              HubspotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          SYP =
            T.let(
              :SYP,
              HubspotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          SZL =
            T.let(
              :SZL,
              HubspotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          THB =
            T.let(
              :THB,
              HubspotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          TJS =
            T.let(
              :TJS,
              HubspotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          TMT =
            T.let(
              :TMT,
              HubspotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          TND =
            T.let(
              :TND,
              HubspotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          TOP =
            T.let(
              :TOP,
              HubspotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          TRY =
            T.let(
              :TRY,
              HubspotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          TTD =
            T.let(
              :TTD,
              HubspotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          TWD =
            T.let(
              :TWD,
              HubspotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          TZS =
            T.let(
              :TZS,
              HubspotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          UAH =
            T.let(
              :UAH,
              HubspotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          UGX =
            T.let(
              :UGX,
              HubspotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          USD =
            T.let(
              :USD,
              HubspotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          USN =
            T.let(
              :USN,
              HubspotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          UYI =
            T.let(
              :UYI,
              HubspotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          UYU =
            T.let(
              :UYU,
              HubspotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          UZS =
            T.let(
              :UZS,
              HubspotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          VEF =
            T.let(
              :VEF,
              HubspotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          VND =
            T.let(
              :VND,
              HubspotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          VUV =
            T.let(
              :VUV,
              HubspotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          WST =
            T.let(
              :WST,
              HubspotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          XAF =
            T.let(
              :XAF,
              HubspotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          XAG =
            T.let(
              :XAG,
              HubspotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          XAU =
            T.let(
              :XAU,
              HubspotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          XBA =
            T.let(
              :XBA,
              HubspotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          XBB =
            T.let(
              :XBB,
              HubspotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          XBC =
            T.let(
              :XBC,
              HubspotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          XBD =
            T.let(
              :XBD,
              HubspotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          XCD =
            T.let(
              :XCD,
              HubspotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          XDR =
            T.let(
              :XDR,
              HubspotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          XOF =
            T.let(
              :XOF,
              HubspotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          XPD =
            T.let(
              :XPD,
              HubspotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          XPF =
            T.let(
              :XPF,
              HubspotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          XPT =
            T.let(
              :XPT,
              HubspotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          XSU =
            T.let(
              :XSU,
              HubspotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          XUA =
            T.let(
              :XUA,
              HubspotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          YER =
            T.let(
              :YER,
              HubspotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          ZAR =
            T.let(
              :ZAR,
              HubspotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          ZMW =
            T.let(
              :ZMW,
              HubspotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )
          ZWL =
            T.let(
              :ZWL,
              HubspotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::TaggedSymbol
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
