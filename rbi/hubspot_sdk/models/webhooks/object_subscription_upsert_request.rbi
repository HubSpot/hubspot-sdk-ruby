# typed: strong

module HubSpotSDK
  module Models
    module Webhooks
      class ObjectSubscriptionUpsertRequest < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Webhooks::ObjectSubscriptionUpsertRequest,
              HubSpotSDK::Internal::AnyHash
            )
          end

        sig do
          returns(
            T::Array[
              HubSpotSDK::Webhooks::ObjectSubscriptionUpsertRequest::Action::OrSymbol
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
            HubSpotSDK::Webhooks::ObjectSubscriptionUpsertRequest::SubscriptionType::OrSymbol
          )
        end
        attr_accessor :subscription_type

        sig do
          params(
            actions:
              T::Array[
                HubSpotSDK::Webhooks::ObjectSubscriptionUpsertRequest::Action::OrSymbol
              ],
            object_ids: T::Array[Integer],
            object_type_id: String,
            portal_id: Integer,
            properties: T::Array[String],
            subscription_type:
              HubSpotSDK::Webhooks::ObjectSubscriptionUpsertRequest::SubscriptionType::OrSymbol
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
                  HubSpotSDK::Webhooks::ObjectSubscriptionUpsertRequest::Action::OrSymbol
                ],
              object_ids: T::Array[Integer],
              object_type_id: String,
              portal_id: Integer,
              properties: T::Array[String],
              subscription_type:
                HubSpotSDK::Webhooks::ObjectSubscriptionUpsertRequest::SubscriptionType::OrSymbol
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
                HubSpotSDK::Webhooks::ObjectSubscriptionUpsertRequest::Action
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CREATE =
            T.let(
              :CREATE,
              HubSpotSDK::Webhooks::ObjectSubscriptionUpsertRequest::Action::TaggedSymbol
            )
          UPDATE =
            T.let(
              :UPDATE,
              HubSpotSDK::Webhooks::ObjectSubscriptionUpsertRequest::Action::TaggedSymbol
            )
          DELETE =
            T.let(
              :DELETE,
              HubSpotSDK::Webhooks::ObjectSubscriptionUpsertRequest::Action::TaggedSymbol
            )
          MERGE =
            T.let(
              :MERGE,
              HubSpotSDK::Webhooks::ObjectSubscriptionUpsertRequest::Action::TaggedSymbol
            )
          RESTORE =
            T.let(
              :RESTORE,
              HubSpotSDK::Webhooks::ObjectSubscriptionUpsertRequest::Action::TaggedSymbol
            )
          ASSOCIATION_ADDED =
            T.let(
              :ASSOCIATION_ADDED,
              HubSpotSDK::Webhooks::ObjectSubscriptionUpsertRequest::Action::TaggedSymbol
            )
          ASSOCIATION_REMOVED =
            T.let(
              :ASSOCIATION_REMOVED,
              HubSpotSDK::Webhooks::ObjectSubscriptionUpsertRequest::Action::TaggedSymbol
            )
          SNAPSHOT =
            T.let(
              :SNAPSHOT,
              HubSpotSDK::Webhooks::ObjectSubscriptionUpsertRequest::Action::TaggedSymbol
            )
          APP_INSTALL =
            T.let(
              :APP_INSTALL,
              HubSpotSDK::Webhooks::ObjectSubscriptionUpsertRequest::Action::TaggedSymbol
            )
          APP_UNINSTALL =
            T.let(
              :APP_UNINSTALL,
              HubSpotSDK::Webhooks::ObjectSubscriptionUpsertRequest::Action::TaggedSymbol
            )
          ADDED_TO_LIST =
            T.let(
              :ADDED_TO_LIST,
              HubSpotSDK::Webhooks::ObjectSubscriptionUpsertRequest::Action::TaggedSymbol
            )
          REMOVED_FROM_LIST =
            T.let(
              :REMOVED_FROM_LIST,
              HubSpotSDK::Webhooks::ObjectSubscriptionUpsertRequest::Action::TaggedSymbol
            )
          GDPR_DELETE =
            T.let(
              :GDPR_DELETE,
              HubSpotSDK::Webhooks::ObjectSubscriptionUpsertRequest::Action::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Webhooks::ObjectSubscriptionUpsertRequest::Action::TaggedSymbol
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
                HubSpotSDK::Webhooks::ObjectSubscriptionUpsertRequest::SubscriptionType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          OBJECT =
            T.let(
              :OBJECT,
              HubSpotSDK::Webhooks::ObjectSubscriptionUpsertRequest::SubscriptionType::TaggedSymbol
            )
          ASSOCIATION =
            T.let(
              :ASSOCIATION,
              HubSpotSDK::Webhooks::ObjectSubscriptionUpsertRequest::SubscriptionType::TaggedSymbol
            )
          EVENT =
            T.let(
              :EVENT,
              HubSpotSDK::Webhooks::ObjectSubscriptionUpsertRequest::SubscriptionType::TaggedSymbol
            )
          APP_LIFECYCLE_EVENT =
            T.let(
              :APP_LIFECYCLE_EVENT,
              HubSpotSDK::Webhooks::ObjectSubscriptionUpsertRequest::SubscriptionType::TaggedSymbol
            )
          LIST_MEMBERSHIP =
            T.let(
              :LIST_MEMBERSHIP,
              HubSpotSDK::Webhooks::ObjectSubscriptionUpsertRequest::SubscriptionType::TaggedSymbol
            )
          GDPR_PRIVACY_DELETION =
            T.let(
              :GDPR_PRIVACY_DELETION,
              HubSpotSDK::Webhooks::ObjectSubscriptionUpsertRequest::SubscriptionType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Webhooks::ObjectSubscriptionUpsertRequest::SubscriptionType::TaggedSymbol
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
