# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      module Extensions
        class FormattedPhoneNumber < HubspotSDK::Internal::Type::BaseModel
          # @!attribute e164_number
          #   The phone number formatted in E.164 standard.
          #
          #   @return [String]
          required :e164_number, String, api_name: :e164Number

          # @!attribute phone_number_type
          #   The type of phone number, with accepted values including FIXED_LINE, MOBILE,
          #   VOIP, and others.
          #
          #   @return [Symbol, HubspotSDK::Models::Crm::Extensions::FormattedPhoneNumber::PhoneNumberType]
          required :phone_number_type,
                   enum: -> { HubspotSDK::Crm::Extensions::FormattedPhoneNumber::PhoneNumberType },
                   api_name: :phoneNumberType

          # @!attribute extension
          #   The extension number associated with the phone number.
          #
          #   @return [String, nil]
          optional :extension, String

          # @!method initialize(e164_number:, phone_number_type:, extension: nil)
          #   Some parameter documentations has been truncated, see
          #   {HubspotSDK::Models::Crm::Extensions::FormattedPhoneNumber} for more details.
          #
          #   @param e164_number [String] The phone number formatted in E.164 standard.
          #
          #   @param phone_number_type [Symbol, HubspotSDK::Models::Crm::Extensions::FormattedPhoneNumber::PhoneNumberType] The type of phone number, with accepted values including FIXED_LINE, MOBILE, VOI
          #
          #   @param extension [String] The extension number associated with the phone number.

          # The type of phone number, with accepted values including FIXED_LINE, MOBILE,
          # VOIP, and others.
          #
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
