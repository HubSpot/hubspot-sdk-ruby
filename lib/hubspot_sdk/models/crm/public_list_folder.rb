# frozen_string_literal: true

module HubspotSDK
  module Models
    module CRM
      class PublicListFolder < HubspotSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The Id of the folder.
        #
        #   @return [String]
        required :id, String

        # @!attribute child_lists
        #   An array of list Id's contained in this folder.
        #
        #   @return [Array<Integer>]
        required :child_lists, HubspotSDK::Internal::Type::ArrayOf[Integer], api_name: :childLists

        # @!attribute child_nodes
        #
        #   @return [Array<HubspotSDK::Models::CRM::PublicListFolder>]
        required :child_nodes,
                 -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::CRM::PublicListFolder] },
                 api_name: :childNodes

        # @!attribute parent_folder_id
        #   The Id of the folder this folder is in, the root folder is represented as 0.
        #
        #   @return [String]
        required :parent_folder_id, String, api_name: :parentFolderId

        # @!attribute created_at
        #   The time the folder was created at.
        #
        #   @return [Time, nil]
        optional :created_at, Time, api_name: :createdAt

        # @!attribute name
        #   The name of the folder.
        #
        #   @return [String, nil]
        optional :name, String

        # @!attribute updated_at
        #   The time the folder was last updated at.
        #
        #   @return [Time, nil]
        optional :updated_at, Time, api_name: :updatedAt

        # @!attribute updated_contents_at
        #   The time that the contents of the folder was last updated at.
        #
        #   @return [Time, nil]
        optional :updated_contents_at, Time, api_name: :updatedContentsAt

        # @!attribute user_id
        #   The user Id of the owner of the folder.
        #
        #   @return [Integer, nil]
        optional :user_id, Integer, api_name: :userId

        # @!method initialize(id:, child_lists:, child_nodes:, parent_folder_id:, created_at: nil, name: nil, updated_at: nil, updated_contents_at: nil, user_id: nil)
        #   @param id [String] The Id of the folder.
        #
        #   @param child_lists [Array<Integer>] An array of list Id's contained in this folder.
        #
        #   @param child_nodes [Array<HubspotSDK::Models::CRM::PublicListFolder>]
        #
        #   @param parent_folder_id [String] The Id of the folder this folder is in, the root folder is represented as 0.
        #
        #   @param created_at [Time] The time the folder was created at.
        #
        #   @param name [String] The name of the folder.
        #
        #   @param updated_at [Time] The time the folder was last updated at.
        #
        #   @param updated_contents_at [Time] The time that the contents of the folder was last updated at.
        #
        #   @param user_id [Integer] The user Id of the owner of the folder.
      end
    end
  end
end
