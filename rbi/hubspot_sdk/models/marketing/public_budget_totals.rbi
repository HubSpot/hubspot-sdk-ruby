# typed: strong

module HubSpotSDK
  module Models
    module Marketing
      class PublicBudgetTotals < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Marketing::PublicBudgetTotals,
              HubSpotSDK::Internal::AnyHash
            )
          end

        # An array of budget items associated with the campaign. Each item is represented
        # by a PublicBudgetItem object.
        sig { returns(T::Array[HubSpotSDK::Marketing::PublicBudgetItem]) }
        attr_accessor :budget_items

        # The currency code used for the budget and spend amounts, following ISO 4217
        # standards.
        sig do
          returns(
            HubSpotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
          )
        end
        attr_accessor :currency_code

        # An array of spend items associated with the campaign. Each item is represented
        # by a PublicSpendItem object.
        sig { returns(T::Array[HubSpotSDK::Marketing::PublicSpendItem]) }
        attr_accessor :spend_items

        # The total budget allocated for the campaign.
        sig { returns(T.nilable(Float)) }
        attr_reader :budget_total

        sig { params(budget_total: Float).void }
        attr_writer :budget_total

        # The remaining budget available for the campaign after accounting for all spend
        # items.
        sig { returns(T.nilable(Float)) }
        attr_reader :remaining_budget

        sig { params(remaining_budget: Float).void }
        attr_writer :remaining_budget

        # The total amount spent across all spend items in the campaign.
        sig { returns(T.nilable(Float)) }
        attr_reader :spend_total

        sig { params(spend_total: Float).void }
        attr_writer :spend_total

        sig do
          params(
            budget_items:
              T::Array[HubSpotSDK::Marketing::PublicBudgetItem::OrHash],
            currency_code:
              HubSpotSDK::Marketing::PublicBudgetTotals::CurrencyCode::OrSymbol,
            spend_items:
              T::Array[HubSpotSDK::Marketing::PublicSpendItem::OrHash],
            budget_total: Float,
            remaining_budget: Float,
            spend_total: Float
          ).returns(T.attached_class)
        end
        def self.new(
          # An array of budget items associated with the campaign. Each item is represented
          # by a PublicBudgetItem object.
          budget_items:,
          # The currency code used for the budget and spend amounts, following ISO 4217
          # standards.
          currency_code:,
          # An array of spend items associated with the campaign. Each item is represented
          # by a PublicSpendItem object.
          spend_items:,
          # The total budget allocated for the campaign.
          budget_total: nil,
          # The remaining budget available for the campaign after accounting for all spend
          # items.
          remaining_budget: nil,
          # The total amount spent across all spend items in the campaign.
          spend_total: nil
        )
        end

        sig do
          override.returns(
            {
              budget_items: T::Array[HubSpotSDK::Marketing::PublicBudgetItem],
              currency_code:
                HubSpotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol,
              spend_items: T::Array[HubSpotSDK::Marketing::PublicSpendItem],
              budget_total: Float,
              remaining_budget: Float,
              spend_total: Float
            }
          )
        end
        def to_hash
        end

        # The currency code used for the budget and spend amounts, following ISO 4217
        # standards.
        module CurrencyCode
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubSpotSDK::Marketing::PublicBudgetTotals::CurrencyCode
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          AED =
            T.let(
              :AED,
              HubSpotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          AFN =
            T.let(
              :AFN,
              HubSpotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          ALL =
            T.let(
              :ALL,
              HubSpotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          AMD =
            T.let(
              :AMD,
              HubSpotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          ANG =
            T.let(
              :ANG,
              HubSpotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          AOA =
            T.let(
              :AOA,
              HubSpotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          ARS =
            T.let(
              :ARS,
              HubSpotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          AUD =
            T.let(
              :AUD,
              HubSpotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          AWG =
            T.let(
              :AWG,
              HubSpotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          AZN =
            T.let(
              :AZN,
              HubSpotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          BAM =
            T.let(
              :BAM,
              HubSpotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          BBD =
            T.let(
              :BBD,
              HubSpotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          BDT =
            T.let(
              :BDT,
              HubSpotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          BGN =
            T.let(
              :BGN,
              HubSpotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          BHD =
            T.let(
              :BHD,
              HubSpotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          BIF =
            T.let(
              :BIF,
              HubSpotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          BMD =
            T.let(
              :BMD,
              HubSpotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          BND =
            T.let(
              :BND,
              HubSpotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          BOB =
            T.let(
              :BOB,
              HubSpotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          BOV =
            T.let(
              :BOV,
              HubSpotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          BRL =
            T.let(
              :BRL,
              HubSpotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          BSD =
            T.let(
              :BSD,
              HubSpotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          BTN =
            T.let(
              :BTN,
              HubSpotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          BWP =
            T.let(
              :BWP,
              HubSpotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          BYN =
            T.let(
              :BYN,
              HubSpotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          BZD =
            T.let(
              :BZD,
              HubSpotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          CAD =
            T.let(
              :CAD,
              HubSpotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          CDF =
            T.let(
              :CDF,
              HubSpotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          CHE =
            T.let(
              :CHE,
              HubSpotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          CHF =
            T.let(
              :CHF,
              HubSpotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          CHW =
            T.let(
              :CHW,
              HubSpotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          CLF =
            T.let(
              :CLF,
              HubSpotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          CLP =
            T.let(
              :CLP,
              HubSpotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          CNY =
            T.let(
              :CNY,
              HubSpotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          COP =
            T.let(
              :COP,
              HubSpotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          COU =
            T.let(
              :COU,
              HubSpotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          CRC =
            T.let(
              :CRC,
              HubSpotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          CUC =
            T.let(
              :CUC,
              HubSpotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          CUP =
            T.let(
              :CUP,
              HubSpotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          CVE =
            T.let(
              :CVE,
              HubSpotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          CZK =
            T.let(
              :CZK,
              HubSpotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          DJF =
            T.let(
              :DJF,
              HubSpotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          DKK =
            T.let(
              :DKK,
              HubSpotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          DOP =
            T.let(
              :DOP,
              HubSpotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          DZD =
            T.let(
              :DZD,
              HubSpotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          EGP =
            T.let(
              :EGP,
              HubSpotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          ERN =
            T.let(
              :ERN,
              HubSpotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          ETB =
            T.let(
              :ETB,
              HubSpotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          EUR =
            T.let(
              :EUR,
              HubSpotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          FJD =
            T.let(
              :FJD,
              HubSpotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          FKP =
            T.let(
              :FKP,
              HubSpotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          GBP =
            T.let(
              :GBP,
              HubSpotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          GEL =
            T.let(
              :GEL,
              HubSpotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          GHS =
            T.let(
              :GHS,
              HubSpotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          GIP =
            T.let(
              :GIP,
              HubSpotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          GMD =
            T.let(
              :GMD,
              HubSpotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          GNF =
            T.let(
              :GNF,
              HubSpotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          GTQ =
            T.let(
              :GTQ,
              HubSpotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          GYD =
            T.let(
              :GYD,
              HubSpotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          HKD =
            T.let(
              :HKD,
              HubSpotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          HNL =
            T.let(
              :HNL,
              HubSpotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          HRK =
            T.let(
              :HRK,
              HubSpotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          HTG =
            T.let(
              :HTG,
              HubSpotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          HUF =
            T.let(
              :HUF,
              HubSpotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          IDR =
            T.let(
              :IDR,
              HubSpotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          ILS =
            T.let(
              :ILS,
              HubSpotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          INR =
            T.let(
              :INR,
              HubSpotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          IQD =
            T.let(
              :IQD,
              HubSpotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          IRR =
            T.let(
              :IRR,
              HubSpotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          ISK =
            T.let(
              :ISK,
              HubSpotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          JMD =
            T.let(
              :JMD,
              HubSpotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          JOD =
            T.let(
              :JOD,
              HubSpotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          JPY =
            T.let(
              :JPY,
              HubSpotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          KES =
            T.let(
              :KES,
              HubSpotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          KGS =
            T.let(
              :KGS,
              HubSpotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          KHR =
            T.let(
              :KHR,
              HubSpotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          KMF =
            T.let(
              :KMF,
              HubSpotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          KPW =
            T.let(
              :KPW,
              HubSpotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          KRW =
            T.let(
              :KRW,
              HubSpotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          KWD =
            T.let(
              :KWD,
              HubSpotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          KYD =
            T.let(
              :KYD,
              HubSpotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          KZT =
            T.let(
              :KZT,
              HubSpotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          LAK =
            T.let(
              :LAK,
              HubSpotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          LBP =
            T.let(
              :LBP,
              HubSpotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          LKR =
            T.let(
              :LKR,
              HubSpotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          LRD =
            T.let(
              :LRD,
              HubSpotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          LSL =
            T.let(
              :LSL,
              HubSpotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          LYD =
            T.let(
              :LYD,
              HubSpotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          MAD =
            T.let(
              :MAD,
              HubSpotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          MDL =
            T.let(
              :MDL,
              HubSpotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          MGA =
            T.let(
              :MGA,
              HubSpotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          MKD =
            T.let(
              :MKD,
              HubSpotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          MMK =
            T.let(
              :MMK,
              HubSpotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          MNT =
            T.let(
              :MNT,
              HubSpotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          MOP =
            T.let(
              :MOP,
              HubSpotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          MRU =
            T.let(
              :MRU,
              HubSpotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          MUR =
            T.let(
              :MUR,
              HubSpotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          MVR =
            T.let(
              :MVR,
              HubSpotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          MWK =
            T.let(
              :MWK,
              HubSpotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          MXN =
            T.let(
              :MXN,
              HubSpotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          MXV =
            T.let(
              :MXV,
              HubSpotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          MYR =
            T.let(
              :MYR,
              HubSpotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          MZN =
            T.let(
              :MZN,
              HubSpotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          NAD =
            T.let(
              :NAD,
              HubSpotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          NGN =
            T.let(
              :NGN,
              HubSpotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          NIO =
            T.let(
              :NIO,
              HubSpotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          NOK =
            T.let(
              :NOK,
              HubSpotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          NPR =
            T.let(
              :NPR,
              HubSpotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          NZD =
            T.let(
              :NZD,
              HubSpotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          OMR =
            T.let(
              :OMR,
              HubSpotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          PAB =
            T.let(
              :PAB,
              HubSpotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          PEN =
            T.let(
              :PEN,
              HubSpotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          PGK =
            T.let(
              :PGK,
              HubSpotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          PHP =
            T.let(
              :PHP,
              HubSpotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          PKR =
            T.let(
              :PKR,
              HubSpotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          PLN =
            T.let(
              :PLN,
              HubSpotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          PYG =
            T.let(
              :PYG,
              HubSpotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          QAR =
            T.let(
              :QAR,
              HubSpotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          RON =
            T.let(
              :RON,
              HubSpotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          RSD =
            T.let(
              :RSD,
              HubSpotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          RUB =
            T.let(
              :RUB,
              HubSpotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          RWF =
            T.let(
              :RWF,
              HubSpotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          SAR =
            T.let(
              :SAR,
              HubSpotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          SBD =
            T.let(
              :SBD,
              HubSpotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          SCR =
            T.let(
              :SCR,
              HubSpotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          SDG =
            T.let(
              :SDG,
              HubSpotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          SEK =
            T.let(
              :SEK,
              HubSpotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          SGD =
            T.let(
              :SGD,
              HubSpotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          SHP =
            T.let(
              :SHP,
              HubSpotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          SLL =
            T.let(
              :SLL,
              HubSpotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          SOS =
            T.let(
              :SOS,
              HubSpotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          SRD =
            T.let(
              :SRD,
              HubSpotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          SSP =
            T.let(
              :SSP,
              HubSpotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          STN =
            T.let(
              :STN,
              HubSpotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          SVC =
            T.let(
              :SVC,
              HubSpotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          SYP =
            T.let(
              :SYP,
              HubSpotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          SZL =
            T.let(
              :SZL,
              HubSpotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          THB =
            T.let(
              :THB,
              HubSpotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          TJS =
            T.let(
              :TJS,
              HubSpotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          TMT =
            T.let(
              :TMT,
              HubSpotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          TND =
            T.let(
              :TND,
              HubSpotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          TOP =
            T.let(
              :TOP,
              HubSpotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          TRY =
            T.let(
              :TRY,
              HubSpotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          TTD =
            T.let(
              :TTD,
              HubSpotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          TWD =
            T.let(
              :TWD,
              HubSpotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          TZS =
            T.let(
              :TZS,
              HubSpotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          UAH =
            T.let(
              :UAH,
              HubSpotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          UGX =
            T.let(
              :UGX,
              HubSpotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          USD =
            T.let(
              :USD,
              HubSpotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          USN =
            T.let(
              :USN,
              HubSpotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          UYI =
            T.let(
              :UYI,
              HubSpotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          UYU =
            T.let(
              :UYU,
              HubSpotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          UZS =
            T.let(
              :UZS,
              HubSpotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          VEF =
            T.let(
              :VEF,
              HubSpotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          VND =
            T.let(
              :VND,
              HubSpotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          VUV =
            T.let(
              :VUV,
              HubSpotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          WST =
            T.let(
              :WST,
              HubSpotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          XAF =
            T.let(
              :XAF,
              HubSpotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          XAG =
            T.let(
              :XAG,
              HubSpotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          XAU =
            T.let(
              :XAU,
              HubSpotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          XBA =
            T.let(
              :XBA,
              HubSpotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          XBB =
            T.let(
              :XBB,
              HubSpotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          XBC =
            T.let(
              :XBC,
              HubSpotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          XBD =
            T.let(
              :XBD,
              HubSpotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          XCD =
            T.let(
              :XCD,
              HubSpotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          XDR =
            T.let(
              :XDR,
              HubSpotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          XOF =
            T.let(
              :XOF,
              HubSpotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          XPD =
            T.let(
              :XPD,
              HubSpotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          XPF =
            T.let(
              :XPF,
              HubSpotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          XPT =
            T.let(
              :XPT,
              HubSpotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          XSU =
            T.let(
              :XSU,
              HubSpotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          XUA =
            T.let(
              :XUA,
              HubSpotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          YER =
            T.let(
              :YER,
              HubSpotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          ZAR =
            T.let(
              :ZAR,
              HubSpotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          ZMW =
            T.let(
              :ZMW,
              HubSpotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          ZWL =
            T.let(
              :ZWL,
              HubSpotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
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
