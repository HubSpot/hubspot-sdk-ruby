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

          sig do
            returns(
              HubspotSDK::Crm::Extensions::CardAuditResponse::ActionType::TaggedSymbol
            )
          end
          attr_accessor :action_type

          sig { returns(Integer) }
          attr_accessor :application_id

          sig do
            returns(
              HubspotSDK::Crm::Extensions::CardAuditResponse::AuthSource::TaggedSymbol
            )
          end
          attr_accessor :auth_source

          sig { returns(Integer) }
          attr_accessor :changed_at

          sig { returns(Integer) }
          attr_accessor :initiating_user_id

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
            action_type:,
            application_id:,
            auth_source:,
            changed_at:,
            initiating_user_id:,
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
