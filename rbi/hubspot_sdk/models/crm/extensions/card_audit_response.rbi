# typed: strong

module HubspotSDK
  module Models
    module Crm
      module Extensions
        class CardAuditResponse < HubspotSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                HubspotSDK::Crm::Extensions::CardAuditResponse,
                HubspotSDK::Internal::AnyHash
              )
            end

          # The type of action performed, with possible values: CREATE, DELETE, UPDATE.
          sig do
            returns(
              HubspotSDK::Crm::Extensions::CardAuditResponse::ActionType::TaggedSymbol
            )
          end
          attr_accessor :action_type

          # The ID of the application associated with the card.
          sig { returns(Integer) }
          attr_accessor :application_id

          # The source of authentication for the action, with possible values: APP,
          # EXTERNAL, INTERNAL.
          sig do
            returns(
              HubspotSDK::Crm::Extensions::CardAuditResponse::AuthSource::TaggedSymbol
            )
          end
          attr_accessor :auth_source

          # The timestamp indicating when the change occurred.
          sig { returns(Integer) }
          attr_accessor :changed_at

          # The ID of the user who initiated the action.
          sig { returns(Integer) }
          attr_accessor :initiating_user_id

          # The ID of the card.
          sig { returns(Integer) }
          attr_accessor :object_type_id

          sig do
            params(
              action_type:
                HubspotSDK::Crm::Extensions::CardAuditResponse::ActionType::OrSymbol,
              application_id: Integer,
              auth_source:
                HubspotSDK::Crm::Extensions::CardAuditResponse::AuthSource::OrSymbol,
              changed_at: Integer,
              initiating_user_id: Integer,
              object_type_id: Integer
            ).returns(T.attached_class)
          end
          def self.new(
            # The type of action performed, with possible values: CREATE, DELETE, UPDATE.
            action_type:,
            # The ID of the application associated with the card.
            application_id:,
            # The source of authentication for the action, with possible values: APP,
            # EXTERNAL, INTERNAL.
            auth_source:,
            # The timestamp indicating when the change occurred.
            changed_at:,
            # The ID of the user who initiated the action.
            initiating_user_id:,
            # The ID of the card.
            object_type_id:
          )
          end

          sig do
            override.returns(
              {
                action_type:
                  HubspotSDK::Crm::Extensions::CardAuditResponse::ActionType::TaggedSymbol,
                application_id: Integer,
                auth_source:
                  HubspotSDK::Crm::Extensions::CardAuditResponse::AuthSource::TaggedSymbol,
                changed_at: Integer,
                initiating_user_id: Integer,
                object_type_id: Integer
              }
            )
          end
          def to_hash
          end

          # The type of action performed, with possible values: CREATE, DELETE, UPDATE.
          module ActionType
            extend HubspotSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  HubspotSDK::Crm::Extensions::CardAuditResponse::ActionType
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            CREATE =
              T.let(
                :CREATE,
                HubspotSDK::Crm::Extensions::CardAuditResponse::ActionType::TaggedSymbol
              )
            DELETE =
              T.let(
                :DELETE,
                HubspotSDK::Crm::Extensions::CardAuditResponse::ActionType::TaggedSymbol
              )
            UPDATE =
              T.let(
                :UPDATE,
                HubspotSDK::Crm::Extensions::CardAuditResponse::ActionType::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  HubspotSDK::Crm::Extensions::CardAuditResponse::ActionType::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          # The source of authentication for the action, with possible values: APP,
          # EXTERNAL, INTERNAL.
          module AuthSource
            extend HubspotSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  HubspotSDK::Crm::Extensions::CardAuditResponse::AuthSource
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            APP =
              T.let(
                :APP,
                HubspotSDK::Crm::Extensions::CardAuditResponse::AuthSource::TaggedSymbol
              )
            EXTERNAL =
              T.let(
                :EXTERNAL,
                HubspotSDK::Crm::Extensions::CardAuditResponse::AuthSource::TaggedSymbol
              )
            INTERNAL =
              T.let(
                :INTERNAL,
                HubspotSDK::Crm::Extensions::CardAuditResponse::AuthSource::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  HubspotSDK::Crm::Extensions::CardAuditResponse::AuthSource::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end
      end
    end
  end
end
