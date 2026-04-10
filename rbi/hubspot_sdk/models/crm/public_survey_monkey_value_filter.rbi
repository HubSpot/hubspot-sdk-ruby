# typed: strong

module HubSpotSDK
  module Models
    module Crm
      class PublicSurveyMonkeyValueFilter < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Crm::PublicSurveyMonkeyValueFilter,
              HubSpotSDK::Internal::AnyHash
            )
          end

        # Defines the type of filter (SURVEY_MONKEY_VALUE).
        sig do
          returns(
            HubSpotSDK::Crm::PublicSurveyMonkeyValueFilter::FilterType::OrSymbol
          )
        end
        attr_accessor :filter_type

        # Defines the operation to be applied within the filter
        # (HAS_ANSWERED_SURVEY_QUESTION_WITH_VALUE).
        sig { returns(String) }
        attr_accessor :operator

        # The ID of the survey used in the filter.
        sig { returns(String) }
        attr_accessor :survey_id

        # The question from the survey used in the filter.
        sig { returns(String) }
        attr_accessor :survey_question

        # Specifies the operation used to compare the survey answer value.
        sig do
          returns(
            T.any(
              HubSpotSDK::Crm::PublicBoolPropertyOperation,
              HubSpotSDK::Crm::PublicNumberPropertyOperation,
              HubSpotSDK::Crm::PublicStringPropertyOperation,
              HubSpotSDK::Crm::PublicDateTimePropertyOperation,
              HubSpotSDK::Crm::PublicRangedDatePropertyOperation,
              HubSpotSDK::Crm::PublicComparativePropertyUpdatedOperation,
              HubSpotSDK::Crm::PublicComparativeDatePropertyOperation,
              HubSpotSDK::Crm::PublicRollingDateRangePropertyOperation,
              HubSpotSDK::Crm::PublicRollingPropertyUpdatedOperation,
              HubSpotSDK::Crm::PublicEnumerationPropertyOperation,
              HubSpotSDK::Crm::PublicAllPropertyTypesOperation,
              HubSpotSDK::Crm::PublicRangedNumberPropertyOperation,
              HubSpotSDK::Crm::PublicMultiStringPropertyOperation,
              HubSpotSDK::Crm::PublicDatePropertyOperation,
              HubSpotSDK::Crm::PublicCalendarDatePropertyOperation,
              HubSpotSDK::Crm::PublicTimePointOperation,
              HubSpotSDK::Crm::PublicRangedTimeOperation
            )
          )
        end
        attr_accessor :value_comparison

        # The column ID of the survey answer used in the filter.
        sig { returns(T.nilable(String)) }
        attr_reader :survey_answer_col_id

        sig { params(survey_answer_col_id: String).void }
        attr_writer :survey_answer_col_id

        # The row ID of the survey answer used in the filter.
        sig { returns(T.nilable(String)) }
        attr_reader :survey_answer_row_id

        sig { params(survey_answer_row_id: String).void }
        attr_writer :survey_answer_row_id

        sig do
          params(
            filter_type:
              HubSpotSDK::Crm::PublicSurveyMonkeyValueFilter::FilterType::OrSymbol,
            operator: String,
            survey_id: String,
            survey_question: String,
            value_comparison:
              T.any(
                HubSpotSDK::Crm::PublicBoolPropertyOperation::OrHash,
                HubSpotSDK::Crm::PublicNumberPropertyOperation::OrHash,
                HubSpotSDK::Crm::PublicStringPropertyOperation::OrHash,
                HubSpotSDK::Crm::PublicDateTimePropertyOperation::OrHash,
                HubSpotSDK::Crm::PublicRangedDatePropertyOperation::OrHash,
                HubSpotSDK::Crm::PublicComparativePropertyUpdatedOperation::OrHash,
                HubSpotSDK::Crm::PublicComparativeDatePropertyOperation::OrHash,
                HubSpotSDK::Crm::PublicRollingDateRangePropertyOperation::OrHash,
                HubSpotSDK::Crm::PublicRollingPropertyUpdatedOperation::OrHash,
                HubSpotSDK::Crm::PublicEnumerationPropertyOperation::OrHash,
                HubSpotSDK::Crm::PublicAllPropertyTypesOperation::OrHash,
                HubSpotSDK::Crm::PublicRangedNumberPropertyOperation::OrHash,
                HubSpotSDK::Crm::PublicMultiStringPropertyOperation::OrHash,
                HubSpotSDK::Crm::PublicDatePropertyOperation::OrHash,
                HubSpotSDK::Crm::PublicCalendarDatePropertyOperation::OrHash,
                HubSpotSDK::Crm::PublicTimePointOperation::OrHash,
                HubSpotSDK::Crm::PublicRangedTimeOperation::OrHash
              ),
            survey_answer_col_id: String,
            survey_answer_row_id: String
          ).returns(T.attached_class)
        end
        def self.new(
          # Defines the type of filter (SURVEY_MONKEY_VALUE).
          filter_type:,
          # Defines the operation to be applied within the filter
          # (HAS_ANSWERED_SURVEY_QUESTION_WITH_VALUE).
          operator:,
          # The ID of the survey used in the filter.
          survey_id:,
          # The question from the survey used in the filter.
          survey_question:,
          # Specifies the operation used to compare the survey answer value.
          value_comparison:,
          # The column ID of the survey answer used in the filter.
          survey_answer_col_id: nil,
          # The row ID of the survey answer used in the filter.
          survey_answer_row_id: nil
        )
        end

        sig do
          override.returns(
            {
              filter_type:
                HubSpotSDK::Crm::PublicSurveyMonkeyValueFilter::FilterType::OrSymbol,
              operator: String,
              survey_id: String,
              survey_question: String,
              value_comparison:
                T.any(
                  HubSpotSDK::Crm::PublicBoolPropertyOperation,
                  HubSpotSDK::Crm::PublicNumberPropertyOperation,
                  HubSpotSDK::Crm::PublicStringPropertyOperation,
                  HubSpotSDK::Crm::PublicDateTimePropertyOperation,
                  HubSpotSDK::Crm::PublicRangedDatePropertyOperation,
                  HubSpotSDK::Crm::PublicComparativePropertyUpdatedOperation,
                  HubSpotSDK::Crm::PublicComparativeDatePropertyOperation,
                  HubSpotSDK::Crm::PublicRollingDateRangePropertyOperation,
                  HubSpotSDK::Crm::PublicRollingPropertyUpdatedOperation,
                  HubSpotSDK::Crm::PublicEnumerationPropertyOperation,
                  HubSpotSDK::Crm::PublicAllPropertyTypesOperation,
                  HubSpotSDK::Crm::PublicRangedNumberPropertyOperation,
                  HubSpotSDK::Crm::PublicMultiStringPropertyOperation,
                  HubSpotSDK::Crm::PublicDatePropertyOperation,
                  HubSpotSDK::Crm::PublicCalendarDatePropertyOperation,
                  HubSpotSDK::Crm::PublicTimePointOperation,
                  HubSpotSDK::Crm::PublicRangedTimeOperation
                ),
              survey_answer_col_id: String,
              survey_answer_row_id: String
            }
          )
        end
        def to_hash
        end

        # Defines the type of filter (SURVEY_MONKEY_VALUE).
        module FilterType
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubSpotSDK::Crm::PublicSurveyMonkeyValueFilter::FilterType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          SURVEY_MONKEY_VALUE =
            T.let(
              :SURVEY_MONKEY_VALUE,
              HubSpotSDK::Crm::PublicSurveyMonkeyValueFilter::FilterType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Crm::PublicSurveyMonkeyValueFilter::FilterType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # Specifies the operation used to compare the survey answer value.
        module ValueComparison
          extend HubSpotSDK::Internal::Type::Union

          Variants =
            T.type_alias do
              T.any(
                HubSpotSDK::Crm::PublicBoolPropertyOperation,
                HubSpotSDK::Crm::PublicNumberPropertyOperation,
                HubSpotSDK::Crm::PublicStringPropertyOperation,
                HubSpotSDK::Crm::PublicDateTimePropertyOperation,
                HubSpotSDK::Crm::PublicRangedDatePropertyOperation,
                HubSpotSDK::Crm::PublicComparativePropertyUpdatedOperation,
                HubSpotSDK::Crm::PublicComparativeDatePropertyOperation,
                HubSpotSDK::Crm::PublicRollingDateRangePropertyOperation,
                HubSpotSDK::Crm::PublicRollingPropertyUpdatedOperation,
                HubSpotSDK::Crm::PublicEnumerationPropertyOperation,
                HubSpotSDK::Crm::PublicAllPropertyTypesOperation,
                HubSpotSDK::Crm::PublicRangedNumberPropertyOperation,
                HubSpotSDK::Crm::PublicMultiStringPropertyOperation,
                HubSpotSDK::Crm::PublicDatePropertyOperation,
                HubSpotSDK::Crm::PublicCalendarDatePropertyOperation,
                HubSpotSDK::Crm::PublicTimePointOperation,
                HubSpotSDK::Crm::PublicRangedTimeOperation
              )
            end

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Crm::PublicSurveyMonkeyValueFilter::ValueComparison::Variants
              ]
            )
          end
          def self.variants
          end
        end
      end
    end
  end
end
