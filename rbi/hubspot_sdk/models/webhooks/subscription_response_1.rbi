# typed: strong

module HubSpotSDK
  module Models
    module Webhooks
      class SubscriptionResponse1 < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Webhooks::SubscriptionResponse1,
              HubSpotSDK::Internal::AnyHash
            )
          end

        # The unique ID of the webhook subscription.
        sig { returns(Integer) }
        attr_accessor :id

        sig do
          returns(
            T::Array[
              HubSpotSDK::Webhooks::SubscriptionResponse1::Action::TaggedSymbol
            ]
          )
        end
        attr_accessor :actions

        sig { returns(Integer) }
        attr_accessor :app_id

        # The timestamp when the webhook subscription was created, in ISO 8601 format
        # (e.g., 2020-02-29T12:30:00Z).
        sig { returns(Time) }
        attr_accessor :created_at

        # The ID of the object type for the subscription. This can be a standard CRM
        # object (e.g., 'contact', 'company', 'deal') or a custom object ID for custom
        # object subscriptions.
        sig { returns(String) }
        attr_accessor :object_type_id

        sig do
          returns(
            HubSpotSDK::Webhooks::SubscriptionResponse1::SubscriptionType::TaggedSymbol
          )
        end
        attr_accessor :subscription_type

        # The timestamp when the webhook subscription was last updated, in ISO 8601 format
        # (e.g., 2020-02-29T12:30:00Z).
        sig { returns(Time) }
        attr_accessor :updated_at

        sig do
          returns(
            T.nilable(
              T::Hash[Symbol, HubSpotSDK::Webhooks::ActionOverrideRequest]
            )
          )
        end
        attr_reader :action_overrides

        sig do
          params(
            action_overrides:
              T::Hash[
                Symbol,
                HubSpotSDK::Webhooks::ActionOverrideRequest::OrHash
              ]
          ).void
        end
        attr_writer :action_overrides

        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :associated_object_type_ids

        sig { params(associated_object_type_ids: T::Array[String]).void }
        attr_writer :associated_object_type_ids

        sig { returns(T.nilable(Integer)) }
        attr_reader :created_by

        sig { params(created_by: Integer).void }
        attr_writer :created_by

        sig { returns(T.nilable(Time)) }
        attr_reader :deleted_at

        sig { params(deleted_at: Time).void }
        attr_writer :deleted_at

        sig { returns(T.nilable(T::Array[Integer])) }
        attr_reader :list_ids

        sig { params(list_ids: T::Array[Integer]).void }
        attr_writer :list_ids

        sig { returns(T.nilable(T::Array[Integer])) }
        attr_reader :object_ids

        sig { params(object_ids: T::Array[Integer]).void }
        attr_writer :object_ids

        sig { returns(T.nilable(Integer)) }
        attr_reader :portal_id

        sig { params(portal_id: Integer).void }
        attr_writer :portal_id

        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :properties

        sig { params(properties: T::Array[String]).void }
        attr_writer :properties

        sig do
          params(
            id: Integer,
            actions:
              T::Array[
                HubSpotSDK::Webhooks::SubscriptionResponse1::Action::OrSymbol
              ],
            app_id: Integer,
            created_at: Time,
            object_type_id: String,
            subscription_type:
              HubSpotSDK::Webhooks::SubscriptionResponse1::SubscriptionType::OrSymbol,
            updated_at: Time,
            action_overrides:
              T::Hash[
                Symbol,
                HubSpotSDK::Webhooks::ActionOverrideRequest::OrHash
              ],
            associated_object_type_ids: T::Array[String],
            created_by: Integer,
            deleted_at: Time,
            list_ids: T::Array[Integer],
            object_ids: T::Array[Integer],
            portal_id: Integer,
            properties: T::Array[String]
          ).returns(T.attached_class)
        end
        def self.new(
          # The unique ID of the webhook subscription.
          id:,
          actions:,
          app_id:,
          # The timestamp when the webhook subscription was created, in ISO 8601 format
          # (e.g., 2020-02-29T12:30:00Z).
          created_at:,
          # The ID of the object type for the subscription. This can be a standard CRM
          # object (e.g., 'contact', 'company', 'deal') or a custom object ID for custom
          # object subscriptions.
          object_type_id:,
          subscription_type:,
          # The timestamp when the webhook subscription was last updated, in ISO 8601 format
          # (e.g., 2020-02-29T12:30:00Z).
          updated_at:,
          action_overrides: nil,
          associated_object_type_ids: nil,
          created_by: nil,
          deleted_at: nil,
          list_ids: nil,
          object_ids: nil,
          portal_id: nil,
          properties: nil
        )
        end

        sig do
          override.returns(
            {
              id: Integer,
              actions:
                T::Array[
                  HubSpotSDK::Webhooks::SubscriptionResponse1::Action::TaggedSymbol
                ],
              app_id: Integer,
              created_at: Time,
              object_type_id: String,
              subscription_type:
                HubSpotSDK::Webhooks::SubscriptionResponse1::SubscriptionType::TaggedSymbol,
              updated_at: Time,
              action_overrides:
                T::Hash[Symbol, HubSpotSDK::Webhooks::ActionOverrideRequest],
              associated_object_type_ids: T::Array[String],
              created_by: Integer,
              deleted_at: Time,
              list_ids: T::Array[Integer],
              object_ids: T::Array[Integer],
              portal_id: Integer,
              properties: T::Array[String]
            }
          )
        end
        def to_hash
        end

        module Action
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubSpotSDK::Webhooks::SubscriptionResponse1::Action)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CREATE =
            T.let(
              :CREATE,
              HubSpotSDK::Webhooks::SubscriptionResponse1::Action::TaggedSymbol
            )
          UPDATE =
            T.let(
              :UPDATE,
              HubSpotSDK::Webhooks::SubscriptionResponse1::Action::TaggedSymbol
            )
          DELETE =
            T.let(
              :DELETE,
              HubSpotSDK::Webhooks::SubscriptionResponse1::Action::TaggedSymbol
            )
          MERGE =
            T.let(
              :MERGE,
              HubSpotSDK::Webhooks::SubscriptionResponse1::Action::TaggedSymbol
            )
          RESTORE =
            T.let(
              :RESTORE,
              HubSpotSDK::Webhooks::SubscriptionResponse1::Action::TaggedSymbol
            )
          ASSOCIATION_ADDED =
            T.let(
              :ASSOCIATION_ADDED,
              HubSpotSDK::Webhooks::SubscriptionResponse1::Action::TaggedSymbol
            )
          ASSOCIATION_REMOVED =
            T.let(
              :ASSOCIATION_REMOVED,
              HubSpotSDK::Webhooks::SubscriptionResponse1::Action::TaggedSymbol
            )
          SNAPSHOT =
            T.let(
              :SNAPSHOT,
              HubSpotSDK::Webhooks::SubscriptionResponse1::Action::TaggedSymbol
            )
          APP_INSTALL =
            T.let(
              :APP_INSTALL,
              HubSpotSDK::Webhooks::SubscriptionResponse1::Action::TaggedSymbol
            )
          APP_UNINSTALL =
            T.let(
              :APP_UNINSTALL,
              HubSpotSDK::Webhooks::SubscriptionResponse1::Action::TaggedSymbol
            )
          ADDED_TO_LIST =
            T.let(
              :ADDED_TO_LIST,
              HubSpotSDK::Webhooks::SubscriptionResponse1::Action::TaggedSymbol
            )
          REMOVED_FROM_LIST =
            T.let(
              :REMOVED_FROM_LIST,
              HubSpotSDK::Webhooks::SubscriptionResponse1::Action::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Webhooks::SubscriptionResponse1::Action::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        module SubscriptionType
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubSpotSDK::Webhooks::SubscriptionResponse1::SubscriptionType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          APP_LIFECYCLE_EVENT =
            T.let(
              :APP_LIFECYCLE_EVENT,
              HubSpotSDK::Webhooks::SubscriptionResponse1::SubscriptionType::TaggedSymbol
            )
          ASSOCIATION =
            T.let(
              :ASSOCIATION,
              HubSpotSDK::Webhooks::SubscriptionResponse1::SubscriptionType::TaggedSymbol
            )
          EVENT =
            T.let(
              :EVENT,
              HubSpotSDK::Webhooks::SubscriptionResponse1::SubscriptionType::TaggedSymbol
            )
          LIST_MEMBERSHIP =
            T.let(
              :LIST_MEMBERSHIP,
              HubSpotSDK::Webhooks::SubscriptionResponse1::SubscriptionType::TaggedSymbol
            )
          OBJECT =
            T.let(
              :OBJECT,
              HubSpotSDK::Webhooks::SubscriptionResponse1::SubscriptionType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Webhooks::SubscriptionResponse1::SubscriptionType::TaggedSymbol
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
