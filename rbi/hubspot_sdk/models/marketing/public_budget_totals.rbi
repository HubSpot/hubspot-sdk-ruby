# typed: strong

module HubspotSDK
  module Models
    module Marketing
      class PublicBudgetTotals < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Marketing::PublicBudgetTotals,
              HubspotSDK::Internal::AnyHash
            )
          end

        # An array of budget items associated with the campaign. Each item is represented
        # by a PublicBudgetItem object.
        sig { returns(T::Array[HubspotSDK::Marketing::PublicBudgetItem]) }
        attr_accessor :budget_items

        # The currency code used for budget and spending amounts. Valid values include
        # standard currency codes such as 'USD', 'EUR', 'JPY', etc.
        sig do
          returns(
            HubspotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
          )
        end
        attr_accessor :currency_code

        # An array of spend items associated with the campaign. Each item is represented
        # by a PublicSpendItem object.
        sig { returns(T::Array[HubspotSDK::Marketing::PublicSpendItem]) }
        attr_accessor :spend_items

        # The total budget amount for the campaign, represented as a number.
        sig { returns(T.nilable(Float)) }
        attr_reader :budget_total

        sig { params(budget_total: Float).void }
        attr_writer :budget_total

        # The remaining budget for the campaign after spending, represented as a number.
        sig { returns(T.nilable(Float)) }
        attr_reader :remaining_budget

        sig { params(remaining_budget: Float).void }
        attr_writer :remaining_budget

        # The total amount spent for the campaign, represented as a number.
        sig { returns(T.nilable(Float)) }
        attr_reader :spend_total

        sig { params(spend_total: Float).void }
        attr_writer :spend_total

        sig do
          params(
            budget_items:
              T::Array[HubspotSDK::Marketing::PublicBudgetItem::OrHash],
            currency_code:
              HubspotSDK::Marketing::PublicBudgetTotals::CurrencyCode::OrSymbol,
            spend_items:
              T::Array[HubspotSDK::Marketing::PublicSpendItem::OrHash],
            budget_total: Float,
            remaining_budget: Float,
            spend_total: Float
          ).returns(T.attached_class)
        end
        def self.new(
          # An array of budget items associated with the campaign. Each item is represented
          # by a PublicBudgetItem object.
          budget_items:,
          # The currency code used for budget and spending amounts. Valid values include
          # standard currency codes such as 'USD', 'EUR', 'JPY', etc.
          currency_code:,
          # An array of spend items associated with the campaign. Each item is represented
          # by a PublicSpendItem object.
          spend_items:,
          # The total budget amount for the campaign, represented as a number.
          budget_total: nil,
          # The remaining budget for the campaign after spending, represented as a number.
          remaining_budget: nil,
          # The total amount spent for the campaign, represented as a number.
          spend_total: nil
        )
        end

        sig do
          override.returns(
            {
              budget_items: T::Array[HubspotSDK::Marketing::PublicBudgetItem],
              currency_code:
                HubspotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol,
              spend_items: T::Array[HubspotSDK::Marketing::PublicSpendItem],
              budget_total: Float,
              remaining_budget: Float,
              spend_total: Float
            }
          )
        end
        def to_hash
        end

        # The currency code used for budget and spending amounts. Valid values include
        # standard currency codes such as 'USD', 'EUR', 'JPY', etc.
        module CurrencyCode
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubspotSDK::Marketing::PublicBudgetTotals::CurrencyCode
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          AED =
            T.let(
              :AED,
              HubspotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          AFN =
            T.let(
              :AFN,
              HubspotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          ALL =
            T.let(
              :ALL,
              HubspotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          AMD =
            T.let(
              :AMD,
              HubspotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          ANG =
            T.let(
              :ANG,
              HubspotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          AOA =
            T.let(
              :AOA,
              HubspotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          ARS =
            T.let(
              :ARS,
              HubspotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          AUD =
            T.let(
              :AUD,
              HubspotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          AWG =
            T.let(
              :AWG,
              HubspotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          AZN =
            T.let(
              :AZN,
              HubspotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          BAM =
            T.let(
              :BAM,
              HubspotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          BBD =
            T.let(
              :BBD,
              HubspotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          BDT =
            T.let(
              :BDT,
              HubspotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          BGN =
            T.let(
              :BGN,
              HubspotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          BHD =
            T.let(
              :BHD,
              HubspotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          BIF =
            T.let(
              :BIF,
              HubspotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          BMD =
            T.let(
              :BMD,
              HubspotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          BND =
            T.let(
              :BND,
              HubspotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          BOB =
            T.let(
              :BOB,
              HubspotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          BOV =
            T.let(
              :BOV,
              HubspotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          BRL =
            T.let(
              :BRL,
              HubspotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          BSD =
            T.let(
              :BSD,
              HubspotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          BTN =
            T.let(
              :BTN,
              HubspotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          BWP =
            T.let(
              :BWP,
              HubspotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          BYN =
            T.let(
              :BYN,
              HubspotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          BZD =
            T.let(
              :BZD,
              HubspotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          CAD =
            T.let(
              :CAD,
              HubspotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          CDF =
            T.let(
              :CDF,
              HubspotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          CHE =
            T.let(
              :CHE,
              HubspotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          CHF =
            T.let(
              :CHF,
              HubspotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          CHW =
            T.let(
              :CHW,
              HubspotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          CLF =
            T.let(
              :CLF,
              HubspotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          CLP =
            T.let(
              :CLP,
              HubspotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          CNY =
            T.let(
              :CNY,
              HubspotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          COP =
            T.let(
              :COP,
              HubspotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          COU =
            T.let(
              :COU,
              HubspotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          CRC =
            T.let(
              :CRC,
              HubspotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          CUC =
            T.let(
              :CUC,
              HubspotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          CUP =
            T.let(
              :CUP,
              HubspotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          CVE =
            T.let(
              :CVE,
              HubspotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          CZK =
            T.let(
              :CZK,
              HubspotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          DJF =
            T.let(
              :DJF,
              HubspotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          DKK =
            T.let(
              :DKK,
              HubspotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          DOP =
            T.let(
              :DOP,
              HubspotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          DZD =
            T.let(
              :DZD,
              HubspotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          EGP =
            T.let(
              :EGP,
              HubspotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          ERN =
            T.let(
              :ERN,
              HubspotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          ETB =
            T.let(
              :ETB,
              HubspotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          EUR =
            T.let(
              :EUR,
              HubspotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          FJD =
            T.let(
              :FJD,
              HubspotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          FKP =
            T.let(
              :FKP,
              HubspotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          GBP =
            T.let(
              :GBP,
              HubspotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          GEL =
            T.let(
              :GEL,
              HubspotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          GHS =
            T.let(
              :GHS,
              HubspotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          GIP =
            T.let(
              :GIP,
              HubspotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          GMD =
            T.let(
              :GMD,
              HubspotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          GNF =
            T.let(
              :GNF,
              HubspotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          GTQ =
            T.let(
              :GTQ,
              HubspotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          GYD =
            T.let(
              :GYD,
              HubspotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          HKD =
            T.let(
              :HKD,
              HubspotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          HNL =
            T.let(
              :HNL,
              HubspotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          HRK =
            T.let(
              :HRK,
              HubspotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          HTG =
            T.let(
              :HTG,
              HubspotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          HUF =
            T.let(
              :HUF,
              HubspotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          IDR =
            T.let(
              :IDR,
              HubspotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          ILS =
            T.let(
              :ILS,
              HubspotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          INR =
            T.let(
              :INR,
              HubspotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          IQD =
            T.let(
              :IQD,
              HubspotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          IRR =
            T.let(
              :IRR,
              HubspotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          ISK =
            T.let(
              :ISK,
              HubspotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          JMD =
            T.let(
              :JMD,
              HubspotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          JOD =
            T.let(
              :JOD,
              HubspotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          JPY =
            T.let(
              :JPY,
              HubspotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          KES =
            T.let(
              :KES,
              HubspotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          KGS =
            T.let(
              :KGS,
              HubspotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          KHR =
            T.let(
              :KHR,
              HubspotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          KMF =
            T.let(
              :KMF,
              HubspotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          KPW =
            T.let(
              :KPW,
              HubspotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          KRW =
            T.let(
              :KRW,
              HubspotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          KWD =
            T.let(
              :KWD,
              HubspotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          KYD =
            T.let(
              :KYD,
              HubspotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          KZT =
            T.let(
              :KZT,
              HubspotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          LAK =
            T.let(
              :LAK,
              HubspotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          LBP =
            T.let(
              :LBP,
              HubspotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          LKR =
            T.let(
              :LKR,
              HubspotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          LRD =
            T.let(
              :LRD,
              HubspotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          LSL =
            T.let(
              :LSL,
              HubspotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          LYD =
            T.let(
              :LYD,
              HubspotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          MAD =
            T.let(
              :MAD,
              HubspotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          MDL =
            T.let(
              :MDL,
              HubspotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          MGA =
            T.let(
              :MGA,
              HubspotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          MKD =
            T.let(
              :MKD,
              HubspotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          MMK =
            T.let(
              :MMK,
              HubspotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          MNT =
            T.let(
              :MNT,
              HubspotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          MOP =
            T.let(
              :MOP,
              HubspotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          MRU =
            T.let(
              :MRU,
              HubspotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          MUR =
            T.let(
              :MUR,
              HubspotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          MVR =
            T.let(
              :MVR,
              HubspotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          MWK =
            T.let(
              :MWK,
              HubspotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          MXN =
            T.let(
              :MXN,
              HubspotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          MXV =
            T.let(
              :MXV,
              HubspotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          MYR =
            T.let(
              :MYR,
              HubspotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          MZN =
            T.let(
              :MZN,
              HubspotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          NAD =
            T.let(
              :NAD,
              HubspotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          NGN =
            T.let(
              :NGN,
              HubspotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          NIO =
            T.let(
              :NIO,
              HubspotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          NOK =
            T.let(
              :NOK,
              HubspotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          NPR =
            T.let(
              :NPR,
              HubspotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          NZD =
            T.let(
              :NZD,
              HubspotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          OMR =
            T.let(
              :OMR,
              HubspotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          PAB =
            T.let(
              :PAB,
              HubspotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          PEN =
            T.let(
              :PEN,
              HubspotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          PGK =
            T.let(
              :PGK,
              HubspotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          PHP =
            T.let(
              :PHP,
              HubspotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          PKR =
            T.let(
              :PKR,
              HubspotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          PLN =
            T.let(
              :PLN,
              HubspotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          PYG =
            T.let(
              :PYG,
              HubspotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          QAR =
            T.let(
              :QAR,
              HubspotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          RON =
            T.let(
              :RON,
              HubspotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          RSD =
            T.let(
              :RSD,
              HubspotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          RUB =
            T.let(
              :RUB,
              HubspotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          RWF =
            T.let(
              :RWF,
              HubspotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          SAR =
            T.let(
              :SAR,
              HubspotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          SBD =
            T.let(
              :SBD,
              HubspotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          SCR =
            T.let(
              :SCR,
              HubspotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          SDG =
            T.let(
              :SDG,
              HubspotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          SEK =
            T.let(
              :SEK,
              HubspotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          SGD =
            T.let(
              :SGD,
              HubspotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          SHP =
            T.let(
              :SHP,
              HubspotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          SLL =
            T.let(
              :SLL,
              HubspotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          SOS =
            T.let(
              :SOS,
              HubspotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          SRD =
            T.let(
              :SRD,
              HubspotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          SSP =
            T.let(
              :SSP,
              HubspotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          STN =
            T.let(
              :STN,
              HubspotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          SVC =
            T.let(
              :SVC,
              HubspotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          SYP =
            T.let(
              :SYP,
              HubspotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          SZL =
            T.let(
              :SZL,
              HubspotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          THB =
            T.let(
              :THB,
              HubspotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          TJS =
            T.let(
              :TJS,
              HubspotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          TMT =
            T.let(
              :TMT,
              HubspotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          TND =
            T.let(
              :TND,
              HubspotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          TOP =
            T.let(
              :TOP,
              HubspotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          TRY =
            T.let(
              :TRY,
              HubspotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          TTD =
            T.let(
              :TTD,
              HubspotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          TWD =
            T.let(
              :TWD,
              HubspotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          TZS =
            T.let(
              :TZS,
              HubspotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          UAH =
            T.let(
              :UAH,
              HubspotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          UGX =
            T.let(
              :UGX,
              HubspotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          USD =
            T.let(
              :USD,
              HubspotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          USN =
            T.let(
              :USN,
              HubspotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          UYI =
            T.let(
              :UYI,
              HubspotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          UYU =
            T.let(
              :UYU,
              HubspotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          UZS =
            T.let(
              :UZS,
              HubspotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          VEF =
            T.let(
              :VEF,
              HubspotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          VND =
            T.let(
              :VND,
              HubspotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          VUV =
            T.let(
              :VUV,
              HubspotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          WST =
            T.let(
              :WST,
              HubspotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          XAF =
            T.let(
              :XAF,
              HubspotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          XAG =
            T.let(
              :XAG,
              HubspotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          XAU =
            T.let(
              :XAU,
              HubspotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          XBA =
            T.let(
              :XBA,
              HubspotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          XBB =
            T.let(
              :XBB,
              HubspotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          XBC =
            T.let(
              :XBC,
              HubspotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          XBD =
            T.let(
              :XBD,
              HubspotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          XCD =
            T.let(
              :XCD,
              HubspotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          XDR =
            T.let(
              :XDR,
              HubspotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          XOF =
            T.let(
              :XOF,
              HubspotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          XPD =
            T.let(
              :XPD,
              HubspotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          XPF =
            T.let(
              :XPF,
              HubspotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          XPT =
            T.let(
              :XPT,
              HubspotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          XSU =
            T.let(
              :XSU,
              HubspotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          XUA =
            T.let(
              :XUA,
              HubspotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          YER =
            T.let(
              :YER,
              HubspotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          ZAR =
            T.let(
              :ZAR,
              HubspotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          ZMW =
            T.let(
              :ZMW,
              HubspotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )
          ZWL =
            T.let(
              :ZWL,
              HubspotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Marketing::PublicBudgetTotals::CurrencyCode::TaggedSymbol
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
