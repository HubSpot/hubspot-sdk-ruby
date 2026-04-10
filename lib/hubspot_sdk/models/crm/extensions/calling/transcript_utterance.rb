# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Crm
      module Extensions
        module Calling
          class TranscriptUtterance < HubSpotSDK::Internal::Type::BaseModel
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
            #   @return [HubSpotSDK::Models::Crm::Extensions::Calling::Speaker, nil]
            optional :speaker, -> { HubSpotSDK::Crm::Extensions::Calling::Speaker }

            # @!method initialize(id:, end_time_millis:, start_time_millis:, text:, language_code: nil, speaker: nil)
            #   @param id [String]
            #   @param end_time_millis [Integer]
            #   @param start_time_millis [Integer]
            #   @param text [String]
            #   @param language_code [String]
            #   @param speaker [HubSpotSDK::Models::Crm::Extensions::Calling::Speaker]
          end
        end
      end
    end
  end
end
