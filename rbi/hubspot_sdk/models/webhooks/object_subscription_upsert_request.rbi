# typed: strong

module HubspotSDK
  module Models
    module Webhooks
      class ObjectSubscriptionUpsertRequest < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Webhooks::ObjectSubscriptionUpsertRequest,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig do
          returns(
            T::Array[
              HubspotSDK::Webhooks::ObjectSubscriptionUpsertRequest::Action::OrSymbol
            ]
          )
        end
        attr_accessor :actions

        sig { returns(T::Array[Integer]) }
        attr_accessor :object_ids

        sig { returns(String) }
        attr_accessor :object_type_id

        sig { returns(Integer) }
        attr_accessor :portal_id

        sig { returns(T::Array[String]) }
        attr_accessor :properties

        sig do
          returns(
            HubspotSDK::Webhooks::ObjectSubscriptionUpsertRequest::SubscriptionType::OrSymbol
          )
        end
        attr_accessor :subscription_type

        sig do
          params(
            actions:
              T::Array[
                HubspotSDK::Webhooks::ObjectSubscriptionUpsertRequest::Action::OrSymbol
              ],
            object_ids: T::Array[Integer],
            object_type_id: String,
            portal_id: Integer,
            properties: T::Array[String],
            subscription_type:
              HubspotSDK::Webhooks::ObjectSubscriptionUpsertRequest::SubscriptionType::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          actions:,
          object_ids:,
          object_type_id:,
          portal_id:,
          properties:,
          subscription_type:
        )
        end

        sig do
          override.returns(
            {
              actions:
                T::Array[
                  HubspotSDK::Webhooks::ObjectSubscriptionUpsertRequest::Action::OrSymbol
                ],
              object_ids: T::Array[Integer],
              object_type_id: String,
              portal_id: Integer,
              properties: T::Array[String],
              subscription_type:
                HubspotSDK::Webhooks::ObjectSubscriptionUpsertRequest::SubscriptionType::OrSymbol
            }
          )
        end
        def to_hash
        end

        module Action
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubspotSDK::Webhooks::ObjectSubscriptionUpsertRequest::Action
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CREATE =
            T.let(
              :CREATE,
              HubspotSDK::Webhooks::ObjectSubscriptionUpsertRequest::Action::TaggedSymbol
            )
          UPDATE =
            T.let(
              :UPDATE,
              HubspotSDK::Webhooks::ObjectSubscriptionUpsertRequest::Action::TaggedSymbol
            )
          DELETE =
            T.let(
              :DELETE,
              HubspotSDK::Webhooks::ObjectSubscriptionUpsertRequest::Action::TaggedSymbol
            )
          MERGE =
            T.let(
              :MERGE,
              HubspotSDK::Webhooks::ObjectSubscriptionUpsertRequest::Action::TaggedSymbol
            )
          RESTORE =
            T.let(
              :RESTORE,
              HubspotSDK::Webhooks::ObjectSubscriptionUpsertRequest::Action::TaggedSymbol
            )
          ASSOCIATION_ADDED =
            T.let(
              :ASSOCIATION_ADDED,
              HubspotSDK::Webhooks::ObjectSubscriptionUpsertRequest::Action::TaggedSymbol
            )
          ASSOCIATION_REMOVED =
            T.let(
              :ASSOCIATION_REMOVED,
              HubspotSDK::Webhooks::ObjectSubscriptionUpsertRequest::Action::TaggedSymbol
            )
          SNAPSHOT =
            T.let(
              :SNAPSHOT,
              HubspotSDK::Webhooks::ObjectSubscriptionUpsertRequest::Action::TaggedSymbol
            )
          APP_INSTALL =
            T.let(
              :APP_INSTALL,
              HubspotSDK::Webhooks::ObjectSubscriptionUpsertRequest::Action::TaggedSymbol
            )
          APP_UNINSTALL =
            T.let(
              :APP_UNINSTALL,
              HubspotSDK::Webhooks::ObjectSubscriptionUpsertRequest::Action::TaggedSymbol
            )
          ADDED_TO_LIST =
            T.let(
              :ADDED_TO_LIST,
              HubspotSDK::Webhooks::ObjectSubscriptionUpsertRequest::Action::TaggedSymbol
            )
          REMOVED_FROM_LIST =
            T.let(
              :REMOVED_FROM_LIST,
              HubspotSDK::Webhooks::ObjectSubscriptionUpsertRequest::Action::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Webhooks::ObjectSubscriptionUpsertRequest::Action::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        module SubscriptionType
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubspotSDK::Webhooks::ObjectSubscriptionUpsertRequest::SubscriptionType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          OBJECT =
            T.let(
              :OBJECT,
              HubspotSDK::Webhooks::ObjectSubscriptionUpsertRequest::SubscriptionType::TaggedSymbol
            )
          ASSOCIATION =
            T.let(
              :ASSOCIATION,
              HubspotSDK::Webhooks::ObjectSubscriptionUpsertRequest::SubscriptionType::TaggedSymbol
            )
          EVENT =
            T.let(
              :EVENT,
              HubspotSDK::Webhooks::ObjectSubscriptionUpsertRequest::SubscriptionType::TaggedSymbol
            )
          APP_LIFECYCLE_EVENT =
            T.let(
              :APP_LIFECYCLE_EVENT,
              HubspotSDK::Webhooks::ObjectSubscriptionUpsertRequest::SubscriptionType::TaggedSymbol
            )
          LIST_MEMBERSHIP =
            T.let(
              :LIST_MEMBERSHIP,
              HubspotSDK::Webhooks::ObjectSubscriptionUpsertRequest::SubscriptionType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Webhooks::ObjectSubscriptionUpsertRequest::SubscriptionType::TaggedSymbol
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
