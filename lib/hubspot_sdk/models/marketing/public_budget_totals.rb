# frozen_string_literal: true

module HubspotSDK
  module Models
    module Marketing
      class PublicBudgetTotals < HubspotSDK::Internal::Type::BaseModel
        # @!attribute budget_items
        #   An array of budget items associated with the campaign. Each item is represented
        #   by a PublicBudgetItem object.
        #
        #   @return [Array<HubspotSDK::Models::Marketing::PublicBudgetItem>]
        required :budget_items,
                 -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Marketing::PublicBudgetItem] },
                 api_name: :budgetItems

        # @!attribute currency_code
        #   The currency code used for budget and spending amounts. Valid values include
        #   standard currency codes such as 'USD', 'EUR', 'JPY', etc.
        #
        #   @return [Symbol, HubspotSDK::Models::Marketing::PublicBudgetTotals::CurrencyCode]
        required :currency_code,
                 enum: -> { HubspotSDK::Marketing::PublicBudgetTotals::CurrencyCode },
                 api_name: :currencyCode

        # @!attribute spend_items
        #   An array of spend items associated with the campaign. Each item is represented
        #   by a PublicSpendItem object.
        #
        #   @return [Array<HubspotSDK::Models::Marketing::PublicSpendItem>]
        required :spend_items,
                 -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Marketing::PublicSpendItem] },
                 api_name: :spendItems

        # @!attribute budget_total
        #   The total budget amount for the campaign, represented as a number.
        #
        #   @return [Float, nil]
        optional :budget_total, Float, api_name: :budgetTotal

        # @!attribute remaining_budget
        #   The remaining budget for the campaign after spending, represented as a number.
        #
        #   @return [Float, nil]
        optional :remaining_budget, Float, api_name: :remainingBudget

        # @!attribute spend_total
        #   The total amount spent for the campaign, represented as a number.
        #
        #   @return [Float, nil]
        optional :spend_total, Float, api_name: :spendTotal

        # @!method initialize(budget_items:, currency_code:, spend_items:, budget_total: nil, remaining_budget: nil, spend_total: nil)
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::Marketing::PublicBudgetTotals} for more details.
        #
        #   @param budget_items [Array<HubspotSDK::Models::Marketing::PublicBudgetItem>] An array of budget items associated with the campaign. Each item is represented
        #
        #   @param currency_code [Symbol, HubspotSDK::Models::Marketing::PublicBudgetTotals::CurrencyCode] The currency code used for budget and spending amounts. Valid values include sta
        #
        #   @param spend_items [Array<HubspotSDK::Models::Marketing::PublicSpendItem>] An array of spend items associated with the campaign. Each item is represented b
        #
        #   @param budget_total [Float] The total budget amount for the campaign, represented as a number.
        #
        #   @param remaining_budget [Float] The remaining budget for the campaign after spending, represented as a number.
        #
        #   @param spend_total [Float] The total amount spent for the campaign, represented as a number.

        # The currency code used for budget and spending amounts. Valid values include
        # standard currency codes such as 'USD', 'EUR', 'JPY', etc.
        #
        # @see HubspotSDK::Models::Marketing::PublicBudgetTotals#currency_code
        module CurrencyCode
          extend HubspotSDK::Internal::Type::Enum

          AED = :AED
          AFN = :AFN
          ALL = :ALL
          AMD = :AMD
          ANG = :ANG
          AOA = :AOA
          ARS = :ARS
          AUD = :AUD
          AWG = :AWG
          AZN = :AZN
          BAM = :BAM
          BBD = :BBD
          BDT = :BDT
          BGN = :BGN
          BHD = :BHD
          BIF = :BIF
          BMD = :BMD
          BND = :BND
          BOB = :BOB
          BOV = :BOV
          BRL = :BRL
          BSD = :BSD
          BTN = :BTN
          BWP = :BWP
          BYN = :BYN
          BZD = :BZD
          CAD = :CAD
          CDF = :CDF
          CHE = :CHE
          CHF = :CHF
          CHW = :CHW
          CLF = :CLF
          CLP = :CLP
          CNY = :CNY
          COP = :COP
          COU = :COU
          CRC = :CRC
          CUC = :CUC
          CUP = :CUP
          CVE = :CVE
          CZK = :CZK
          DJF = :DJF
          DKK = :DKK
          DOP = :DOP
          DZD = :DZD
          EGP = :EGP
          ERN = :ERN
          ETB = :ETB
          EUR = :EUR
          FJD = :FJD
          FKP = :FKP
          GBP = :GBP
          GEL = :GEL
          GHS = :GHS
          GIP = :GIP
          GMD = :GMD
          GNF = :GNF
          GTQ = :GTQ
          GYD = :GYD
          HKD = :HKD
          HNL = :HNL
          HRK = :HRK
          HTG = :HTG
          HUF = :HUF
          IDR = :IDR
          ILS = :ILS
          INR = :INR
          IQD = :IQD
          IRR = :IRR
          ISK = :ISK
          JMD = :JMD
          JOD = :JOD
          JPY = :JPY
          KES = :KES
          KGS = :KGS
          KHR = :KHR
          KMF = :KMF
          KPW = :KPW
          KRW = :KRW
          KWD = :KWD
          KYD = :KYD
          KZT = :KZT
          LAK = :LAK
          LBP = :LBP
          LKR = :LKR
          LRD = :LRD
          LSL = :LSL
          LYD = :LYD
          MAD = :MAD
          MDL = :MDL
          MGA = :MGA
          MKD = :MKD
          MMK = :MMK
          MNT = :MNT
          MOP = :MOP
          MRU = :MRU
          MUR = :MUR
          MVR = :MVR
          MWK = :MWK
          MXN = :MXN
          MXV = :MXV
          MYR = :MYR
          MZN = :MZN
          NAD = :NAD
          NGN = :NGN
          NIO = :NIO
          NOK = :NOK
          NPR = :NPR
          NZD = :NZD
          OMR = :OMR
          PAB = :PAB
          PEN = :PEN
          PGK = :PGK
          PHP = :PHP
          PKR = :PKR
          PLN = :PLN
          PYG = :PYG
          QAR = :QAR
          RON = :RON
          RSD = :RSD
          RUB = :RUB
          RWF = :RWF
          SAR = :SAR
          SBD = :SBD
          SCR = :SCR
          SDG = :SDG
          SEK = :SEK
          SGD = :SGD
          SHP = :SHP
          SLL = :SLL
          SOS = :SOS
          SRD = :SRD
          SSP = :SSP
          STN = :STN
          SVC = :SVC
          SYP = :SYP
          SZL = :SZL
          THB = :THB
          TJS = :TJS
          TMT = :TMT
          TND = :TND
          TOP = :TOP
          TRY = :TRY
          TTD = :TTD
          TWD = :TWD
          TZS = :TZS
          UAH = :UAH
          UGX = :UGX
          USD = :USD
          USN = :USN
          UYI = :UYI
          UYU = :UYU
          UZS = :UZS
          VEF = :VEF
          VND = :VND
          VUV = :VUV
          WST = :WST
          XAF = :XAF
          XAG = :XAG
          XAU = :XAU
          XBA = :XBA
          XBB = :XBB
          XBC = :XBC
          XBD = :XBD
          XCD = :XCD
          XDR = :XDR
          XOF = :XOF
          XPD = :XPD
          XPF = :XPF
          XPT = :XPT
          XSU = :XSU
          XUA = :XUA
          YER = :YER
          ZAR = :ZAR
          ZMW = :ZMW
          ZWL = :ZWL

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
