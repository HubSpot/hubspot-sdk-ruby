# typed: strong

module HubSpotSDK
  module Models
    module Marketing
      class RevenueAttributionAggregate < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Marketing::RevenueAttributionAggregate,
              HubSpotSDK::Internal::AnyHash
            )
          end

        # The number of contacts attributed to the campaign.
        sig { returns(T.nilable(Integer)) }
        attr_reader :contacts_number

        sig { params(contacts_number: Integer).void }
        attr_writer :contacts_number

        # The currency code used for the revenue attribution, with accepted values
        # including AED, AFN, ALL, and others.
        sig do
          returns(
            T.nilable(
              HubSpotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          )
        end
        attr_reader :currency_code

        sig do
          params(
            currency_code:
              HubSpotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::OrSymbol
          ).void
        end
        attr_writer :currency_code

        # The total amount of deals attributed to the campaign.
        sig { returns(T.nilable(Float)) }
        attr_reader :deal_amount

        sig { params(deal_amount: Float).void }
        attr_writer :deal_amount

        # The number of deals attributed to the campaign.
        sig { returns(T.nilable(Integer)) }
        attr_reader :deals_number

        sig { params(deals_number: Integer).void }
        attr_writer :deals_number

        # The total revenue amount attributed to the campaign.
        sig { returns(T.nilable(Float)) }
        attr_reader :revenue_amount

        sig { params(revenue_amount: Float).void }
        attr_writer :revenue_amount

        sig do
          params(
            contacts_number: Integer,
            currency_code:
              HubSpotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::OrSymbol,
            deal_amount: Float,
            deals_number: Integer,
            revenue_amount: Float
          ).returns(T.attached_class)
        end
        def self.new(
          # The number of contacts attributed to the campaign.
          contacts_number: nil,
          # The currency code used for the revenue attribution, with accepted values
          # including AED, AFN, ALL, and others.
          currency_code: nil,
          # The total amount of deals attributed to the campaign.
          deal_amount: nil,
          # The number of deals attributed to the campaign.
          deals_number: nil,
          # The total revenue amount attributed to the campaign.
          revenue_amount: nil
        )
        end

        sig do
          override.returns(
            {
              contacts_number: Integer,
              currency_code:
                HubSpotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol,
              deal_amount: Float,
              deals_number: Integer,
              revenue_amount: Float
            }
          )
        end
        def to_hash
        end

        # The currency code used for the revenue attribution, with accepted values
        # including AED, AFN, ALL, and others.
        module CurrencyCode
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubSpotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          AED =
            T.let(
              :AED,
              HubSpotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          AFN =
            T.let(
              :AFN,
              HubSpotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          ALL =
            T.let(
              :ALL,
              HubSpotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          AMD =
            T.let(
              :AMD,
              HubSpotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          ANG =
            T.let(
              :ANG,
              HubSpotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          AOA =
            T.let(
              :AOA,
              HubSpotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          ARS =
            T.let(
              :ARS,
              HubSpotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          AUD =
            T.let(
              :AUD,
              HubSpotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          AWG =
            T.let(
              :AWG,
              HubSpotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          AZN =
            T.let(
              :AZN,
              HubSpotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          BAM =
            T.let(
              :BAM,
              HubSpotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          BBD =
            T.let(
              :BBD,
              HubSpotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          BDT =
            T.let(
              :BDT,
              HubSpotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          BGN =
            T.let(
              :BGN,
              HubSpotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          BHD =
            T.let(
              :BHD,
              HubSpotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          BIF =
            T.let(
              :BIF,
              HubSpotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          BMD =
            T.let(
              :BMD,
              HubSpotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          BND =
            T.let(
              :BND,
              HubSpotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          BOB =
            T.let(
              :BOB,
              HubSpotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          BOV =
            T.let(
              :BOV,
              HubSpotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          BRL =
            T.let(
              :BRL,
              HubSpotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          BSD =
            T.let(
              :BSD,
              HubSpotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          BTN =
            T.let(
              :BTN,
              HubSpotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          BWP =
            T.let(
              :BWP,
              HubSpotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          BYN =
            T.let(
              :BYN,
              HubSpotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          BZD =
            T.let(
              :BZD,
              HubSpotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          CAD =
            T.let(
              :CAD,
              HubSpotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          CDF =
            T.let(
              :CDF,
              HubSpotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          CHE =
            T.let(
              :CHE,
              HubSpotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          CHF =
            T.let(
              :CHF,
              HubSpotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          CHW =
            T.let(
              :CHW,
              HubSpotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          CLF =
            T.let(
              :CLF,
              HubSpotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          CLP =
            T.let(
              :CLP,
              HubSpotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          CNY =
            T.let(
              :CNY,
              HubSpotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          COP =
            T.let(
              :COP,
              HubSpotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          COU =
            T.let(
              :COU,
              HubSpotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          CRC =
            T.let(
              :CRC,
              HubSpotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          CUC =
            T.let(
              :CUC,
              HubSpotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          CUP =
            T.let(
              :CUP,
              HubSpotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          CVE =
            T.let(
              :CVE,
              HubSpotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          CZK =
            T.let(
              :CZK,
              HubSpotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          DJF =
            T.let(
              :DJF,
              HubSpotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          DKK =
            T.let(
              :DKK,
              HubSpotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          DOP =
            T.let(
              :DOP,
              HubSpotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          DZD =
            T.let(
              :DZD,
              HubSpotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          EGP =
            T.let(
              :EGP,
              HubSpotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          ERN =
            T.let(
              :ERN,
              HubSpotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          ETB =
            T.let(
              :ETB,
              HubSpotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          EUR =
            T.let(
              :EUR,
              HubSpotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          FJD =
            T.let(
              :FJD,
              HubSpotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          FKP =
            T.let(
              :FKP,
              HubSpotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          GBP =
            T.let(
              :GBP,
              HubSpotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          GEL =
            T.let(
              :GEL,
              HubSpotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          GHS =
            T.let(
              :GHS,
              HubSpotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          GIP =
            T.let(
              :GIP,
              HubSpotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          GMD =
            T.let(
              :GMD,
              HubSpotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          GNF =
            T.let(
              :GNF,
              HubSpotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          GTQ =
            T.let(
              :GTQ,
              HubSpotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          GYD =
            T.let(
              :GYD,
              HubSpotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          HKD =
            T.let(
              :HKD,
              HubSpotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          HNL =
            T.let(
              :HNL,
              HubSpotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          HRK =
            T.let(
              :HRK,
              HubSpotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          HTG =
            T.let(
              :HTG,
              HubSpotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          HUF =
            T.let(
              :HUF,
              HubSpotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          IDR =
            T.let(
              :IDR,
              HubSpotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          ILS =
            T.let(
              :ILS,
              HubSpotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          INR =
            T.let(
              :INR,
              HubSpotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          IQD =
            T.let(
              :IQD,
              HubSpotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          IRR =
            T.let(
              :IRR,
              HubSpotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          ISK =
            T.let(
              :ISK,
              HubSpotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          JMD =
            T.let(
              :JMD,
              HubSpotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          JOD =
            T.let(
              :JOD,
              HubSpotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          JPY =
            T.let(
              :JPY,
              HubSpotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          KES =
            T.let(
              :KES,
              HubSpotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          KGS =
            T.let(
              :KGS,
              HubSpotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          KHR =
            T.let(
              :KHR,
              HubSpotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          KMF =
            T.let(
              :KMF,
              HubSpotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          KPW =
            T.let(
              :KPW,
              HubSpotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          KRW =
            T.let(
              :KRW,
              HubSpotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          KWD =
            T.let(
              :KWD,
              HubSpotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          KYD =
            T.let(
              :KYD,
              HubSpotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          KZT =
            T.let(
              :KZT,
              HubSpotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          LAK =
            T.let(
              :LAK,
              HubSpotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          LBP =
            T.let(
              :LBP,
              HubSpotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          LKR =
            T.let(
              :LKR,
              HubSpotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          LRD =
            T.let(
              :LRD,
              HubSpotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          LSL =
            T.let(
              :LSL,
              HubSpotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          LYD =
            T.let(
              :LYD,
              HubSpotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          MAD =
            T.let(
              :MAD,
              HubSpotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          MDL =
            T.let(
              :MDL,
              HubSpotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          MGA =
            T.let(
              :MGA,
              HubSpotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          MKD =
            T.let(
              :MKD,
              HubSpotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          MMK =
            T.let(
              :MMK,
              HubSpotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          MNT =
            T.let(
              :MNT,
              HubSpotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          MOP =
            T.let(
              :MOP,
              HubSpotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          MRU =
            T.let(
              :MRU,
              HubSpotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          MUR =
            T.let(
              :MUR,
              HubSpotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          MVR =
            T.let(
              :MVR,
              HubSpotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          MWK =
            T.let(
              :MWK,
              HubSpotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          MXN =
            T.let(
              :MXN,
              HubSpotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          MXV =
            T.let(
              :MXV,
              HubSpotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          MYR =
            T.let(
              :MYR,
              HubSpotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          MZN =
            T.let(
              :MZN,
              HubSpotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          NAD =
            T.let(
              :NAD,
              HubSpotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          NGN =
            T.let(
              :NGN,
              HubSpotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          NIO =
            T.let(
              :NIO,
              HubSpotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          NOK =
            T.let(
              :NOK,
              HubSpotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          NPR =
            T.let(
              :NPR,
              HubSpotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          NZD =
            T.let(
              :NZD,
              HubSpotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          OMR =
            T.let(
              :OMR,
              HubSpotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          PAB =
            T.let(
              :PAB,
              HubSpotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          PEN =
            T.let(
              :PEN,
              HubSpotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          PGK =
            T.let(
              :PGK,
              HubSpotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          PHP =
            T.let(
              :PHP,
              HubSpotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          PKR =
            T.let(
              :PKR,
              HubSpotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          PLN =
            T.let(
              :PLN,
              HubSpotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          PYG =
            T.let(
              :PYG,
              HubSpotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          QAR =
            T.let(
              :QAR,
              HubSpotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          RON =
            T.let(
              :RON,
              HubSpotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          RSD =
            T.let(
              :RSD,
              HubSpotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          RUB =
            T.let(
              :RUB,
              HubSpotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          RWF =
            T.let(
              :RWF,
              HubSpotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          SAR =
            T.let(
              :SAR,
              HubSpotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          SBD =
            T.let(
              :SBD,
              HubSpotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          SCR =
            T.let(
              :SCR,
              HubSpotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          SDG =
            T.let(
              :SDG,
              HubSpotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          SEK =
            T.let(
              :SEK,
              HubSpotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          SGD =
            T.let(
              :SGD,
              HubSpotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          SHP =
            T.let(
              :SHP,
              HubSpotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          SLL =
            T.let(
              :SLL,
              HubSpotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          SOS =
            T.let(
              :SOS,
              HubSpotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          SRD =
            T.let(
              :SRD,
              HubSpotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          SSP =
            T.let(
              :SSP,
              HubSpotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          STN =
            T.let(
              :STN,
              HubSpotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          SVC =
            T.let(
              :SVC,
              HubSpotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          SYP =
            T.let(
              :SYP,
              HubSpotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          SZL =
            T.let(
              :SZL,
              HubSpotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          THB =
            T.let(
              :THB,
              HubSpotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          TJS =
            T.let(
              :TJS,
              HubSpotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          TMT =
            T.let(
              :TMT,
              HubSpotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          TND =
            T.let(
              :TND,
              HubSpotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          TOP =
            T.let(
              :TOP,
              HubSpotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          TRY =
            T.let(
              :TRY,
              HubSpotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          TTD =
            T.let(
              :TTD,
              HubSpotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          TWD =
            T.let(
              :TWD,
              HubSpotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          TZS =
            T.let(
              :TZS,
              HubSpotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          UAH =
            T.let(
              :UAH,
              HubSpotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          UGX =
            T.let(
              :UGX,
              HubSpotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          USD =
            T.let(
              :USD,
              HubSpotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          USN =
            T.let(
              :USN,
              HubSpotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          UYI =
            T.let(
              :UYI,
              HubSpotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          UYU =
            T.let(
              :UYU,
              HubSpotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          UZS =
            T.let(
              :UZS,
              HubSpotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          VEF =
            T.let(
              :VEF,
              HubSpotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          VND =
            T.let(
              :VND,
              HubSpotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          VUV =
            T.let(
              :VUV,
              HubSpotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          WST =
            T.let(
              :WST,
              HubSpotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          XAF =
            T.let(
              :XAF,
              HubSpotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          XAG =
            T.let(
              :XAG,
              HubSpotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          XAU =
            T.let(
              :XAU,
              HubSpotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          XBA =
            T.let(
              :XBA,
              HubSpotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          XBB =
            T.let(
              :XBB,
              HubSpotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          XBC =
            T.let(
              :XBC,
              HubSpotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          XBD =
            T.let(
              :XBD,
              HubSpotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          XCD =
            T.let(
              :XCD,
              HubSpotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          XDR =
            T.let(
              :XDR,
              HubSpotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          XOF =
            T.let(
              :XOF,
              HubSpotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          XPD =
            T.let(
              :XPD,
              HubSpotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          XPF =
            T.let(
              :XPF,
              HubSpotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          XPT =
            T.let(
              :XPT,
              HubSpotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          XSU =
            T.let(
              :XSU,
              HubSpotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          XUA =
            T.let(
              :XUA,
              HubSpotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          YER =
            T.let(
              :YER,
              HubSpotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          ZAR =
            T.let(
              :ZAR,
              HubSpotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          ZMW =
            T.let(
              :ZMW,
              HubSpotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          ZWL =
            T.let(
              :ZWL,
              HubSpotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
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
