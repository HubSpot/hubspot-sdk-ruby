# typed: strong

module HubspotSDK
  module Models
    class PublicSurveyMonkeyValueFilter < HubspotSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            HubspotSDK::PublicSurveyMonkeyValueFilter,
            HubspotSDK::Internal::AnyHash
          )
        end

      sig do
        returns(HubspotSDK::PublicSurveyMonkeyValueFilter::FilterType::OrSymbol)
      end
      attr_accessor :filter_type

      sig { returns(String) }
      attr_accessor :operator

      sig { returns(String) }
      attr_accessor :survey_id

      sig { returns(String) }
      attr_accessor :survey_question

      sig do
        returns(
          T.any(
            HubspotSDK::PublicBoolPropertyOperation,
            HubspotSDK::PublicNumberPropertyOperation,
            HubspotSDK::PublicStringPropertyOperation,
            HubspotSDK::PublicDateTimePropertyOperation,
            HubspotSDK::PublicRangedDatePropertyOperation,
            HubspotSDK::PublicComparativePropertyUpdatedOperation,
            HubspotSDK::PublicComparativeDatePropertyOperation,
            HubspotSDK::PublicRollingDateRangePropertyOperation,
            HubspotSDK::PublicRollingPropertyUpdatedOperation,
            HubspotSDK::PublicEnumerationPropertyOperation,
            HubspotSDK::PublicAllPropertyTypesOperation,
            HubspotSDK::PublicRangedNumberPropertyOperation,
            HubspotSDK::PublicMultiStringPropertyOperation,
            HubspotSDK::PublicDatePropertyOperation,
            HubspotSDK::PublicCalendarDatePropertyOperation,
            HubspotSDK::PublicTimePointOperation,
            HubspotSDK::PublicRangedTimeOperation
          )
        )
      end
      attr_accessor :value_comparison

      sig { returns(T.nilable(String)) }
      attr_reader :survey_answer_col_id

      sig { params(survey_answer_col_id: String).void }
      attr_writer :survey_answer_col_id

      sig { returns(T.nilable(String)) }
      attr_reader :survey_answer_row_id

      sig { params(survey_answer_row_id: String).void }
      attr_writer :survey_answer_row_id

      sig do
        params(
          filter_type:
            HubspotSDK::PublicSurveyMonkeyValueFilter::FilterType::OrSymbol,
          operator: String,
          survey_id: String,
          survey_question: String,
          value_comparison:
            T.any(
              HubspotSDK::PublicBoolPropertyOperation::OrHash,
              HubspotSDK::PublicNumberPropertyOperation::OrHash,
              HubspotSDK::PublicStringPropertyOperation::OrHash,
              HubspotSDK::PublicDateTimePropertyOperation::OrHash,
              HubspotSDK::PublicRangedDatePropertyOperation::OrHash,
              HubspotSDK::PublicComparativePropertyUpdatedOperation::OrHash,
              HubspotSDK::PublicComparativeDatePropertyOperation::OrHash,
              HubspotSDK::PublicRollingDateRangePropertyOperation::OrHash,
              HubspotSDK::PublicRollingPropertyUpdatedOperation::OrHash,
              HubspotSDK::PublicEnumerationPropertyOperation::OrHash,
              HubspotSDK::PublicAllPropertyTypesOperation::OrHash,
              HubspotSDK::PublicRangedNumberPropertyOperation::OrHash,
              HubspotSDK::PublicMultiStringPropertyOperation::OrHash,
              HubspotSDK::PublicDatePropertyOperation::OrHash,
              HubspotSDK::PublicCalendarDatePropertyOperation::OrHash,
              HubspotSDK::PublicTimePointOperation::OrHash,
              HubspotSDK::PublicRangedTimeOperation::OrHash
            ),
          survey_answer_col_id: String,
          survey_answer_row_id: String
        ).returns(T.attached_class)
      end
      def self.new(
        filter_type:,
        operator:,
        survey_id:,
        survey_question:,
        value_comparison:,
        survey_answer_col_id: nil,
        survey_answer_row_id: nil
      )
      end

      sig do
        override.returns(
          {
            filter_type:
              HubspotSDK::PublicSurveyMonkeyValueFilter::FilterType::OrSymbol,
            operator: String,
            survey_id: String,
            survey_question: String,
            value_comparison:
              T.any(
                HubspotSDK::PublicBoolPropertyOperation,
                HubspotSDK::PublicNumberPropertyOperation,
                HubspotSDK::PublicStringPropertyOperation,
                HubspotSDK::PublicDateTimePropertyOperation,
                HubspotSDK::PublicRangedDatePropertyOperation,
                HubspotSDK::PublicComparativePropertyUpdatedOperation,
                HubspotSDK::PublicComparativeDatePropertyOperation,
                HubspotSDK::PublicRollingDateRangePropertyOperation,
                HubspotSDK::PublicRollingPropertyUpdatedOperation,
                HubspotSDK::PublicEnumerationPropertyOperation,
                HubspotSDK::PublicAllPropertyTypesOperation,
                HubspotSDK::PublicRangedNumberPropertyOperation,
                HubspotSDK::PublicMultiStringPropertyOperation,
                HubspotSDK::PublicDatePropertyOperation,
                HubspotSDK::PublicCalendarDatePropertyOperation,
                HubspotSDK::PublicTimePointOperation,
                HubspotSDK::PublicRangedTimeOperation
              ),
            survey_answer_col_id: String,
            survey_answer_row_id: String
          }
        )
      end
      def to_hash
      end

      module FilterType
        extend HubspotSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, HubspotSDK::PublicSurveyMonkeyValueFilter::FilterType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        SURVEY_MONKEY_VALUE =
          T.let(
            :SURVEY_MONKEY_VALUE,
            HubspotSDK::PublicSurveyMonkeyValueFilter::FilterType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              HubspotSDK::PublicSurveyMonkeyValueFilter::FilterType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      module ValueComparison
        extend HubspotSDK::Internal::Type::Union

        Variants =
          T.type_alias do
            T.any(
              HubspotSDK::PublicBoolPropertyOperation,
              HubspotSDK::PublicNumberPropertyOperation,
              HubspotSDK::PublicStringPropertyOperation,
              HubspotSDK::PublicDateTimePropertyOperation,
              HubspotSDK::PublicRangedDatePropertyOperation,
              HubspotSDK::PublicComparativePropertyUpdatedOperation,
              HubspotSDK::PublicComparativeDatePropertyOperation,
              HubspotSDK::PublicRollingDateRangePropertyOperation,
              HubspotSDK::PublicRollingPropertyUpdatedOperation,
              HubspotSDK::PublicEnumerationPropertyOperation,
              HubspotSDK::PublicAllPropertyTypesOperation,
              HubspotSDK::PublicRangedNumberPropertyOperation,
              HubspotSDK::PublicMultiStringPropertyOperation,
              HubspotSDK::PublicDatePropertyOperation,
              HubspotSDK::PublicCalendarDatePropertyOperation,
              HubspotSDK::PublicTimePointOperation,
              HubspotSDK::PublicRangedTimeOperation
            )
          end

        sig do
          override.returns(
            T::Array[
              HubspotSDK::PublicSurveyMonkeyValueFilter::ValueComparison::Variants
            ]
          )
        end
        def self.variants
        end
      end
    end
  end
end
