# frozen_string_literal: true

module HubspotSDK
  module Models
    class PublicSurveyMonkeyFilter < HubspotSDK::Internal::Type::BaseModel
      # @!attribute filter_type
      #
      #   @return [Symbol, HubspotSDK::Models::PublicSurveyMonkeyFilter::FilterType]
      required :filter_type,
               enum: -> { HubspotSDK::PublicSurveyMonkeyFilter::FilterType },
               api_name: :filterType

      # @!attribute operator
      #
      #   @return [String]
      required :operator, String

      # @!attribute survey_id
      #
      #   @return [String]
      required :survey_id, String, api_name: :surveyId

      # @!method initialize(filter_type:, operator:, survey_id:)
      #   @param filter_type [Symbol, HubspotSDK::Models::PublicSurveyMonkeyFilter::FilterType]
      #   @param operator [String]
      #   @param survey_id [String]

      # @see HubspotSDK::Models::PublicSurveyMonkeyFilter#filter_type
      module FilterType
        extend HubspotSDK::Internal::Type::Enum

        SURVEY_MONKEY = :SURVEY_MONKEY

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
