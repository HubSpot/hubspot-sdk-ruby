# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Marketing
      class RevenueAttributionAggregate < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute contacts_number
        #   The number of contacts attributed to the campaign.
        #
        #   @return [Integer, nil]
        optional :contacts_number, Integer, api_name: :contactsNumber

        # @!attribute currency_code
        #   The currency code used for the revenue attribution, with accepted values
        #   including AED, AFN, ALL, and others.
        #
        #   @return [Symbol, HubSpotSDK::Models::Marketing::RevenueAttributionAggregate::CurrencyCode, nil]
        optional :currency_code,
                 enum: -> { HubSpotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode },
                 api_name: :currencyCode

        # @!attribute deal_amount
        #   The total amount of deals attributed to the campaign.
        #
        #   @return [Float, nil]
        optional :deal_amount, Float, api_name: :dealAmount

        # @!attribute deals_number
        #   The number of deals attributed to the campaign.
        #
        #   @return [Integer, nil]
        optional :deals_number, Integer, api_name: :dealsNumber

        # @!attribute revenue_amount
        #   The total revenue amount attributed to the campaign.
        #
        #   @return [Float, nil]
        optional :revenue_amount, Float, api_name: :revenueAmount

        # @!method initialize(contacts_number: nil, currency_code: nil, deal_amount: nil, deals_number: nil, revenue_amount: nil)
        #   Some parameter documentations has been truncated, see
        #   {HubSpotSDK::Models::Marketing::RevenueAttributionAggregate} for more details.
        #
        #   @param contacts_number [Integer] The number of contacts attributed to the campaign.
        #
        #   @param currency_code [Symbol, HubSpotSDK::Models::Marketing::RevenueAttributionAggregate::CurrencyCode] The currency code used for the revenue attribution, with accepted values includi
        #
        #   @param deal_amount [Float] The total amount of deals attributed to the campaign.
        #
        #   @param deals_number [Integer] The number of deals attributed to the campaign.
        #
        #   @param revenue_amount [Float] The total revenue amount attributed to the campaign.

        # The currency code used for the revenue attribution, with accepted values
        # including AED, AFN, ALL, and others.
        #
        # @see HubSpotSDK::Models::Marketing::RevenueAttributionAggregate#currency_code
        module CurrencyCode
          extend HubSpotSDK::Internal::Type::Enum

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
