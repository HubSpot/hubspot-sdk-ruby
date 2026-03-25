# typed: strong

module HubspotSDK
  module Models
    module Crm
      class PublicSurveyMonkeyValueFilter < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Crm::PublicSurveyMonkeyValueFilter,
              HubspotSDK::Internal::AnyHash
            )
          end

        # Defines the type of filter (SURVEY_MONKEY_VALUE).
        sig do
          returns(
            HubspotSDK::Crm::PublicSurveyMonkeyValueFilter::FilterType::OrSymbol
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
              HubspotSDK::Crm::PublicBoolPropertyOperation,
              HubspotSDK::Crm::PublicNumberPropertyOperation,
              HubspotSDK::Crm::PublicStringPropertyOperation,
              HubspotSDK::Crm::PublicDateTimePropertyOperation,
              HubspotSDK::Crm::PublicRangedDatePropertyOperation,
              HubspotSDK::Crm::PublicComparativePropertyUpdatedOperation,
              HubspotSDK::Crm::PublicComparativeDatePropertyOperation,
              HubspotSDK::Crm::PublicRollingDateRangePropertyOperation,
              HubspotSDK::Crm::PublicRollingPropertyUpdatedOperation,
              HubspotSDK::Crm::PublicEnumerationPropertyOperation,
              HubspotSDK::Crm::PublicAllPropertyTypesOperation,
              HubspotSDK::Crm::PublicRangedNumberPropertyOperation,
              HubspotSDK::Crm::PublicMultiStringPropertyOperation,
              HubspotSDK::Crm::PublicDatePropertyOperation,
              HubspotSDK::Crm::PublicCalendarDatePropertyOperation,
              HubspotSDK::Crm::PublicTimePointOperation,
              HubspotSDK::Crm::PublicRangedTimeOperation
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
              HubspotSDK::Crm::PublicSurveyMonkeyValueFilter::FilterType::OrSymbol,
            operator: String,
            survey_id: String,
            survey_question: String,
            value_comparison:
              T.any(
                HubspotSDK::Crm::PublicBoolPropertyOperation::OrHash,
                HubspotSDK::Crm::PublicNumberPropertyOperation::OrHash,
                HubspotSDK::Crm::PublicStringPropertyOperation::OrHash,
                HubspotSDK::Crm::PublicDateTimePropertyOperation::OrHash,
                HubspotSDK::Crm::PublicRangedDatePropertyOperation::OrHash,
                HubspotSDK::Crm::PublicComparativePropertyUpdatedOperation::OrHash,
                HubspotSDK::Crm::PublicComparativeDatePropertyOperation::OrHash,
                HubspotSDK::Crm::PublicRollingDateRangePropertyOperation::OrHash,
                HubspotSDK::Crm::PublicRollingPropertyUpdatedOperation::OrHash,
                HubspotSDK::Crm::PublicEnumerationPropertyOperation::OrHash,
                HubspotSDK::Crm::PublicAllPropertyTypesOperation::OrHash,
                HubspotSDK::Crm::PublicRangedNumberPropertyOperation::OrHash,
                HubspotSDK::Crm::PublicMultiStringPropertyOperation::OrHash,
                HubspotSDK::Crm::PublicDatePropertyOperation::OrHash,
                HubspotSDK::Crm::PublicCalendarDatePropertyOperation::OrHash,
                HubspotSDK::Crm::PublicTimePointOperation::OrHash,
                HubspotSDK::Crm::PublicRangedTimeOperation::OrHash
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
                HubspotSDK::Crm::PublicSurveyMonkeyValueFilter::FilterType::OrSymbol,
              operator: String,
              survey_id: String,
              survey_question: String,
              value_comparison:
                T.any(
                  HubspotSDK::Crm::PublicBoolPropertyOperation,
                  HubspotSDK::Crm::PublicNumberPropertyOperation,
                  HubspotSDK::Crm::PublicStringPropertyOperation,
                  HubspotSDK::Crm::PublicDateTimePropertyOperation,
                  HubspotSDK::Crm::PublicRangedDatePropertyOperation,
                  HubspotSDK::Crm::PublicComparativePropertyUpdatedOperation,
                  HubspotSDK::Crm::PublicComparativeDatePropertyOperation,
                  HubspotSDK::Crm::PublicRollingDateRangePropertyOperation,
                  HubspotSDK::Crm::PublicRollingPropertyUpdatedOperation,
                  HubspotSDK::Crm::PublicEnumerationPropertyOperation,
                  HubspotSDK::Crm::PublicAllPropertyTypesOperation,
                  HubspotSDK::Crm::PublicRangedNumberPropertyOperation,
                  HubspotSDK::Crm::PublicMultiStringPropertyOperation,
                  HubspotSDK::Crm::PublicDatePropertyOperation,
                  HubspotSDK::Crm::PublicCalendarDatePropertyOperation,
                  HubspotSDK::Crm::PublicTimePointOperation,
                  HubspotSDK::Crm::PublicRangedTimeOperation
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
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubspotSDK::Crm::PublicSurveyMonkeyValueFilter::FilterType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          SURVEY_MONKEY_VALUE =
            T.let(
              :SURVEY_MONKEY_VALUE,
              HubspotSDK::Crm::PublicSurveyMonkeyValueFilter::FilterType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Crm::PublicSurveyMonkeyValueFilter::FilterType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # Specifies the operation used to compare the survey answer value.
        module ValueComparison
          extend HubspotSDK::Internal::Type::Union

          Variants =
            T.type_alias do
              T.any(
                HubspotSDK::Crm::PublicBoolPropertyOperation,
                HubspotSDK::Crm::PublicNumberPropertyOperation,
                HubspotSDK::Crm::PublicStringPropertyOperation,
                HubspotSDK::Crm::PublicDateTimePropertyOperation,
                HubspotSDK::Crm::PublicRangedDatePropertyOperation,
                HubspotSDK::Crm::PublicComparativePropertyUpdatedOperation,
                HubspotSDK::Crm::PublicComparativeDatePropertyOperation,
                HubspotSDK::Crm::PublicRollingDateRangePropertyOperation,
                HubspotSDK::Crm::PublicRollingPropertyUpdatedOperation,
                HubspotSDK::Crm::PublicEnumerationPropertyOperation,
                HubspotSDK::Crm::PublicAllPropertyTypesOperation,
                HubspotSDK::Crm::PublicRangedNumberPropertyOperation,
                HubspotSDK::Crm::PublicMultiStringPropertyOperation,
                HubspotSDK::Crm::PublicDatePropertyOperation,
                HubspotSDK::Crm::PublicCalendarDatePropertyOperation,
                HubspotSDK::Crm::PublicTimePointOperation,
                HubspotSDK::Crm::PublicRangedTimeOperation
              )
            end

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Crm::PublicSurveyMonkeyValueFilter::ValueComparison::Variants
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
