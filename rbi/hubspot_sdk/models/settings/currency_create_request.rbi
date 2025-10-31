# typed: strong

module HubspotSDK
  module Models
    module Settings
      class CurrencyCreateRequest < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Settings::CurrencyCreateRequest,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig do
          returns(
            HubspotSDK::Settings::CurrencyCreateRequest::CurrencyCode::OrSymbol
          )
        end
        attr_accessor :currency_code

        sig do
          params(
            currency_code:
              HubspotSDK::Settings::CurrencyCreateRequest::CurrencyCode::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(currency_code:)
        end

        sig do
          override.returns(
            {
              currency_code:
                HubspotSDK::Settings::CurrencyCreateRequest::CurrencyCode::OrSymbol
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
                HubspotSDK::Settings::CurrencyCreateRequest::CurrencyCode
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          AED =
            T.let(
              :AED,
              HubspotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          AFN =
            T.let(
              :AFN,
              HubspotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          ALL =
            T.let(
              :ALL,
              HubspotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          AMD =
            T.let(
              :AMD,
              HubspotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          ANG =
            T.let(
              :ANG,
              HubspotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          AOA =
            T.let(
              :AOA,
              HubspotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          ARS =
            T.let(
              :ARS,
              HubspotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          AUD =
            T.let(
              :AUD,
              HubspotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          AWG =
            T.let(
              :AWG,
              HubspotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          AZN =
            T.let(
              :AZN,
              HubspotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          BAM =
            T.let(
              :BAM,
              HubspotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          BBD =
            T.let(
              :BBD,
              HubspotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          BDT =
            T.let(
              :BDT,
              HubspotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          BGN =
            T.let(
              :BGN,
              HubspotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          BHD =
            T.let(
              :BHD,
              HubspotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          BIF =
            T.let(
              :BIF,
              HubspotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          BMD =
            T.let(
              :BMD,
              HubspotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          BND =
            T.let(
              :BND,
              HubspotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          BOB =
            T.let(
              :BOB,
              HubspotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          BOV =
            T.let(
              :BOV,
              HubspotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          BRL =
            T.let(
              :BRL,
              HubspotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          BSD =
            T.let(
              :BSD,
              HubspotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          BTN =
            T.let(
              :BTN,
              HubspotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          BWP =
            T.let(
              :BWP,
              HubspotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          BYN =
            T.let(
              :BYN,
              HubspotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          BZD =
            T.let(
              :BZD,
              HubspotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          CAD =
            T.let(
              :CAD,
              HubspotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          CDF =
            T.let(
              :CDF,
              HubspotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          CHE =
            T.let(
              :CHE,
              HubspotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          CHF =
            T.let(
              :CHF,
              HubspotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          CHW =
            T.let(
              :CHW,
              HubspotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          CLF =
            T.let(
              :CLF,
              HubspotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          CLP =
            T.let(
              :CLP,
              HubspotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          CNY =
            T.let(
              :CNY,
              HubspotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          COP =
            T.let(
              :COP,
              HubspotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          COU =
            T.let(
              :COU,
              HubspotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          CRC =
            T.let(
              :CRC,
              HubspotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          CUC =
            T.let(
              :CUC,
              HubspotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          CUP =
            T.let(
              :CUP,
              HubspotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          CVE =
            T.let(
              :CVE,
              HubspotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          CZK =
            T.let(
              :CZK,
              HubspotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          DJF =
            T.let(
              :DJF,
              HubspotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          DKK =
            T.let(
              :DKK,
              HubspotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          DOP =
            T.let(
              :DOP,
              HubspotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          DZD =
            T.let(
              :DZD,
              HubspotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          EGP =
            T.let(
              :EGP,
              HubspotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          ERN =
            T.let(
              :ERN,
              HubspotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          ETB =
            T.let(
              :ETB,
              HubspotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          EUR =
            T.let(
              :EUR,
              HubspotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          FJD =
            T.let(
              :FJD,
              HubspotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          FKP =
            T.let(
              :FKP,
              HubspotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          GBP =
            T.let(
              :GBP,
              HubspotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          GEL =
            T.let(
              :GEL,
              HubspotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          GHS =
            T.let(
              :GHS,
              HubspotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          GIP =
            T.let(
              :GIP,
              HubspotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          GMD =
            T.let(
              :GMD,
              HubspotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          GNF =
            T.let(
              :GNF,
              HubspotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          GTQ =
            T.let(
              :GTQ,
              HubspotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          GYD =
            T.let(
              :GYD,
              HubspotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          HKD =
            T.let(
              :HKD,
              HubspotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          HNL =
            T.let(
              :HNL,
              HubspotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          HRK =
            T.let(
              :HRK,
              HubspotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          HTG =
            T.let(
              :HTG,
              HubspotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          HUF =
            T.let(
              :HUF,
              HubspotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          IDR =
            T.let(
              :IDR,
              HubspotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          ILS =
            T.let(
              :ILS,
              HubspotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          INR =
            T.let(
              :INR,
              HubspotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          IQD =
            T.let(
              :IQD,
              HubspotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          IRR =
            T.let(
              :IRR,
              HubspotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          ISK =
            T.let(
              :ISK,
              HubspotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          JMD =
            T.let(
              :JMD,
              HubspotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          JOD =
            T.let(
              :JOD,
              HubspotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          JPY =
            T.let(
              :JPY,
              HubspotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          KES =
            T.let(
              :KES,
              HubspotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          KGS =
            T.let(
              :KGS,
              HubspotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          KHR =
            T.let(
              :KHR,
              HubspotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          KMF =
            T.let(
              :KMF,
              HubspotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          KPW =
            T.let(
              :KPW,
              HubspotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          KRW =
            T.let(
              :KRW,
              HubspotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          KWD =
            T.let(
              :KWD,
              HubspotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          KYD =
            T.let(
              :KYD,
              HubspotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          KZT =
            T.let(
              :KZT,
              HubspotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          LAK =
            T.let(
              :LAK,
              HubspotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          LBP =
            T.let(
              :LBP,
              HubspotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          LKR =
            T.let(
              :LKR,
              HubspotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          LRD =
            T.let(
              :LRD,
              HubspotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          LSL =
            T.let(
              :LSL,
              HubspotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          LYD =
            T.let(
              :LYD,
              HubspotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          MAD =
            T.let(
              :MAD,
              HubspotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          MDL =
            T.let(
              :MDL,
              HubspotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          MGA =
            T.let(
              :MGA,
              HubspotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          MKD =
            T.let(
              :MKD,
              HubspotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          MMK =
            T.let(
              :MMK,
              HubspotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          MNT =
            T.let(
              :MNT,
              HubspotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          MOP =
            T.let(
              :MOP,
              HubspotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          MRU =
            T.let(
              :MRU,
              HubspotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          MUR =
            T.let(
              :MUR,
              HubspotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          MVR =
            T.let(
              :MVR,
              HubspotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          MWK =
            T.let(
              :MWK,
              HubspotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          MXN =
            T.let(
              :MXN,
              HubspotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          MXV =
            T.let(
              :MXV,
              HubspotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          MYR =
            T.let(
              :MYR,
              HubspotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          MZN =
            T.let(
              :MZN,
              HubspotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          NAD =
            T.let(
              :NAD,
              HubspotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          NGN =
            T.let(
              :NGN,
              HubspotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          NIO =
            T.let(
              :NIO,
              HubspotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          NOK =
            T.let(
              :NOK,
              HubspotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          NPR =
            T.let(
              :NPR,
              HubspotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          NZD =
            T.let(
              :NZD,
              HubspotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          OMR =
            T.let(
              :OMR,
              HubspotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          PAB =
            T.let(
              :PAB,
              HubspotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          PEN =
            T.let(
              :PEN,
              HubspotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          PGK =
            T.let(
              :PGK,
              HubspotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          PHP =
            T.let(
              :PHP,
              HubspotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          PKR =
            T.let(
              :PKR,
              HubspotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          PLN =
            T.let(
              :PLN,
              HubspotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          PYG =
            T.let(
              :PYG,
              HubspotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          QAR =
            T.let(
              :QAR,
              HubspotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          RON =
            T.let(
              :RON,
              HubspotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          RSD =
            T.let(
              :RSD,
              HubspotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          RUB =
            T.let(
              :RUB,
              HubspotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          RWF =
            T.let(
              :RWF,
              HubspotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          SAR =
            T.let(
              :SAR,
              HubspotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          SBD =
            T.let(
              :SBD,
              HubspotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          SCR =
            T.let(
              :SCR,
              HubspotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          SDG =
            T.let(
              :SDG,
              HubspotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          SEK =
            T.let(
              :SEK,
              HubspotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          SGD =
            T.let(
              :SGD,
              HubspotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          SHP =
            T.let(
              :SHP,
              HubspotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          SLL =
            T.let(
              :SLL,
              HubspotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          SOS =
            T.let(
              :SOS,
              HubspotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          SRD =
            T.let(
              :SRD,
              HubspotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          SSP =
            T.let(
              :SSP,
              HubspotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          STN =
            T.let(
              :STN,
              HubspotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          SVC =
            T.let(
              :SVC,
              HubspotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          SYP =
            T.let(
              :SYP,
              HubspotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          SZL =
            T.let(
              :SZL,
              HubspotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          THB =
            T.let(
              :THB,
              HubspotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          TJS =
            T.let(
              :TJS,
              HubspotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          TMT =
            T.let(
              :TMT,
              HubspotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          TND =
            T.let(
              :TND,
              HubspotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          TOP =
            T.let(
              :TOP,
              HubspotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          TRY =
            T.let(
              :TRY,
              HubspotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          TTD =
            T.let(
              :TTD,
              HubspotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          TWD =
            T.let(
              :TWD,
              HubspotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          TZS =
            T.let(
              :TZS,
              HubspotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          UAH =
            T.let(
              :UAH,
              HubspotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          UGX =
            T.let(
              :UGX,
              HubspotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          USD =
            T.let(
              :USD,
              HubspotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          USN =
            T.let(
              :USN,
              HubspotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          UYI =
            T.let(
              :UYI,
              HubspotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          UYU =
            T.let(
              :UYU,
              HubspotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          UZS =
            T.let(
              :UZS,
              HubspotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          VEF =
            T.let(
              :VEF,
              HubspotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          VND =
            T.let(
              :VND,
              HubspotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          VUV =
            T.let(
              :VUV,
              HubspotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          WST =
            T.let(
              :WST,
              HubspotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          XAF =
            T.let(
              :XAF,
              HubspotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          XAG =
            T.let(
              :XAG,
              HubspotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          XAU =
            T.let(
              :XAU,
              HubspotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          XBA =
            T.let(
              :XBA,
              HubspotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          XBB =
            T.let(
              :XBB,
              HubspotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          XBC =
            T.let(
              :XBC,
              HubspotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          XBD =
            T.let(
              :XBD,
              HubspotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          XCD =
            T.let(
              :XCD,
              HubspotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          XDR =
            T.let(
              :XDR,
              HubspotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          XOF =
            T.let(
              :XOF,
              HubspotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          XPD =
            T.let(
              :XPD,
              HubspotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          XPF =
            T.let(
              :XPF,
              HubspotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          XPT =
            T.let(
              :XPT,
              HubspotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          XSU =
            T.let(
              :XSU,
              HubspotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          XUA =
            T.let(
              :XUA,
              HubspotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          YER =
            T.let(
              :YER,
              HubspotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          ZAR =
            T.let(
              :ZAR,
              HubspotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          ZMW =
            T.let(
              :ZMW,
              HubspotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          ZWL =
            T.let(
              :ZWL,
              HubspotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
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
