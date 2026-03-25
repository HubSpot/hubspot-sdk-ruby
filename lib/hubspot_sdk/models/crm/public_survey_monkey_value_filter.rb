# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      class PublicSurveyMonkeyValueFilter < HubspotSDK::Internal::Type::BaseModel
        # @!attribute filter_type
        #   Defines the type of filter (SURVEY_MONKEY_VALUE).
        #
        #   @return [Symbol, HubspotSDK::Models::Crm::PublicSurveyMonkeyValueFilter::FilterType]
        required :filter_type,
                 enum: -> { HubspotSDK::Crm::PublicSurveyMonkeyValueFilter::FilterType },
                 api_name: :filterType

        # @!attribute operator
        #   Defines the operation to be applied within the filter
        #   (HAS_ANSWERED_SURVEY_QUESTION_WITH_VALUE).
        #
        #   @return [String]
        required :operator, String

        # @!attribute survey_id
        #   The ID of the survey used in the filter.
        #
        #   @return [String]
        required :survey_id, String, api_name: :surveyId

        # @!attribute survey_question
        #   The question from the survey used in the filter.
        #
        #   @return [String]
        required :survey_question, String, api_name: :surveyQuestion

        # @!attribute value_comparison
        #   Specifies the operation used to compare the survey answer value.
        #
        #   @return [HubspotSDK::Models::Crm::PublicBoolPropertyOperation, HubspotSDK::Models::Crm::PublicNumberPropertyOperation, HubspotSDK::Models::Crm::PublicStringPropertyOperation, HubspotSDK::Models::Crm::PublicDateTimePropertyOperation, HubspotSDK::Models::Crm::PublicRangedDatePropertyOperation, HubspotSDK::Models::Crm::PublicComparativePropertyUpdatedOperation, HubspotSDK::Models::Crm::PublicComparativeDatePropertyOperation, HubspotSDK::Models::Crm::PublicRollingDateRangePropertyOperation, HubspotSDK::Models::Crm::PublicRollingPropertyUpdatedOperation, HubspotSDK::Models::Crm::PublicEnumerationPropertyOperation, HubspotSDK::Models::Crm::PublicAllPropertyTypesOperation, HubspotSDK::Models::Crm::PublicRangedNumberPropertyOperation, HubspotSDK::Models::Crm::PublicMultiStringPropertyOperation, HubspotSDK::Models::Crm::PublicDatePropertyOperation, HubspotSDK::Models::Crm::PublicCalendarDatePropertyOperation, HubspotSDK::Models::Crm::PublicTimePointOperation, HubspotSDK::Models::Crm::PublicRangedTimeOperation]
        required :value_comparison,
                 union: -> { HubspotSDK::Crm::PublicSurveyMonkeyValueFilter::ValueComparison },
                 api_name: :valueComparison

        # @!attribute survey_answer_col_id
        #   The column ID of the survey answer used in the filter.
        #
        #   @return [String, nil]
        optional :survey_answer_col_id, String, api_name: :surveyAnswerColId

        # @!attribute survey_answer_row_id
        #   The row ID of the survey answer used in the filter.
        #
        #   @return [String, nil]
        optional :survey_answer_row_id, String, api_name: :surveyAnswerRowId

        # @!method initialize(filter_type:, operator:, survey_id:, survey_question:, value_comparison:, survey_answer_col_id: nil, survey_answer_row_id: nil)
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::Crm::PublicSurveyMonkeyValueFilter} for more details.
        #
        #   @param filter_type [Symbol, HubspotSDK::Models::Crm::PublicSurveyMonkeyValueFilter::FilterType] Defines the type of filter (SURVEY_MONKEY_VALUE).
        #
        #   @param operator [String] Defines the operation to be applied within the filter (HAS_ANSWERED_SURVEY_QUEST
        #
        #   @param survey_id [String] The ID of the survey used in the filter.
        #
        #   @param survey_question [String] The question from the survey used in the filter.
        #
        #   @param value_comparison [HubspotSDK::Models::Crm::PublicBoolPropertyOperation, HubspotSDK::Models::Crm::PublicNumberPropertyOperation, HubspotSDK::Models::Crm::PublicStringPropertyOperation, HubspotSDK::Models::Crm::PublicDateTimePropertyOperation, HubspotSDK::Models::Crm::PublicRangedDatePropertyOperation, HubspotSDK::Models::Crm::PublicComparativePropertyUpdatedOperation, HubspotSDK::Models::Crm::PublicComparativeDatePropertyOperation, HubspotSDK::Models::Crm::PublicRollingDateRangePropertyOperation, HubspotSDK::Models::Crm::PublicRollingPropertyUpdatedOperation, HubspotSDK::Models::Crm::PublicEnumerationPropertyOperation, HubspotSDK::Models::Crm::PublicAllPropertyTypesOperation, HubspotSDK::Models::Crm::PublicRangedNumberPropertyOperation, HubspotSDK::Models::Crm::PublicMultiStringPropertyOperation, HubspotSDK::Models::Crm::PublicDatePropertyOperation, HubspotSDK::Models::Crm::PublicCalendarDatePropertyOperation, HubspotSDK::Models::Crm::PublicTimePointOperation, HubspotSDK::Models::Crm::PublicRangedTimeOperation] Specifies the operation used to compare the survey answer value.
        #
        #   @param survey_answer_col_id [String] The column ID of the survey answer used in the filter.
        #
        #   @param survey_answer_row_id [String] The row ID of the survey answer used in the filter.

        # Defines the type of filter (SURVEY_MONKEY_VALUE).
        #
        # @see HubspotSDK::Models::Crm::PublicSurveyMonkeyValueFilter#filter_type
        module FilterType
          extend HubspotSDK::Internal::Type::Enum

          SURVEY_MONKEY_VALUE = :SURVEY_MONKEY_VALUE

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # Specifies the operation used to compare the survey answer value.
        #
        # @see HubspotSDK::Models::Crm::PublicSurveyMonkeyValueFilter#value_comparison
        module ValueComparison
          extend HubspotSDK::Internal::Type::Union

          variant -> { HubspotSDK::Crm::PublicBoolPropertyOperation }

          variant -> { HubspotSDK::Crm::PublicNumberPropertyOperation }

          variant -> { HubspotSDK::Crm::PublicStringPropertyOperation }

          variant -> { HubspotSDK::Crm::PublicDateTimePropertyOperation }

          variant -> { HubspotSDK::Crm::PublicRangedDatePropertyOperation }

          variant -> { HubspotSDK::Crm::PublicComparativePropertyUpdatedOperation }

          variant -> { HubspotSDK::Crm::PublicComparativeDatePropertyOperation }

          variant -> { HubspotSDK::Crm::PublicRollingDateRangePropertyOperation }

          variant -> { HubspotSDK::Crm::PublicRollingPropertyUpdatedOperation }

          variant -> { HubspotSDK::Crm::PublicEnumerationPropertyOperation }

          variant -> { HubspotSDK::Crm::PublicAllPropertyTypesOperation }

          variant -> { HubspotSDK::Crm::PublicRangedNumberPropertyOperation }

          variant -> { HubspotSDK::Crm::PublicMultiStringPropertyOperation }

          variant -> { HubspotSDK::Crm::PublicDatePropertyOperation }

          variant -> { HubspotSDK::Crm::PublicCalendarDatePropertyOperation }

          variant -> { HubspotSDK::Crm::PublicTimePointOperation }

          variant -> { HubspotSDK::Crm::PublicRangedTimeOperation }

          # @!method self.variants
          #   @return [Array(HubspotSDK::Models::Crm::PublicBoolPropertyOperation, HubspotSDK::Models::Crm::PublicNumberPropertyOperation, HubspotSDK::Models::Crm::PublicStringPropertyOperation, HubspotSDK::Models::Crm::PublicDateTimePropertyOperation, HubspotSDK::Models::Crm::PublicRangedDatePropertyOperation, HubspotSDK::Models::Crm::PublicComparativePropertyUpdatedOperation, HubspotSDK::Models::Crm::PublicComparativeDatePropertyOperation, HubspotSDK::Models::Crm::PublicRollingDateRangePropertyOperation, HubspotSDK::Models::Crm::PublicRollingPropertyUpdatedOperation, HubspotSDK::Models::Crm::PublicEnumerationPropertyOperation, HubspotSDK::Models::Crm::PublicAllPropertyTypesOperation, HubspotSDK::Models::Crm::PublicRangedNumberPropertyOperation, HubspotSDK::Models::Crm::PublicMultiStringPropertyOperation, HubspotSDK::Models::Crm::PublicDatePropertyOperation, HubspotSDK::Models::Crm::PublicCalendarDatePropertyOperation, HubspotSDK::Models::Crm::PublicTimePointOperation, HubspotSDK::Models::Crm::PublicRangedTimeOperation)]
        end
      end
    end
  end
end
