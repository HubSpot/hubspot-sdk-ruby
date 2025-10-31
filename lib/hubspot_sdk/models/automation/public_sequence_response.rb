# frozen_string_literal: true

module HubspotSDK
  module Models
    module Automation
      # @see HubspotSDK::Resources::Automation::Sequences#get
      class PublicSequenceResponse < HubspotSDK::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute created_at
        #
        #   @return [Time]
        required :created_at, Time, api_name: :createdAt

        # @!attribute dependencies
        #
        #   @return [Array<HubspotSDK::Models::Automation::PublicSequenceStepDependencyResponse>]
        required :dependencies,
                 -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Automation::PublicSequenceStepDependencyResponse] }

        # @!attribute name
        #
        #   @return [String]
        required :name, String

        # @!attribute steps
        #
        #   @return [Array<HubspotSDK::Models::Automation::PublicSequenceStepResponse>]
        required :steps,
                 -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Automation::PublicSequenceStepResponse] }

        # @!attribute updated_at
        #
        #   @return [Time]
        required :updated_at, Time, api_name: :updatedAt

        # @!attribute user_id
        #
        #   @return [String]
        required :user_id, String, api_name: :userId

        # @!attribute folder_id
        #
        #   @return [String, nil]
        optional :folder_id, String, api_name: :folderId

        # @!attribute settings
        #
        #   @return [HubspotSDK::Models::Automation::PublicSequenceSettingsResponse, nil]
        optional :settings, -> { HubspotSDK::Automation::PublicSequenceSettingsResponse }

        # @!method initialize(id:, created_at:, dependencies:, name:, steps:, updated_at:, user_id:, folder_id: nil, settings: nil)
        #   @param id [String]
        #   @param created_at [Time]
        #   @param dependencies [Array<HubspotSDK::Models::Automation::PublicSequenceStepDependencyResponse>]
        #   @param name [String]
        #   @param steps [Array<HubspotSDK::Models::Automation::PublicSequenceStepResponse>]
        #   @param updated_at [Time]
        #   @param user_id [String]
        #   @param folder_id [String]
        #   @param settings [HubspotSDK::Models::Automation::PublicSequenceSettingsResponse]
      end
    end
  end
end
