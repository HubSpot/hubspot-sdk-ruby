# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Crm
      class PublicSurveyMonkeyFilter < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute filter_type
        #   Indicates the type of filter being applied (SURVEY_MONKEY).
        #
        #   @return [Symbol, HubSpotSDK::Models::Crm::PublicSurveyMonkeyFilter::FilterType]
        required :filter_type,
                 enum: -> { HubSpotSDK::Crm::PublicSurveyMonkeyFilter::FilterType },
                 api_name: :filterType

        # @!attribute operator
        #   Specifies the operation to be performed by the filter (HAS_RESPONDED_TO_SURVEY,
        #   HAS_NOT_RESPONDED_TO_SURVEY).
        #
        #   @return [String]
        required :operator, String

        # @!attribute survey_id
        #   The ID of the survey associated with the filter.
        #
        #   @return [String]
        required :survey_id, String, api_name: :surveyId

        # @!method initialize(filter_type:, operator:, survey_id:)
        #   Some parameter documentations has been truncated, see
        #   {HubSpotSDK::Models::Crm::PublicSurveyMonkeyFilter} for more details.
        #
        #   @param filter_type [Symbol, HubSpotSDK::Models::Crm::PublicSurveyMonkeyFilter::FilterType] Indicates the type of filter being applied (SURVEY_MONKEY).
        #
        #   @param operator [String] Specifies the operation to be performed by the filter (HAS_RESPONDED_TO_SURVEY,
        #
        #   @param survey_id [String] The ID of the survey associated with the filter.

        # Indicates the type of filter being applied (SURVEY_MONKEY).
        #
        # @see HubSpotSDK::Models::Crm::PublicSurveyMonkeyFilter#filter_type
        module FilterType
          extend HubSpotSDK::Internal::Type::Enum

          SURVEY_MONKEY = :SURVEY_MONKEY

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
