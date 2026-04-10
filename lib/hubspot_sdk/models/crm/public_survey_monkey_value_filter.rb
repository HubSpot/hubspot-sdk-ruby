# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Crm
      class PublicSurveyMonkeyValueFilter < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute filter_type
        #   Defines the type of filter (SURVEY_MONKEY_VALUE).
        #
        #   @return [Symbol, HubSpotSDK::Models::Crm::PublicSurveyMonkeyValueFilter::FilterType]
        required :filter_type,
                 enum: -> { HubSpotSDK::Crm::PublicSurveyMonkeyValueFilter::FilterType },
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
        #   @return [HubSpotSDK::Models::Crm::PublicBoolPropertyOperation, HubSpotSDK::Models::Crm::PublicNumberPropertyOperation, HubSpotSDK::Models::Crm::PublicStringPropertyOperation, HubSpotSDK::Models::Crm::PublicDateTimePropertyOperation, HubSpotSDK::Models::Crm::PublicRangedDatePropertyOperation, HubSpotSDK::Models::Crm::PublicComparativePropertyUpdatedOperation, HubSpotSDK::Models::Crm::PublicComparativeDatePropertyOperation, HubSpotSDK::Models::Crm::PublicRollingDateRangePropertyOperation, HubSpotSDK::Models::Crm::PublicRollingPropertyUpdatedOperation, HubSpotSDK::Models::Crm::PublicEnumerationPropertyOperation, HubSpotSDK::Models::Crm::PublicAllPropertyTypesOperation, HubSpotSDK::Models::Crm::PublicRangedNumberPropertyOperation, HubSpotSDK::Models::Crm::PublicMultiStringPropertyOperation, HubSpotSDK::Models::Crm::PublicDatePropertyOperation, HubSpotSDK::Models::Crm::PublicCalendarDatePropertyOperation, HubSpotSDK::Models::Crm::PublicTimePointOperation, HubSpotSDK::Models::Crm::PublicRangedTimeOperation]
        required :value_comparison,
                 union: -> { HubSpotSDK::Crm::PublicSurveyMonkeyValueFilter::ValueComparison },
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
        #   {HubSpotSDK::Models::Crm::PublicSurveyMonkeyValueFilter} for more details.
        #
        #   @param filter_type [Symbol, HubSpotSDK::Models::Crm::PublicSurveyMonkeyValueFilter::FilterType] Defines the type of filter (SURVEY_MONKEY_VALUE).
        #
        #   @param operator [String] Defines the operation to be applied within the filter (HAS_ANSWERED_SURVEY_QUEST
        #
        #   @param survey_id [String] The ID of the survey used in the filter.
        #
        #   @param survey_question [String] The question from the survey used in the filter.
        #
        #   @param value_comparison [HubSpotSDK::Models::Crm::PublicBoolPropertyOperation, HubSpotSDK::Models::Crm::PublicNumberPropertyOperation, HubSpotSDK::Models::Crm::PublicStringPropertyOperation, HubSpotSDK::Models::Crm::PublicDateTimePropertyOperation, HubSpotSDK::Models::Crm::PublicRangedDatePropertyOperation, HubSpotSDK::Models::Crm::PublicComparativePropertyUpdatedOperation, HubSpotSDK::Models::Crm::PublicComparativeDatePropertyOperation, HubSpotSDK::Models::Crm::PublicRollingDateRangePropertyOperation, HubSpotSDK::Models::Crm::PublicRollingPropertyUpdatedOperation, HubSpotSDK::Models::Crm::PublicEnumerationPropertyOperation, HubSpotSDK::Models::Crm::PublicAllPropertyTypesOperation, HubSpotSDK::Models::Crm::PublicRangedNumberPropertyOperation, HubSpotSDK::Models::Crm::PublicMultiStringPropertyOperation, HubSpotSDK::Models::Crm::PublicDatePropertyOperation, HubSpotSDK::Models::Crm::PublicCalendarDatePropertyOperation, HubSpotSDK::Models::Crm::PublicTimePointOperation, HubSpotSDK::Models::Crm::PublicRangedTimeOperation] Specifies the operation used to compare the survey answer value.
        #
        #   @param survey_answer_col_id [String] The column ID of the survey answer used in the filter.
        #
        #   @param survey_answer_row_id [String] The row ID of the survey answer used in the filter.

        # Defines the type of filter (SURVEY_MONKEY_VALUE).
        #
        # @see HubSpotSDK::Models::Crm::PublicSurveyMonkeyValueFilter#filter_type
        module FilterType
          extend HubSpotSDK::Internal::Type::Enum

          SURVEY_MONKEY_VALUE = :SURVEY_MONKEY_VALUE

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # Specifies the operation used to compare the survey answer value.
        #
        # @see HubSpotSDK::Models::Crm::PublicSurveyMonkeyValueFilter#value_comparison
        module ValueComparison
          extend HubSpotSDK::Internal::Type::Union

          variant -> { HubSpotSDK::Crm::PublicBoolPropertyOperation }

          variant -> { HubSpotSDK::Crm::PublicNumberPropertyOperation }

          variant -> { HubSpotSDK::Crm::PublicStringPropertyOperation }

          variant -> { HubSpotSDK::Crm::PublicDateTimePropertyOperation }

          variant -> { HubSpotSDK::Crm::PublicRangedDatePropertyOperation }

          variant -> { HubSpotSDK::Crm::PublicComparativePropertyUpdatedOperation }

          variant -> { HubSpotSDK::Crm::PublicComparativeDatePropertyOperation }

          variant -> { HubSpotSDK::Crm::PublicRollingDateRangePropertyOperation }

          variant -> { HubSpotSDK::Crm::PublicRollingPropertyUpdatedOperation }

          variant -> { HubSpotSDK::Crm::PublicEnumerationPropertyOperation }

          variant -> { HubSpotSDK::Crm::PublicAllPropertyTypesOperation }

          variant -> { HubSpotSDK::Crm::PublicRangedNumberPropertyOperation }

          variant -> { HubSpotSDK::Crm::PublicMultiStringPropertyOperation }

          variant -> { HubSpotSDK::Crm::PublicDatePropertyOperation }

          variant -> { HubSpotSDK::Crm::PublicCalendarDatePropertyOperation }

          variant -> { HubSpotSDK::Crm::PublicTimePointOperation }

          variant -> { HubSpotSDK::Crm::PublicRangedTimeOperation }

          # @!method self.variants
          #   @return [Array(HubSpotSDK::Models::Crm::PublicBoolPropertyOperation, HubSpotSDK::Models::Crm::PublicNumberPropertyOperation, HubSpotSDK::Models::Crm::PublicStringPropertyOperation, HubSpotSDK::Models::Crm::PublicDateTimePropertyOperation, HubSpotSDK::Models::Crm::PublicRangedDatePropertyOperation, HubSpotSDK::Models::Crm::PublicComparativePropertyUpdatedOperation, HubSpotSDK::Models::Crm::PublicComparativeDatePropertyOperation, HubSpotSDK::Models::Crm::PublicRollingDateRangePropertyOperation, HubSpotSDK::Models::Crm::PublicRollingPropertyUpdatedOperation, HubSpotSDK::Models::Crm::PublicEnumerationPropertyOperation, HubSpotSDK::Models::Crm::PublicAllPropertyTypesOperation, HubSpotSDK::Models::Crm::PublicRangedNumberPropertyOperation, HubSpotSDK::Models::Crm::PublicMultiStringPropertyOperation, HubSpotSDK::Models::Crm::PublicDatePropertyOperation, HubSpotSDK::Models::Crm::PublicCalendarDatePropertyOperation, HubSpotSDK::Models::Crm::PublicTimePointOperation, HubSpotSDK::Models::Crm::PublicRangedTimeOperation)]
        end
      end
    end
  end
end
