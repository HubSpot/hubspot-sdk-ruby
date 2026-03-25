# typed: strong

module HubspotSDK
  module Models
    module Crm
      class PublicSurveyMonkeyFilter < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Crm::PublicSurveyMonkeyFilter,
              HubspotSDK::Internal::AnyHash
            )
          end

        # Indicates the type of filter being applied (SURVEY_MONKEY).
        sig do
          returns(
            HubspotSDK::Crm::PublicSurveyMonkeyFilter::FilterType::OrSymbol
          )
        end
        attr_accessor :filter_type

        # Specifies the operation to be performed by the filter (HAS_RESPONDED_TO_SURVEY,
        # HAS_NOT_RESPONDED_TO_SURVEY).
        sig { returns(String) }
        attr_accessor :operator

        # The ID of the survey associated with the filter.
        sig { returns(String) }
        attr_accessor :survey_id

        sig do
          params(
            filter_type:
              HubspotSDK::Crm::PublicSurveyMonkeyFilter::FilterType::OrSymbol,
            operator: String,
            survey_id: String
          ).returns(T.attached_class)
        end
        def self.new(
          # Indicates the type of filter being applied (SURVEY_MONKEY).
          filter_type:,
          # Specifies the operation to be performed by the filter (HAS_RESPONDED_TO_SURVEY,
          # HAS_NOT_RESPONDED_TO_SURVEY).
          operator:,
          # The ID of the survey associated with the filter.
          survey_id:
        )
        end

        sig do
          override.returns(
            {
              filter_type:
                HubspotSDK::Crm::PublicSurveyMonkeyFilter::FilterType::OrSymbol,
              operator: String,
              survey_id: String
            }
          )
        end
        def to_hash
        end

        # Indicates the type of filter being applied (SURVEY_MONKEY).
        module FilterType
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubspotSDK::Crm::PublicSurveyMonkeyFilter::FilterType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          SURVEY_MONKEY =
            T.let(
              :SURVEY_MONKEY,
              HubspotSDK::Crm::PublicSurveyMonkeyFilter::FilterType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Crm::PublicSurveyMonkeyFilter::FilterType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
