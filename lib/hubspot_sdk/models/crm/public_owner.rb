# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      # @see HubspotSDK::Resources::Crm::Owners#list
      class PublicOwner < HubspotSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The unique identifier of the owner.
        #
        #   @return [String]
        required :id, String

        # @!attribute archived
        #   Indicates whether the owner is archived.
        #
        #   @return [Boolean]
        required :archived, HubspotSDK::Internal::Type::Boolean

        # @!attribute created_at
        #   The date and time when the owner was created.
        #
        #   @return [Time]
        required :created_at, Time, api_name: :createdAt

        # @!attribute type
        #   The type of the owner, which can be either PERSON or QUEUE.
        #
        #   @return [Symbol, HubspotSDK::Models::Crm::PublicOwner::Type]
        required :type, enum: -> { HubspotSDK::Crm::PublicOwner::Type }

        # @!attribute updated_at
        #   The date and time when the owner was last updated.
        #
        #   @return [Time]
        required :updated_at, Time, api_name: :updatedAt

        # @!attribute email
        #   The email address of the owner.
        #
        #   @return [String, nil]
        optional :email, String

        # @!attribute first_name
        #   The first name of the owner.
        #
        #   @return [String, nil]
        optional :first_name, String, api_name: :firstName

        # @!attribute last_name
        #   The last name of the owner.
        #
        #   @return [String, nil]
        optional :last_name, String, api_name: :lastName

        # @!attribute teams
        #
        #   @return [Array<HubspotSDK::Models::Settings::PublicTeam>, nil]
        optional :teams, -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Settings::PublicTeam] }

        # @!attribute user_id
        #   The user ID of the owner.
        #
        #   @return [Integer, nil]
        optional :user_id, Integer, api_name: :userId

        # @!attribute user_id_including_inactive
        #   The user ID of the owner, including inactive users.
        #
        #   @return [Integer, nil]
        optional :user_id_including_inactive, Integer, api_name: :userIdIncludingInactive

        # @!method initialize(id:, archived:, created_at:, type:, updated_at:, email: nil, first_name: nil, last_name: nil, teams: nil, user_id: nil, user_id_including_inactive: nil)
        #   @param id [String] The unique identifier of the owner.
        #
        #   @param archived [Boolean] Indicates whether the owner is archived.
        #
        #   @param created_at [Time] The date and time when the owner was created.
        #
        #   @param type [Symbol, HubspotSDK::Models::Crm::PublicOwner::Type] The type of the owner, which can be either PERSON or QUEUE.
        #
        #   @param updated_at [Time] The date and time when the owner was last updated.
        #
        #   @param email [String] The email address of the owner.
        #
        #   @param first_name [String] The first name of the owner.
        #
        #   @param last_name [String] The last name of the owner.
        #
        #   @param teams [Array<HubspotSDK::Models::Settings::PublicTeam>]
        #
        #   @param user_id [Integer] The user ID of the owner.
        #
        #   @param user_id_including_inactive [Integer] The user ID of the owner, including inactive users.

        # The type of the owner, which can be either PERSON or QUEUE.
        #
        # @see HubspotSDK::Models::Crm::PublicOwner#type
        module Type
          extend HubspotSDK::Internal::Type::Enum

          PERSON = :PERSON
          QUEUE = :QUEUE

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
