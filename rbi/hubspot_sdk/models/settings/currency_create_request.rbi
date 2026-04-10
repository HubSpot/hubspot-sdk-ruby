# typed: strong

module HubSpotSDK
  module Models
    module Settings
      class CurrencyCreateRequest < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Settings::CurrencyCreateRequest,
              HubSpotSDK::Internal::AnyHash
            )
          end

        # The currency code being added to the HubSpot portal for use with central
        # exchange rates.
        sig do
          returns(
            HubSpotSDK::Settings::CurrencyCreateRequest::CurrencyCode::OrSymbol
          )
        end
        attr_accessor :currency_code

        sig do
          params(
            currency_code:
              HubSpotSDK::Settings::CurrencyCreateRequest::CurrencyCode::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          # The currency code being added to the HubSpot portal for use with central
          # exchange rates.
          currency_code:
        )
        end

        sig do
          override.returns(
            {
              currency_code:
                HubSpotSDK::Settings::CurrencyCreateRequest::CurrencyCode::OrSymbol
            }
          )
        end
        def to_hash
        end

        # The currency code being added to the HubSpot portal for use with central
        # exchange rates.
        module CurrencyCode
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubSpotSDK::Settings::CurrencyCreateRequest::CurrencyCode
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          AED =
            T.let(
              :AED,
              HubSpotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          AFN =
            T.let(
              :AFN,
              HubSpotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          ALL =
            T.let(
              :ALL,
              HubSpotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          AMD =
            T.let(
              :AMD,
              HubSpotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          ANG =
            T.let(
              :ANG,
              HubSpotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          AOA =
            T.let(
              :AOA,
              HubSpotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          ARS =
            T.let(
              :ARS,
              HubSpotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          AUD =
            T.let(
              :AUD,
              HubSpotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          AWG =
            T.let(
              :AWG,
              HubSpotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          AZN =
            T.let(
              :AZN,
              HubSpotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          BAM =
            T.let(
              :BAM,
              HubSpotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          BBD =
            T.let(
              :BBD,
              HubSpotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          BDT =
            T.let(
              :BDT,
              HubSpotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          BGN =
            T.let(
              :BGN,
              HubSpotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          BHD =
            T.let(
              :BHD,
              HubSpotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          BIF =
            T.let(
              :BIF,
              HubSpotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          BMD =
            T.let(
              :BMD,
              HubSpotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          BND =
            T.let(
              :BND,
              HubSpotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          BOB =
            T.let(
              :BOB,
              HubSpotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          BOV =
            T.let(
              :BOV,
              HubSpotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          BRL =
            T.let(
              :BRL,
              HubSpotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          BSD =
            T.let(
              :BSD,
              HubSpotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          BTN =
            T.let(
              :BTN,
              HubSpotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          BWP =
            T.let(
              :BWP,
              HubSpotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          BYN =
            T.let(
              :BYN,
              HubSpotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          BZD =
            T.let(
              :BZD,
              HubSpotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          CAD =
            T.let(
              :CAD,
              HubSpotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          CDF =
            T.let(
              :CDF,
              HubSpotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          CHE =
            T.let(
              :CHE,
              HubSpotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          CHF =
            T.let(
              :CHF,
              HubSpotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          CHW =
            T.let(
              :CHW,
              HubSpotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          CLF =
            T.let(
              :CLF,
              HubSpotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          CLP =
            T.let(
              :CLP,
              HubSpotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          CNY =
            T.let(
              :CNY,
              HubSpotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          COP =
            T.let(
              :COP,
              HubSpotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          COU =
            T.let(
              :COU,
              HubSpotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          CRC =
            T.let(
              :CRC,
              HubSpotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          CUC =
            T.let(
              :CUC,
              HubSpotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          CUP =
            T.let(
              :CUP,
              HubSpotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          CVE =
            T.let(
              :CVE,
              HubSpotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          CZK =
            T.let(
              :CZK,
              HubSpotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          DJF =
            T.let(
              :DJF,
              HubSpotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          DKK =
            T.let(
              :DKK,
              HubSpotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          DOP =
            T.let(
              :DOP,
              HubSpotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          DZD =
            T.let(
              :DZD,
              HubSpotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          EGP =
            T.let(
              :EGP,
              HubSpotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          ERN =
            T.let(
              :ERN,
              HubSpotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          ETB =
            T.let(
              :ETB,
              HubSpotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          EUR =
            T.let(
              :EUR,
              HubSpotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          FJD =
            T.let(
              :FJD,
              HubSpotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          FKP =
            T.let(
              :FKP,
              HubSpotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          GBP =
            T.let(
              :GBP,
              HubSpotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          GEL =
            T.let(
              :GEL,
              HubSpotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          GHS =
            T.let(
              :GHS,
              HubSpotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          GIP =
            T.let(
              :GIP,
              HubSpotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          GMD =
            T.let(
              :GMD,
              HubSpotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          GNF =
            T.let(
              :GNF,
              HubSpotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          GTQ =
            T.let(
              :GTQ,
              HubSpotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          GYD =
            T.let(
              :GYD,
              HubSpotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          HKD =
            T.let(
              :HKD,
              HubSpotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          HNL =
            T.let(
              :HNL,
              HubSpotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          HRK =
            T.let(
              :HRK,
              HubSpotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          HTG =
            T.let(
              :HTG,
              HubSpotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          HUF =
            T.let(
              :HUF,
              HubSpotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          IDR =
            T.let(
              :IDR,
              HubSpotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          ILS =
            T.let(
              :ILS,
              HubSpotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          INR =
            T.let(
              :INR,
              HubSpotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          IQD =
            T.let(
              :IQD,
              HubSpotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          IRR =
            T.let(
              :IRR,
              HubSpotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          ISK =
            T.let(
              :ISK,
              HubSpotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          JMD =
            T.let(
              :JMD,
              HubSpotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          JOD =
            T.let(
              :JOD,
              HubSpotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          JPY =
            T.let(
              :JPY,
              HubSpotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          KES =
            T.let(
              :KES,
              HubSpotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          KGS =
            T.let(
              :KGS,
              HubSpotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          KHR =
            T.let(
              :KHR,
              HubSpotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          KMF =
            T.let(
              :KMF,
              HubSpotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          KPW =
            T.let(
              :KPW,
              HubSpotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          KRW =
            T.let(
              :KRW,
              HubSpotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          KWD =
            T.let(
              :KWD,
              HubSpotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          KYD =
            T.let(
              :KYD,
              HubSpotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          KZT =
            T.let(
              :KZT,
              HubSpotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          LAK =
            T.let(
              :LAK,
              HubSpotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          LBP =
            T.let(
              :LBP,
              HubSpotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          LKR =
            T.let(
              :LKR,
              HubSpotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          LRD =
            T.let(
              :LRD,
              HubSpotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          LSL =
            T.let(
              :LSL,
              HubSpotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          LYD =
            T.let(
              :LYD,
              HubSpotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          MAD =
            T.let(
              :MAD,
              HubSpotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          MDL =
            T.let(
              :MDL,
              HubSpotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          MGA =
            T.let(
              :MGA,
              HubSpotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          MKD =
            T.let(
              :MKD,
              HubSpotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          MMK =
            T.let(
              :MMK,
              HubSpotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          MNT =
            T.let(
              :MNT,
              HubSpotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          MOP =
            T.let(
              :MOP,
              HubSpotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          MRU =
            T.let(
              :MRU,
              HubSpotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          MUR =
            T.let(
              :MUR,
              HubSpotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          MVR =
            T.let(
              :MVR,
              HubSpotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          MWK =
            T.let(
              :MWK,
              HubSpotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          MXN =
            T.let(
              :MXN,
              HubSpotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          MXV =
            T.let(
              :MXV,
              HubSpotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          MYR =
            T.let(
              :MYR,
              HubSpotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          MZN =
            T.let(
              :MZN,
              HubSpotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          NAD =
            T.let(
              :NAD,
              HubSpotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          NGN =
            T.let(
              :NGN,
              HubSpotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          NIO =
            T.let(
              :NIO,
              HubSpotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          NOK =
            T.let(
              :NOK,
              HubSpotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          NPR =
            T.let(
              :NPR,
              HubSpotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          NZD =
            T.let(
              :NZD,
              HubSpotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          OMR =
            T.let(
              :OMR,
              HubSpotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          PAB =
            T.let(
              :PAB,
              HubSpotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          PEN =
            T.let(
              :PEN,
              HubSpotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          PGK =
            T.let(
              :PGK,
              HubSpotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          PHP =
            T.let(
              :PHP,
              HubSpotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          PKR =
            T.let(
              :PKR,
              HubSpotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          PLN =
            T.let(
              :PLN,
              HubSpotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          PYG =
            T.let(
              :PYG,
              HubSpotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          QAR =
            T.let(
              :QAR,
              HubSpotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          RON =
            T.let(
              :RON,
              HubSpotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          RSD =
            T.let(
              :RSD,
              HubSpotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          RUB =
            T.let(
              :RUB,
              HubSpotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          RWF =
            T.let(
              :RWF,
              HubSpotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          SAR =
            T.let(
              :SAR,
              HubSpotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          SBD =
            T.let(
              :SBD,
              HubSpotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          SCR =
            T.let(
              :SCR,
              HubSpotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          SDG =
            T.let(
              :SDG,
              HubSpotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          SEK =
            T.let(
              :SEK,
              HubSpotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          SGD =
            T.let(
              :SGD,
              HubSpotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          SHP =
            T.let(
              :SHP,
              HubSpotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          SLL =
            T.let(
              :SLL,
              HubSpotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          SOS =
            T.let(
              :SOS,
              HubSpotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          SRD =
            T.let(
              :SRD,
              HubSpotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          SSP =
            T.let(
              :SSP,
              HubSpotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          STN =
            T.let(
              :STN,
              HubSpotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          SVC =
            T.let(
              :SVC,
              HubSpotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          SYP =
            T.let(
              :SYP,
              HubSpotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          SZL =
            T.let(
              :SZL,
              HubSpotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          THB =
            T.let(
              :THB,
              HubSpotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          TJS =
            T.let(
              :TJS,
              HubSpotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          TMT =
            T.let(
              :TMT,
              HubSpotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          TND =
            T.let(
              :TND,
              HubSpotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          TOP =
            T.let(
              :TOP,
              HubSpotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          TRY =
            T.let(
              :TRY,
              HubSpotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          TTD =
            T.let(
              :TTD,
              HubSpotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          TWD =
            T.let(
              :TWD,
              HubSpotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          TZS =
            T.let(
              :TZS,
              HubSpotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          UAH =
            T.let(
              :UAH,
              HubSpotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          UGX =
            T.let(
              :UGX,
              HubSpotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          USD =
            T.let(
              :USD,
              HubSpotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          USN =
            T.let(
              :USN,
              HubSpotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          UYI =
            T.let(
              :UYI,
              HubSpotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          UYU =
            T.let(
              :UYU,
              HubSpotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          UZS =
            T.let(
              :UZS,
              HubSpotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          VEF =
            T.let(
              :VEF,
              HubSpotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          VND =
            T.let(
              :VND,
              HubSpotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          VUV =
            T.let(
              :VUV,
              HubSpotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          WST =
            T.let(
              :WST,
              HubSpotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          XAF =
            T.let(
              :XAF,
              HubSpotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          XAG =
            T.let(
              :XAG,
              HubSpotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          XAU =
            T.let(
              :XAU,
              HubSpotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          XBA =
            T.let(
              :XBA,
              HubSpotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          XBB =
            T.let(
              :XBB,
              HubSpotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          XBC =
            T.let(
              :XBC,
              HubSpotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          XBD =
            T.let(
              :XBD,
              HubSpotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          XCD =
            T.let(
              :XCD,
              HubSpotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          XDR =
            T.let(
              :XDR,
              HubSpotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          XOF =
            T.let(
              :XOF,
              HubSpotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          XPD =
            T.let(
              :XPD,
              HubSpotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          XPF =
            T.let(
              :XPF,
              HubSpotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          XPT =
            T.let(
              :XPT,
              HubSpotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          XSU =
            T.let(
              :XSU,
              HubSpotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          XUA =
            T.let(
              :XUA,
              HubSpotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          YER =
            T.let(
              :YER,
              HubSpotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          ZAR =
            T.let(
              :ZAR,
              HubSpotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          ZMW =
            T.let(
              :ZMW,
              HubSpotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )
          ZWL =
            T.let(
              :ZWL,
              HubSpotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Settings::CurrencyCreateRequest::CurrencyCode::TaggedSymbol
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
