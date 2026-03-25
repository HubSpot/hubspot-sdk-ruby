# typed: strong

module HubspotSDK
  module Models
    module Marketing
      class RevenueAttributionAggregate < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Marketing::RevenueAttributionAggregate,
              HubspotSDK::Internal::AnyHash
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
              HubspotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          )
        end
        attr_reader :currency_code

        sig do
          params(
            currency_code:
              HubspotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::OrSymbol
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
              HubspotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::OrSymbol,
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
                HubspotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol,
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
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubspotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          AED =
            T.let(
              :AED,
              HubspotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          AFN =
            T.let(
              :AFN,
              HubspotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          ALL =
            T.let(
              :ALL,
              HubspotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          AMD =
            T.let(
              :AMD,
              HubspotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          ANG =
            T.let(
              :ANG,
              HubspotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          AOA =
            T.let(
              :AOA,
              HubspotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          ARS =
            T.let(
              :ARS,
              HubspotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          AUD =
            T.let(
              :AUD,
              HubspotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          AWG =
            T.let(
              :AWG,
              HubspotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          AZN =
            T.let(
              :AZN,
              HubspotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          BAM =
            T.let(
              :BAM,
              HubspotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          BBD =
            T.let(
              :BBD,
              HubspotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          BDT =
            T.let(
              :BDT,
              HubspotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          BGN =
            T.let(
              :BGN,
              HubspotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          BHD =
            T.let(
              :BHD,
              HubspotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          BIF =
            T.let(
              :BIF,
              HubspotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          BMD =
            T.let(
              :BMD,
              HubspotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          BND =
            T.let(
              :BND,
              HubspotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          BOB =
            T.let(
              :BOB,
              HubspotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          BOV =
            T.let(
              :BOV,
              HubspotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          BRL =
            T.let(
              :BRL,
              HubspotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          BSD =
            T.let(
              :BSD,
              HubspotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          BTN =
            T.let(
              :BTN,
              HubspotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          BWP =
            T.let(
              :BWP,
              HubspotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          BYN =
            T.let(
              :BYN,
              HubspotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          BZD =
            T.let(
              :BZD,
              HubspotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          CAD =
            T.let(
              :CAD,
              HubspotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          CDF =
            T.let(
              :CDF,
              HubspotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          CHE =
            T.let(
              :CHE,
              HubspotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          CHF =
            T.let(
              :CHF,
              HubspotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          CHW =
            T.let(
              :CHW,
              HubspotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          CLF =
            T.let(
              :CLF,
              HubspotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          CLP =
            T.let(
              :CLP,
              HubspotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          CNY =
            T.let(
              :CNY,
              HubspotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          COP =
            T.let(
              :COP,
              HubspotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          COU =
            T.let(
              :COU,
              HubspotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          CRC =
            T.let(
              :CRC,
              HubspotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          CUC =
            T.let(
              :CUC,
              HubspotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          CUP =
            T.let(
              :CUP,
              HubspotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          CVE =
            T.let(
              :CVE,
              HubspotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          CZK =
            T.let(
              :CZK,
              HubspotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          DJF =
            T.let(
              :DJF,
              HubspotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          DKK =
            T.let(
              :DKK,
              HubspotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          DOP =
            T.let(
              :DOP,
              HubspotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          DZD =
            T.let(
              :DZD,
              HubspotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          EGP =
            T.let(
              :EGP,
              HubspotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          ERN =
            T.let(
              :ERN,
              HubspotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          ETB =
            T.let(
              :ETB,
              HubspotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          EUR =
            T.let(
              :EUR,
              HubspotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          FJD =
            T.let(
              :FJD,
              HubspotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          FKP =
            T.let(
              :FKP,
              HubspotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          GBP =
            T.let(
              :GBP,
              HubspotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          GEL =
            T.let(
              :GEL,
              HubspotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          GHS =
            T.let(
              :GHS,
              HubspotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          GIP =
            T.let(
              :GIP,
              HubspotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          GMD =
            T.let(
              :GMD,
              HubspotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          GNF =
            T.let(
              :GNF,
              HubspotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          GTQ =
            T.let(
              :GTQ,
              HubspotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          GYD =
            T.let(
              :GYD,
              HubspotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          HKD =
            T.let(
              :HKD,
              HubspotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          HNL =
            T.let(
              :HNL,
              HubspotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          HRK =
            T.let(
              :HRK,
              HubspotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          HTG =
            T.let(
              :HTG,
              HubspotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          HUF =
            T.let(
              :HUF,
              HubspotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          IDR =
            T.let(
              :IDR,
              HubspotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          ILS =
            T.let(
              :ILS,
              HubspotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          INR =
            T.let(
              :INR,
              HubspotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          IQD =
            T.let(
              :IQD,
              HubspotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          IRR =
            T.let(
              :IRR,
              HubspotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          ISK =
            T.let(
              :ISK,
              HubspotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          JMD =
            T.let(
              :JMD,
              HubspotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          JOD =
            T.let(
              :JOD,
              HubspotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          JPY =
            T.let(
              :JPY,
              HubspotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          KES =
            T.let(
              :KES,
              HubspotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          KGS =
            T.let(
              :KGS,
              HubspotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          KHR =
            T.let(
              :KHR,
              HubspotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          KMF =
            T.let(
              :KMF,
              HubspotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          KPW =
            T.let(
              :KPW,
              HubspotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          KRW =
            T.let(
              :KRW,
              HubspotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          KWD =
            T.let(
              :KWD,
              HubspotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          KYD =
            T.let(
              :KYD,
              HubspotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          KZT =
            T.let(
              :KZT,
              HubspotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          LAK =
            T.let(
              :LAK,
              HubspotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          LBP =
            T.let(
              :LBP,
              HubspotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          LKR =
            T.let(
              :LKR,
              HubspotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          LRD =
            T.let(
              :LRD,
              HubspotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          LSL =
            T.let(
              :LSL,
              HubspotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          LYD =
            T.let(
              :LYD,
              HubspotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          MAD =
            T.let(
              :MAD,
              HubspotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          MDL =
            T.let(
              :MDL,
              HubspotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          MGA =
            T.let(
              :MGA,
              HubspotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          MKD =
            T.let(
              :MKD,
              HubspotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          MMK =
            T.let(
              :MMK,
              HubspotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          MNT =
            T.let(
              :MNT,
              HubspotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          MOP =
            T.let(
              :MOP,
              HubspotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          MRU =
            T.let(
              :MRU,
              HubspotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          MUR =
            T.let(
              :MUR,
              HubspotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          MVR =
            T.let(
              :MVR,
              HubspotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          MWK =
            T.let(
              :MWK,
              HubspotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          MXN =
            T.let(
              :MXN,
              HubspotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          MXV =
            T.let(
              :MXV,
              HubspotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          MYR =
            T.let(
              :MYR,
              HubspotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          MZN =
            T.let(
              :MZN,
              HubspotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          NAD =
            T.let(
              :NAD,
              HubspotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          NGN =
            T.let(
              :NGN,
              HubspotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          NIO =
            T.let(
              :NIO,
              HubspotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          NOK =
            T.let(
              :NOK,
              HubspotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          NPR =
            T.let(
              :NPR,
              HubspotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          NZD =
            T.let(
              :NZD,
              HubspotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          OMR =
            T.let(
              :OMR,
              HubspotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          PAB =
            T.let(
              :PAB,
              HubspotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          PEN =
            T.let(
              :PEN,
              HubspotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          PGK =
            T.let(
              :PGK,
              HubspotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          PHP =
            T.let(
              :PHP,
              HubspotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          PKR =
            T.let(
              :PKR,
              HubspotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          PLN =
            T.let(
              :PLN,
              HubspotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          PYG =
            T.let(
              :PYG,
              HubspotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          QAR =
            T.let(
              :QAR,
              HubspotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          RON =
            T.let(
              :RON,
              HubspotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          RSD =
            T.let(
              :RSD,
              HubspotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          RUB =
            T.let(
              :RUB,
              HubspotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          RWF =
            T.let(
              :RWF,
              HubspotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          SAR =
            T.let(
              :SAR,
              HubspotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          SBD =
            T.let(
              :SBD,
              HubspotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          SCR =
            T.let(
              :SCR,
              HubspotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          SDG =
            T.let(
              :SDG,
              HubspotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          SEK =
            T.let(
              :SEK,
              HubspotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          SGD =
            T.let(
              :SGD,
              HubspotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          SHP =
            T.let(
              :SHP,
              HubspotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          SLL =
            T.let(
              :SLL,
              HubspotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          SOS =
            T.let(
              :SOS,
              HubspotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          SRD =
            T.let(
              :SRD,
              HubspotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          SSP =
            T.let(
              :SSP,
              HubspotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          STN =
            T.let(
              :STN,
              HubspotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          SVC =
            T.let(
              :SVC,
              HubspotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          SYP =
            T.let(
              :SYP,
              HubspotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          SZL =
            T.let(
              :SZL,
              HubspotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          THB =
            T.let(
              :THB,
              HubspotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          TJS =
            T.let(
              :TJS,
              HubspotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          TMT =
            T.let(
              :TMT,
              HubspotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          TND =
            T.let(
              :TND,
              HubspotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          TOP =
            T.let(
              :TOP,
              HubspotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          TRY =
            T.let(
              :TRY,
              HubspotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          TTD =
            T.let(
              :TTD,
              HubspotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          TWD =
            T.let(
              :TWD,
              HubspotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          TZS =
            T.let(
              :TZS,
              HubspotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          UAH =
            T.let(
              :UAH,
              HubspotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          UGX =
            T.let(
              :UGX,
              HubspotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          USD =
            T.let(
              :USD,
              HubspotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          USN =
            T.let(
              :USN,
              HubspotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          UYI =
            T.let(
              :UYI,
              HubspotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          UYU =
            T.let(
              :UYU,
              HubspotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          UZS =
            T.let(
              :UZS,
              HubspotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          VEF =
            T.let(
              :VEF,
              HubspotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          VND =
            T.let(
              :VND,
              HubspotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          VUV =
            T.let(
              :VUV,
              HubspotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          WST =
            T.let(
              :WST,
              HubspotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          XAF =
            T.let(
              :XAF,
              HubspotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          XAG =
            T.let(
              :XAG,
              HubspotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          XAU =
            T.let(
              :XAU,
              HubspotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          XBA =
            T.let(
              :XBA,
              HubspotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          XBB =
            T.let(
              :XBB,
              HubspotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          XBC =
            T.let(
              :XBC,
              HubspotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          XBD =
            T.let(
              :XBD,
              HubspotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          XCD =
            T.let(
              :XCD,
              HubspotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          XDR =
            T.let(
              :XDR,
              HubspotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          XOF =
            T.let(
              :XOF,
              HubspotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          XPD =
            T.let(
              :XPD,
              HubspotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          XPF =
            T.let(
              :XPF,
              HubspotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          XPT =
            T.let(
              :XPT,
              HubspotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          XSU =
            T.let(
              :XSU,
              HubspotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          XUA =
            T.let(
              :XUA,
              HubspotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          YER =
            T.let(
              :YER,
              HubspotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          ZAR =
            T.let(
              :ZAR,
              HubspotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          ZMW =
            T.let(
              :ZMW,
              HubspotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )
          ZWL =
            T.let(
              :ZWL,
              HubspotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode::TaggedSymbol
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
