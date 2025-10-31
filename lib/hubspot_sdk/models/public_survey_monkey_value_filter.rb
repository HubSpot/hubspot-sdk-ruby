# frozen_string_literal: true

module HubspotSDK
  module Models
    class PublicSurveyMonkeyValueFilter < HubspotSDK::Internal::Type::BaseModel
      # @!attribute filter_type
      #
      #   @return [Symbol, HubspotSDK::Models::PublicSurveyMonkeyValueFilter::FilterType]
      required :filter_type,
               enum: -> { HubspotSDK::PublicSurveyMonkeyValueFilter::FilterType },
               api_name: :filterType

      # @!attribute operator
      #
      #   @return [String]
      required :operator, String

      # @!attribute survey_id
      #
      #   @return [String]
      required :survey_id, String, api_name: :surveyId

      # @!attribute survey_question
      #
      #   @return [String]
      required :survey_question, String, api_name: :surveyQuestion

      # @!attribute value_comparison
      #
      #   @return [HubspotSDK::Models::PublicBoolPropertyOperation, HubspotSDK::Models::PublicNumberPropertyOperation, HubspotSDK::Models::PublicStringPropertyOperation, HubspotSDK::Models::PublicDateTimePropertyOperation, HubspotSDK::Models::PublicRangedDatePropertyOperation, HubspotSDK::Models::PublicComparativePropertyUpdatedOperation, HubspotSDK::Models::PublicComparativeDatePropertyOperation, HubspotSDK::Models::PublicRollingDateRangePropertyOperation, HubspotSDK::Models::PublicRollingPropertyUpdatedOperation, HubspotSDK::Models::PublicEnumerationPropertyOperation, HubspotSDK::Models::PublicAllPropertyTypesOperation, HubspotSDK::Models::PublicRangedNumberPropertyOperation, HubspotSDK::Models::PublicMultiStringPropertyOperation, HubspotSDK::Models::PublicDatePropertyOperation, HubspotSDK::Models::PublicCalendarDatePropertyOperation, HubspotSDK::Models::PublicTimePointOperation, HubspotSDK::Models::PublicRangedTimeOperation]
      required :value_comparison,
               union: -> { HubspotSDK::PublicSurveyMonkeyValueFilter::ValueComparison },
               api_name: :valueComparison

      # @!attribute survey_answer_col_id
      #
      #   @return [String, nil]
      optional :survey_answer_col_id, String, api_name: :surveyAnswerColId

      # @!attribute survey_answer_row_id
      #
      #   @return [String, nil]
      optional :survey_answer_row_id, String, api_name: :surveyAnswerRowId

      # @!method initialize(filter_type:, operator:, survey_id:, survey_question:, value_comparison:, survey_answer_col_id: nil, survey_answer_row_id: nil)
      #   @param filter_type [Symbol, HubspotSDK::Models::PublicSurveyMonkeyValueFilter::FilterType]
      #   @param operator [String]
      #   @param survey_id [String]
      #   @param survey_question [String]
      #   @param value_comparison [HubspotSDK::Models::PublicBoolPropertyOperation, HubspotSDK::Models::PublicNumberPropertyOperation, HubspotSDK::Models::PublicStringPropertyOperation, HubspotSDK::Models::PublicDateTimePropertyOperation, HubspotSDK::Models::PublicRangedDatePropertyOperation, HubspotSDK::Models::PublicComparativePropertyUpdatedOperation, HubspotSDK::Models::PublicComparativeDatePropertyOperation, HubspotSDK::Models::PublicRollingDateRangePropertyOperation, HubspotSDK::Models::PublicRollingPropertyUpdatedOperation, HubspotSDK::Models::PublicEnumerationPropertyOperation, HubspotSDK::Models::PublicAllPropertyTypesOperation, HubspotSDK::Models::PublicRangedNumberPropertyOperation, HubspotSDK::Models::PublicMultiStringPropertyOperation, HubspotSDK::Models::PublicDatePropertyOperation, HubspotSDK::Models::PublicCalendarDatePropertyOperation, HubspotSDK::Models::PublicTimePointOperation, HubspotSDK::Models::PublicRangedTimeOperation]
      #   @param survey_answer_col_id [String]
      #   @param survey_answer_row_id [String]

      # @see HubspotSDK::Models::PublicSurveyMonkeyValueFilter#filter_type
      module FilterType
        extend HubspotSDK::Internal::Type::Enum

        SURVEY_MONKEY_VALUE = :SURVEY_MONKEY_VALUE

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # @see HubspotSDK::Models::PublicSurveyMonkeyValueFilter#value_comparison
      module ValueComparison
        extend HubspotSDK::Internal::Type::Union

        variant -> { HubspotSDK::PublicBoolPropertyOperation }

        variant -> { HubspotSDK::PublicNumberPropertyOperation }

        variant -> { HubspotSDK::PublicStringPropertyOperation }

        variant -> { HubspotSDK::PublicDateTimePropertyOperation }

        variant -> { HubspotSDK::PublicRangedDatePropertyOperation }

        variant -> { HubspotSDK::PublicComparativePropertyUpdatedOperation }

        variant -> { HubspotSDK::PublicComparativeDatePropertyOperation }

        variant -> { HubspotSDK::PublicRollingDateRangePropertyOperation }

        variant -> { HubspotSDK::PublicRollingPropertyUpdatedOperation }

        variant -> { HubspotSDK::PublicEnumerationPropertyOperation }

        variant -> { HubspotSDK::PublicAllPropertyTypesOperation }

        variant -> { HubspotSDK::PublicRangedNumberPropertyOperation }

        variant -> { HubspotSDK::PublicMultiStringPropertyOperation }

        variant -> { HubspotSDK::PublicDatePropertyOperation }

        variant -> { HubspotSDK::PublicCalendarDatePropertyOperation }

        variant -> { HubspotSDK::PublicTimePointOperation }

        variant -> { HubspotSDK::PublicRangedTimeOperation }

        # @!method self.variants
        #   @return [Array(HubspotSDK::Models::PublicBoolPropertyOperation, HubspotSDK::Models::PublicNumberPropertyOperation, HubspotSDK::Models::PublicStringPropertyOperation, HubspotSDK::Models::PublicDateTimePropertyOperation, HubspotSDK::Models::PublicRangedDatePropertyOperation, HubspotSDK::Models::PublicComparativePropertyUpdatedOperation, HubspotSDK::Models::PublicComparativeDatePropertyOperation, HubspotSDK::Models::PublicRollingDateRangePropertyOperation, HubspotSDK::Models::PublicRollingPropertyUpdatedOperation, HubspotSDK::Models::PublicEnumerationPropertyOperation, HubspotSDK::Models::PublicAllPropertyTypesOperation, HubspotSDK::Models::PublicRangedNumberPropertyOperation, HubspotSDK::Models::PublicMultiStringPropertyOperation, HubspotSDK::Models::PublicDatePropertyOperation, HubspotSDK::Models::PublicCalendarDatePropertyOperation, HubspotSDK::Models::PublicTimePointOperation, HubspotSDK::Models::PublicRangedTimeOperation)]
      end
    end
  end
end
