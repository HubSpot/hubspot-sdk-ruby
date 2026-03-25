# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      module Extensions
        class CardAuditResponse < HubspotSDK::Internal::Type::BaseModel
          # @!attribute action_type
          #   The type of action performed, with possible values: CREATE, DELETE, UPDATE.
          #
          #   @return [Symbol, HubspotSDK::Models::Crm::Extensions::CardAuditResponse::ActionType]
          required :action_type,
                   enum: -> { HubspotSDK::Crm::Extensions::CardAuditResponse::ActionType },
                   api_name: :actionType

          # @!attribute application_id
          #   The ID of the application associated with the card.
          #
          #   @return [Integer]
          required :application_id, Integer, api_name: :applicationId

          # @!attribute auth_source
          #   The source of authentication for the action, with possible values: APP,
          #   EXTERNAL, INTERNAL.
          #
          #   @return [Symbol, HubspotSDK::Models::Crm::Extensions::CardAuditResponse::AuthSource]
          required :auth_source,
                   enum: -> { HubspotSDK::Crm::Extensions::CardAuditResponse::AuthSource },
                   api_name: :authSource

          # @!attribute changed_at
          #   The timestamp indicating when the change occurred.
          #
          #   @return [Integer]
          required :changed_at, Integer, api_name: :changedAt

          # @!attribute initiating_user_id
          #   The ID of the user who initiated the action.
          #
          #   @return [Integer]
          required :initiating_user_id, Integer, api_name: :initiatingUserId

          # @!attribute object_type_id
          #   The ID of the card.
          #
          #   @return [Integer]
          required :object_type_id, Integer, api_name: :objectTypeId

          # @!method initialize(action_type:, application_id:, auth_source:, changed_at:, initiating_user_id:, object_type_id:)
          #   Some parameter documentations has been truncated, see
          #   {HubspotSDK::Models::Crm::Extensions::CardAuditResponse} for more details.
          #
          #   @param action_type [Symbol, HubspotSDK::Models::Crm::Extensions::CardAuditResponse::ActionType] The type of action performed, with possible values: CREATE, DELETE, UPDATE.
          #
          #   @param application_id [Integer] The ID of the application associated with the card.
          #
          #   @param auth_source [Symbol, HubspotSDK::Models::Crm::Extensions::CardAuditResponse::AuthSource] The source of authentication for the action, with possible values: APP, EXTERNAL
          #
          #   @param changed_at [Integer] The timestamp indicating when the change occurred.
          #
          #   @param initiating_user_id [Integer] The ID of the user who initiated the action.
          #
          #   @param object_type_id [Integer] The ID of the card.

          # The type of action performed, with possible values: CREATE, DELETE, UPDATE.
          #
          # @see HubspotSDK::Models::Crm::Extensions::CardAuditResponse#action_type
          module ActionType
            extend HubspotSDK::Internal::Type::Enum

            CREATE = :CREATE
            DELETE = :DELETE
            UPDATE = :UPDATE

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # The source of authentication for the action, with possible values: APP,
          # EXTERNAL, INTERNAL.
          #
          # @see HubspotSDK::Models::Crm::Extensions::CardAuditResponse#auth_source
          module AuthSource
            extend HubspotSDK::Internal::Type::Enum

            APP = :APP
            EXTERNAL = :EXTERNAL
            INTERNAL = :INTERNAL

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end
      end
    end
  end
end
