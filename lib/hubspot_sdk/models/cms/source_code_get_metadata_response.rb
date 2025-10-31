# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      # @see HubspotSDK::Resources::Cms::SourceCode#get_metadata
      class SourceCodeGetMetadataResponse < HubspotSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The path of the file in the CMS Developer File System.
        #
        #   @return [String]
        required :id, String

        # @!attribute created_at
        #   Timestamp of when the object was first created.
        #
        #   @return [Integer]
        required :created_at, Integer, api_name: :createdAt

        # @!attribute folder
        #   Determines whether or not this path points to a folder.
        #
        #   @return [Boolean]
        required :folder, HubspotSDK::Internal::Type::Boolean

        # @!attribute name
        #   The name of the file.
        #
        #   @return [String]
        required :name, String

        # @!attribute updated_at
        #   Timestamp of when the object was last updated.
        #
        #   @return [Integer]
        required :updated_at, Integer, api_name: :updatedAt

        # @!attribute archived_at
        #   Timestamp of when the object was archived (deleted).
        #
        #   @return [Integer, nil]
        optional :archived_at, Integer, api_name: :archivedAt

        # @!attribute children
        #   If the object is a folder, contains the filenames of the files within the
        #   folder.
        #
        #   @return [Array<String>, nil]
        optional :children, HubspotSDK::Internal::Type::ArrayOf[String]

        # @!attribute hash_
        #
        #   @return [String, nil]
        optional :hash_, String, api_name: :hash

        # @!method initialize(id:, created_at:, folder:, name:, updated_at:, archived_at: nil, children: nil, hash_: nil)
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::Cms::SourceCodeGetMetadataResponse} for more details.
        #
        #   @param id [String] The path of the file in the CMS Developer File System.
        #
        #   @param created_at [Integer] Timestamp of when the object was first created.
        #
        #   @param folder [Boolean] Determines whether or not this path points to a folder.
        #
        #   @param name [String] The name of the file.
        #
        #   @param updated_at [Integer] Timestamp of when the object was last updated.
        #
        #   @param archived_at [Integer] Timestamp of when the object was archived (deleted).
        #
        #   @param children [Array<String>] If the object is a folder, contains the filenames of the files within the folder
        #
        #   @param hash_ [String]
      end
    end
  end
end
