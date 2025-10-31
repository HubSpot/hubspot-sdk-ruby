# frozen_string_literal: true

module HubspotSDK
  module Models
    module CRM
      module Extensions
        module Calling
          class TranscriptUtterance < HubspotSDK::Internal::Type::BaseModel
            # @!attribute id
            #
            #   @return [String]
            required :id, String

            # @!attribute end_time_millis
            #
            #   @return [Integer]
            required :end_time_millis, Integer, api_name: :endTimeMillis

            # @!attribute start_time_millis
            #
            #   @return [Integer]
            required :start_time_millis, Integer, api_name: :startTimeMillis

            # @!attribute text
            #
            #   @return [String]
            required :text, String

            # @!attribute language_code
            #
            #   @return [String, nil]
            optional :language_code, String, api_name: :languageCode

            # @!attribute speaker
            #
            #   @return [HubspotSDK::Models::CRM::Extensions::Calling::Speaker, nil]
            optional :speaker, -> { HubspotSDK::CRM::Extensions::Calling::Speaker }

            # @!method initialize(id:, end_time_millis:, start_time_millis:, text:, language_code: nil, speaker: nil)
            #   @param id [String]
            #   @param end_time_millis [Integer]
            #   @param start_time_millis [Integer]
            #   @param text [String]
            #   @param language_code [String]
            #   @param speaker [HubspotSDK::Models::CRM::Extensions::Calling::Speaker]
          end
        end
      end
    end
  end
end
