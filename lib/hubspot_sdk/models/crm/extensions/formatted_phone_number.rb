# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      module Extensions
        class FormattedPhoneNumber < HubspotSDK::Internal::Type::BaseModel
          # @!attribute e164_number
          #
          #   @return [String]
          required :e164_number, String, api_name: :e164Number

          # @!attribute phone_number_type
          #
          #   @return [Symbol, HubspotSDK::Models::Crm::Extensions::FormattedPhoneNumber::PhoneNumberType]
          required :phone_number_type,
                   enum: -> { HubspotSDK::Crm::Extensions::FormattedPhoneNumber::PhoneNumberType },
                   api_name: :phoneNumberType

          # @!attribute extension
          #
          #   @return [String, nil]
          optional :extension, String

          # @!method initialize(e164_number:, phone_number_type:, extension: nil)
          #   @param e164_number [String]
          #   @param phone_number_type [Symbol, HubspotSDK::Models::Crm::Extensions::FormattedPhoneNumber::PhoneNumberType]
          #   @param extension [String]

          # @see HubspotSDK::Models::Crm::Extensions::FormattedPhoneNumber#phone_number_type
          module PhoneNumberType
            extend HubspotSDK::Internal::Type::Enum

            FIXED_LINE = :FIXED_LINE
            FIXED_LINE_OR_MOBILE = :FIXED_LINE_OR_MOBILE
            MOBILE = :MOBILE
            PAGER = :PAGER
            PERSONAL_NUMBER = :PERSONAL_NUMBER
            PREMIUM_RATE = :PREMIUM_RATE
            SHARED_COST = :SHARED_COST
            TOLL_FREE = :TOLL_FREE
            UAN = :UAN
            UNKNOWN = :UNKNOWN
            VOICEMAIL = :VOICEMAIL
            VOIP = :VOIP

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end
      end
    end
  end
end
