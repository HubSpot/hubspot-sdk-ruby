# frozen_string_literal: true

module HubspotSDK
  module Models
    module Automation
      # @see HubspotSDK::Resources::Automation::Sequences#list
      class PublicSequenceLiteResponse < HubspotSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The unique identifier of the sequence.
        #
        #   @return [String]
        required :id, String

        # @!attribute created_at
        #   The date and time when the sequence was created.
        #
        #   @return [Time]
        required :created_at, Time, api_name: :createdAt

        # @!attribute name
        #   The name of the sequence.
        #
        #   @return [String]
        required :name, String

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
        #   The ID of the folder containing the sequence.
        #
        #   @return [String, nil]
        optional :folder_id, String, api_name: :folderId

        # @!method initialize(id:, created_at:, name:, updated_at:, user_id:, folder_id: nil)
        #   @param id [String] The unique identifier of the sequence.
        #
        #   @param created_at [Time] The date and time when the sequence was created.
        #
        #   @param name [String] The name of the sequence.
        #
        #   @param updated_at [Time] The date and time when the sequence was last updated.
        #
        #   @param user_id [String] The ID of the user associated with the sequence.
        #
        #   @param folder_id [String] The ID of the folder containing the sequence.
      end
    end
  end
end
