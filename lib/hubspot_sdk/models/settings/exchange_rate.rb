# frozen_string_literal: true

module HubspotSDK
  module Models
    module Settings
      # @see HubspotSDK::Resources::Settings::Currencies#create_exchange_rate
      class ExchangeRate < HubspotSDK::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute conversion_rate
        #
        #   @return [Float]
        required :conversion_rate, Float, api_name: :conversionRate

        # @!attribute created_at
        #
        #   @return [Time]
        required :created_at, Time, api_name: :createdAt

        # @!attribute effective_at
        #
        #   @return [Time]
        required :effective_at, Time, api_name: :effectiveAt

        # @!attribute from_currency_code
        #
        #   @return [Symbol, HubspotSDK::Models::Settings::ExchangeRate::FromCurrencyCode]
        required :from_currency_code,
                 enum: -> { HubspotSDK::Settings::ExchangeRate::FromCurrencyCode },
                 api_name: :fromCurrencyCode

        # @!attribute to_currency_code
        #
        #   @return [Symbol, HubspotSDK::Models::Settings::ExchangeRate::ToCurrencyCode]
        required :to_currency_code,
                 enum: -> { HubspotSDK::Settings::ExchangeRate::ToCurrencyCode },
                 api_name: :toCurrencyCode

        # @!attribute updated_at
        #
        #   @return [Time]
        required :updated_at, Time, api_name: :updatedAt

        # @!attribute visible_in_ui
        #
        #   @return [Boolean]
        required :visible_in_ui, HubspotSDK::Internal::Type::Boolean, api_name: :visibleInUI

        # @!method initialize(id:, conversion_rate:, created_at:, effective_at:, from_currency_code:, to_currency_code:, updated_at:, visible_in_ui:)
        #   @param id [String]
        #   @param conversion_rate [Float]
        #   @param created_at [Time]
        #   @param effective_at [Time]
        #   @param from_currency_code [Symbol, HubspotSDK::Models::Settings::ExchangeRate::FromCurrencyCode]
        #   @param to_currency_code [Symbol, HubspotSDK::Models::Settings::ExchangeRate::ToCurrencyCode]
        #   @param updated_at [Time]
        #   @param visible_in_ui [Boolean]

        # @see HubspotSDK::Models::Settings::ExchangeRate#from_currency_code
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

        # @see HubspotSDK::Models::Settings::ExchangeRate#to_currency_code
        module ToCurrencyCode
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
