# frozen_string_literal: true

module HubspotSDK
  module Models
    module Settings
      class ExchangeRateCreateRequest < HubspotSDK::Internal::Type::BaseModel
        # @!attribute conversion_rate
        #
        #   @return [Float]
        required :conversion_rate, Float, api_name: :conversionRate

        # @!attribute from_currency_code
        #
        #   @return [Symbol, HubspotSDK::Models::Settings::ExchangeRateCreateRequest::FromCurrencyCode]
        required :from_currency_code,
                 enum: -> { HubspotSDK::Settings::ExchangeRateCreateRequest::FromCurrencyCode },
                 api_name: :fromCurrencyCode

        # @!attribute effective_at
        #
        #   @return [Time, nil]
        optional :effective_at, Time, api_name: :effectiveAt

        # @!method initialize(conversion_rate:, from_currency_code:, effective_at: nil)
        #   @param conversion_rate [Float]
        #   @param from_currency_code [Symbol, HubspotSDK::Models::Settings::ExchangeRateCreateRequest::FromCurrencyCode]
        #   @param effective_at [Time]

        # @see HubspotSDK::Models::Settings::ExchangeRateCreateRequest#from_currency_code
        module FromCurrencyCode
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
