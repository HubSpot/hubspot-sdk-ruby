# frozen_string_literal: true

module HubspotSDK
  module Models
    module Automation
      # @see HubspotSDK::Resources::Automation::Sequences#get
      class PublicSequenceResponse < HubspotSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The unique identifier for the sequence.
        #
        #   @return [String]
        required :id, String

        # @!attribute created_at
        #   The date and time when the sequence was created.
        #
        #   @return [Time]
        required :created_at, Time, api_name: :createdAt

        # @!attribute dependencies
        #   An array of dependencies for the sequence steps, each represented as a
        #   PublicSequenceStepDependencyResponse object.
        #
        #   @return [Array<HubspotSDK::Models::Automation::PublicSequenceStepDependencyResponse>]
        required :dependencies,
                 -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Automation::PublicSequenceStepDependencyResponse] }

        # @!attribute name
        #   The name of the sequence.
        #
        #   @return [String]
        required :name, String

        # @!attribute steps
        #   An array of steps included in the sequence, each represented by a
        #   PublicSequenceStepResponse object.
        #
        #   @return [Array<HubspotSDK::Models::Automation::PublicSequenceStepResponse>]
        required :steps,
                 -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Automation::PublicSequenceStepResponse] }

        # @!attribute updated_at
        #   The date and time when the sequence was last updated.
        #
        #   @return [Time]
        required :updated_at, Time, api_name: :updatedAt

        # @!attribute user_id
        #   The ID of the user associated with the sequence.
        #
        #   @return [String]
        required :user_id, String, api_name: :userId

        # @!attribute folder_id
        #   The identifier of the folder containing the sequence.
        #
        #   @return [String, nil]
        optional :folder_id, String, api_name: :folderId

        # @!attribute settings
        #
        #   @return [HubspotSDK::Models::Automation::PublicSequenceSettingsResponse, nil]
        optional :settings, -> { HubspotSDK::Automation::PublicSequenceSettingsResponse }

        # @!method initialize(id:, created_at:, dependencies:, name:, steps:, updated_at:, user_id:, folder_id: nil, settings: nil)
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::Automation::PublicSequenceResponse} for more details.
        #
        #   @param id [String] The unique identifier for the sequence.
        #
        #   @param created_at [Time] The date and time when the sequence was created.
        #
        #   @param dependencies [Array<HubspotSDK::Models::Automation::PublicSequenceStepDependencyResponse>] An array of dependencies for the sequence steps, each represented as a PublicSeq
        #
        #   @param name [String] The name of the sequence.
        #
        #   @param steps [Array<HubspotSDK::Models::Automation::PublicSequenceStepResponse>] An array of steps included in the sequence, each represented by a PublicSequence
        #
        #   @param updated_at [Time] The date and time when the sequence was last updated.
        #
        #   @param user_id [String] The ID of the user associated with the sequence.
        #
        #   @param folder_id [String] The identifier of the folder containing the sequence.
        #
        #   @param settings [HubspotSDK::Models::Automation::PublicSequenceSettingsResponse]
      end
    end
  end
end
