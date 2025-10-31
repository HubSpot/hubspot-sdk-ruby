# frozen_string_literal: true

module HubspotSDK
  module Models
    module CRM
      # @see HubspotSDK::Resources::CRM::Owners#list
      class PublicOwner < HubspotSDK::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute archived
        #
        #   @return [Boolean]
        required :archived, HubspotSDK::Internal::Type::Boolean

        # @!attribute created_at
        #
        #   @return [Time]
        required :created_at, Time, api_name: :createdAt

        # @!attribute type
        #
        #   @return [Symbol, HubspotSDK::Models::CRM::PublicOwner::Type]
        required :type, enum: -> { HubspotSDK::CRM::PublicOwner::Type }

        # @!attribute updated_at
        #
        #   @return [Time]
        required :updated_at, Time, api_name: :updatedAt

        # @!attribute email
        #
        #   @return [String, nil]
        optional :email, String

        # @!attribute first_name
        #
        #   @return [String, nil]
        optional :first_name, String, api_name: :firstName

        # @!attribute last_name
        #
        #   @return [String, nil]
        optional :last_name, String, api_name: :lastName

        # @!attribute teams
        #
        #   @return [Array<HubspotSDK::Models::Settings::PublicTeam>, nil]
        optional :teams, -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Settings::PublicTeam] }

        # @!attribute user_id
        #
        #   @return [Integer, nil]
        optional :user_id, Integer, api_name: :userId

        # @!attribute user_id_including_inactive
        #
        #   @return [Integer, nil]
        optional :user_id_including_inactive, Integer, api_name: :userIdIncludingInactive

        # @!method initialize(id:, archived:, created_at:, type:, updated_at:, email: nil, first_name: nil, last_name: nil, teams: nil, user_id: nil, user_id_including_inactive: nil)
        #   @param id [String]
        #   @param archived [Boolean]
        #   @param created_at [Time]
        #   @param type [Symbol, HubspotSDK::Models::CRM::PublicOwner::Type]
        #   @param updated_at [Time]
        #   @param email [String]
        #   @param first_name [String]
        #   @param last_name [String]
        #   @param teams [Array<HubspotSDK::Models::Settings::PublicTeam>]
        #   @param user_id [Integer]
        #   @param user_id_including_inactive [Integer]

        # @see HubspotSDK::Models::CRM::PublicOwner#type
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
