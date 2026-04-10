# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Crm
      module Extensions
        module Calling
          class TranscriptCreateUtterance < HubSpotSDK::Internal::Type::BaseModel
            # @!attribute end_time_millis
            #
            #   @return [Integer]
            required :end_time_millis, Integer, api_name: :endTimeMillis

            # @!attribute speaker
            #
            #   @return [HubSpotSDK::Models::Crm::Extensions::Calling::Speaker]
            required :speaker, -> { HubSpotSDK::Crm::Extensions::Calling::Speaker }

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

            # @!method initialize(end_time_millis:, speaker:, start_time_millis:, text:, language_code: nil)
            #   @param end_time_millis [Integer]
            #   @param speaker [HubSpotSDK::Models::Crm::Extensions::Calling::Speaker]
            #   @param start_time_millis [Integer]
            #   @param text [String]
            #   @param language_code [String]
          end
        end
      end
    end
  end
end
