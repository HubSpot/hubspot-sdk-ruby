# typed: strong

module HubSpotSDK
  module Models
    module WebhooksJournal
      class SubscriptionResponse < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::WebhooksJournal::SubscriptionResponse,
              HubSpotSDK::Internal::AnyHash
            )
          end

        # The unique identifier for the subscription, represented as an integer.
        sig { returns(Integer) }
        attr_accessor :id

        # An array of actions associated with the subscription. Valid actions include
        # 'CREATE', 'UPDATE', 'DELETE', 'MERGE', 'RESTORE', 'ASSOCIATION_ADDED',
        # 'ASSOCIATION_REMOVED', 'SNAPSHOT', 'APP_INSTALL', 'APP_UNINSTALL',
        # 'ADDED_TO_LIST', 'REMOVED_FROM_LIST', and 'GDPR_DELETE'.
        sig do
          returns(
            T::Array[
              HubSpotSDK::WebhooksJournal::SubscriptionResponse::Action::TaggedSymbol
            ]
          )
        end
        attr_accessor :actions

        # The unique identifier for the app associated with the subscription, represented
        # as an integer.
        sig { returns(Integer) }
        attr_accessor :app_id

        # The date and time when the subscription was created, in ISO 8601 format.
        sig { returns(Time) }
        attr_accessor :created_at

        # The identifier for the type of object associated with the subscription,
        # represented as a string.
        sig { returns(String) }
        attr_accessor :object_type_id

        # The type of subscription, indicating the nature of events it pertains to. Valid
        # values include 'OBJECT', 'ASSOCIATION', 'EVENT', 'APP_LIFECYCLE_EVENT',
        # 'LIST_MEMBERSHIP', and 'GDPR_PRIVACY_DELETION'.
        sig do
          returns(
            HubSpotSDK::WebhooksJournal::SubscriptionResponse::SubscriptionType::TaggedSymbol
          )
        end
        attr_accessor :subscription_type

        # The date and time when the subscription was last updated, in ISO 8601 format.
        sig { returns(Time) }
        attr_accessor :updated_at

        # An object containing overrides for actions, where each key is an action and the
        # value is an ActionOverrideRequest object.
        sig do
          returns(T.nilable(T::Hash[Symbol, HubSpotSDK::ActionOverrideRequest]))
        end
        attr_reader :action_overrides

        sig do
          params(
            action_overrides:
              T::Hash[Symbol, HubSpotSDK::ActionOverrideRequest::OrHash]
          ).void
        end
        attr_writer :action_overrides

        # An array of strings representing the IDs of associated object types.
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :associated_object_type_ids

        sig { params(associated_object_type_ids: T::Array[String]).void }
        attr_writer :associated_object_type_ids

        # The unique identifier of the user who created the subscription, represented as
        # an integer.
        sig { returns(T.nilable(Integer)) }
        attr_reader :created_by

        sig { params(created_by: Integer).void }
        attr_writer :created_by

        # The date and time when the subscription was deleted, in ISO 8601 format, if
        # applicable.
        sig { returns(T.nilable(Time)) }
        attr_reader :deleted_at

        sig { params(deleted_at: Time).void }
        attr_writer :deleted_at

        # An array of integers representing the IDs of lists associated with the
        # subscription.
        sig { returns(T.nilable(T::Array[Integer])) }
        attr_reader :list_ids

        sig { params(list_ids: T::Array[Integer]).void }
        attr_writer :list_ids

        # An array of integers representing the IDs of objects associated with the
        # subscription.
        sig { returns(T.nilable(T::Array[Integer])) }
        attr_reader :object_ids

        sig { params(object_ids: T::Array[Integer]).void }
        attr_writer :object_ids

        # The unique identifier for the portal associated with the subscription,
        # represented as an integer.
        sig { returns(T.nilable(Integer)) }
        attr_reader :portal_id

        sig { params(portal_id: Integer).void }
        attr_writer :portal_id

        # An array of strings representing the properties associated with the
        # subscription.
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :properties

        sig { params(properties: T::Array[String]).void }
        attr_writer :properties

        sig do
          params(
            id: Integer,
            actions:
              T::Array[
                HubSpotSDK::WebhooksJournal::SubscriptionResponse::Action::OrSymbol
              ],
            app_id: Integer,
            created_at: Time,
            object_type_id: String,
            subscription_type:
              HubSpotSDK::WebhooksJournal::SubscriptionResponse::SubscriptionType::OrSymbol,
            updated_at: Time,
            action_overrides:
              T::Hash[Symbol, HubSpotSDK::ActionOverrideRequest::OrHash],
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
          # The unique identifier for the subscription, represented as an integer.
          id:,
          # An array of actions associated with the subscription. Valid actions include
          # 'CREATE', 'UPDATE', 'DELETE', 'MERGE', 'RESTORE', 'ASSOCIATION_ADDED',
          # 'ASSOCIATION_REMOVED', 'SNAPSHOT', 'APP_INSTALL', 'APP_UNINSTALL',
          # 'ADDED_TO_LIST', 'REMOVED_FROM_LIST', and 'GDPR_DELETE'.
          actions:,
          # The unique identifier for the app associated with the subscription, represented
          # as an integer.
          app_id:,
          # The date and time when the subscription was created, in ISO 8601 format.
          created_at:,
          # The identifier for the type of object associated with the subscription,
          # represented as a string.
          object_type_id:,
          # The type of subscription, indicating the nature of events it pertains to. Valid
          # values include 'OBJECT', 'ASSOCIATION', 'EVENT', 'APP_LIFECYCLE_EVENT',
          # 'LIST_MEMBERSHIP', and 'GDPR_PRIVACY_DELETION'.
          subscription_type:,
          # The date and time when the subscription was last updated, in ISO 8601 format.
          updated_at:,
          # An object containing overrides for actions, where each key is an action and the
          # value is an ActionOverrideRequest object.
          action_overrides: nil,
          # An array of strings representing the IDs of associated object types.
          associated_object_type_ids: nil,
          # The unique identifier of the user who created the subscription, represented as
          # an integer.
          created_by: nil,
          # The date and time when the subscription was deleted, in ISO 8601 format, if
          # applicable.
          deleted_at: nil,
          # An array of integers representing the IDs of lists associated with the
          # subscription.
          list_ids: nil,
          # An array of integers representing the IDs of objects associated with the
          # subscription.
          object_ids: nil,
          # The unique identifier for the portal associated with the subscription,
          # represented as an integer.
          portal_id: nil,
          # An array of strings representing the properties associated with the
          # subscription.
          properties: nil
        )
        end

        sig do
          override.returns(
            {
              id: Integer,
              actions:
                T::Array[
                  HubSpotSDK::WebhooksJournal::SubscriptionResponse::Action::TaggedSymbol
                ],
              app_id: Integer,
              created_at: Time,
              object_type_id: String,
              subscription_type:
                HubSpotSDK::WebhooksJournal::SubscriptionResponse::SubscriptionType::TaggedSymbol,
              updated_at: Time,
              action_overrides:
                T::Hash[Symbol, HubSpotSDK::ActionOverrideRequest],
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
              T.all(
                Symbol,
                HubSpotSDK::WebhooksJournal::SubscriptionResponse::Action
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CREATE =
            T.let(
              :CREATE,
              HubSpotSDK::WebhooksJournal::SubscriptionResponse::Action::TaggedSymbol
            )
          UPDATE =
            T.let(
              :UPDATE,
              HubSpotSDK::WebhooksJournal::SubscriptionResponse::Action::TaggedSymbol
            )
          DELETE =
            T.let(
              :DELETE,
              HubSpotSDK::WebhooksJournal::SubscriptionResponse::Action::TaggedSymbol
            )
          MERGE =
            T.let(
              :MERGE,
              HubSpotSDK::WebhooksJournal::SubscriptionResponse::Action::TaggedSymbol
            )
          RESTORE =
            T.let(
              :RESTORE,
              HubSpotSDK::WebhooksJournal::SubscriptionResponse::Action::TaggedSymbol
            )
          ASSOCIATION_ADDED =
            T.let(
              :ASSOCIATION_ADDED,
              HubSpotSDK::WebhooksJournal::SubscriptionResponse::Action::TaggedSymbol
            )
          ASSOCIATION_REMOVED =
            T.let(
              :ASSOCIATION_REMOVED,
              HubSpotSDK::WebhooksJournal::SubscriptionResponse::Action::TaggedSymbol
            )
          SNAPSHOT =
            T.let(
              :SNAPSHOT,
              HubSpotSDK::WebhooksJournal::SubscriptionResponse::Action::TaggedSymbol
            )
          APP_INSTALL =
            T.let(
              :APP_INSTALL,
              HubSpotSDK::WebhooksJournal::SubscriptionResponse::Action::TaggedSymbol
            )
          APP_UNINSTALL =
            T.let(
              :APP_UNINSTALL,
              HubSpotSDK::WebhooksJournal::SubscriptionResponse::Action::TaggedSymbol
            )
          ADDED_TO_LIST =
            T.let(
              :ADDED_TO_LIST,
              HubSpotSDK::WebhooksJournal::SubscriptionResponse::Action::TaggedSymbol
            )
          REMOVED_FROM_LIST =
            T.let(
              :REMOVED_FROM_LIST,
              HubSpotSDK::WebhooksJournal::SubscriptionResponse::Action::TaggedSymbol
            )
          GDPR_DELETE =
            T.let(
              :GDPR_DELETE,
              HubSpotSDK::WebhooksJournal::SubscriptionResponse::Action::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::WebhooksJournal::SubscriptionResponse::Action::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # The type of subscription, indicating the nature of events it pertains to. Valid
        # values include 'OBJECT', 'ASSOCIATION', 'EVENT', 'APP_LIFECYCLE_EVENT',
        # 'LIST_MEMBERSHIP', and 'GDPR_PRIVACY_DELETION'.
        module SubscriptionType
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubSpotSDK::WebhooksJournal::SubscriptionResponse::SubscriptionType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          APP_LIFECYCLE_EVENT =
            T.let(
              :APP_LIFECYCLE_EVENT,
              HubSpotSDK::WebhooksJournal::SubscriptionResponse::SubscriptionType::TaggedSymbol
            )
          ASSOCIATION =
            T.let(
              :ASSOCIATION,
              HubSpotSDK::WebhooksJournal::SubscriptionResponse::SubscriptionType::TaggedSymbol
            )
          EVENT =
            T.let(
              :EVENT,
              HubSpotSDK::WebhooksJournal::SubscriptionResponse::SubscriptionType::TaggedSymbol
            )
          GDPR_PRIVACY_DELETION =
            T.let(
              :GDPR_PRIVACY_DELETION,
              HubSpotSDK::WebhooksJournal::SubscriptionResponse::SubscriptionType::TaggedSymbol
            )
          LIST_MEMBERSHIP =
            T.let(
              :LIST_MEMBERSHIP,
              HubSpotSDK::WebhooksJournal::SubscriptionResponse::SubscriptionType::TaggedSymbol
            )
          OBJECT =
            T.let(
              :OBJECT,
              HubSpotSDK::WebhooksJournal::SubscriptionResponse::SubscriptionType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::WebhooksJournal::SubscriptionResponse::SubscriptionType::TaggedSymbol
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
