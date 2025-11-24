# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      module Extensions
        class CardAuditResponse < HubspotSDK::Internal::Type::BaseModel
          # @!attribute action_type
          #
          #   @return [Symbol, HubspotSDK::Models::Crm::Extensions::CardAuditResponse::ActionType]
          required :action_type,
                   enum: -> { HubspotSDK::Crm::Extensions::CardAuditResponse::ActionType },
                   api_name: :actionType

          # @!attribute application_id
          #
          #   @return [Integer]
          required :application_id, Integer, api_name: :applicationId

          # @!attribute auth_source
          #
          #   @return [Symbol, HubspotSDK::Models::Crm::Extensions::CardAuditResponse::AuthSource]
          required :auth_source,
                   enum: -> { HubspotSDK::Crm::Extensions::CardAuditResponse::AuthSource },
                   api_name: :authSource

          # @!attribute changed_at
          #
          #   @return [Integer]
          required :changed_at, Integer, api_name: :changedAt

          # @!attribute initiating_user_id
          #
          #   @return [Integer]
          required :initiating_user_id, Integer, api_name: :initiatingUserId

          # @!attribute object_type_id
          #
          #   @return [Integer]
          required :object_type_id, Integer, api_name: :objectTypeId

          # @!method initialize(action_type:, application_id:, auth_source:, changed_at:, initiating_user_id:, object_type_id:)
          #   @param action_type [Symbol, HubspotSDK::Models::Crm::Extensions::CardAuditResponse::ActionType]
          #   @param application_id [Integer]
          #   @param auth_source [Symbol, HubspotSDK::Models::Crm::Extensions::CardAuditResponse::AuthSource]
          #   @param changed_at [Integer]
          #   @param initiating_user_id [Integer]
          #   @param object_type_id [Integer]

          # @see HubspotSDK::Models::Crm::Extensions::CardAuditResponse#action_type
          module ActionType
            extend HubspotSDK::Internal::Type::Enum

            CREATE = :CREATE
            DELETE = :DELETE
            UPDATE = :UPDATE

            # @!method self.values
            #   @return [Array<Symbol>]
          end

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
