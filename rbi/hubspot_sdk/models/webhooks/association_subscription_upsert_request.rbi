# typed: strong

module HubSpotSDK
  module Models
    module Webhooks
      class AssociationSubscriptionUpsertRequest < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Webhooks::AssociationSubscriptionUpsertRequest,
              HubSpotSDK::Internal::AnyHash
            )
          end

        sig do
          returns(
            T::Array[
              HubSpotSDK::Webhooks::AssociationSubscriptionUpsertRequest::Action::OrSymbol
            ]
          )
        end
        attr_accessor :actions

        sig { returns(T::Array[String]) }
        attr_accessor :associated_object_type_ids

        sig { returns(T::Array[Integer]) }
        attr_accessor :object_ids

        sig { returns(String) }
        attr_accessor :object_type_id

        sig { returns(Integer) }
        attr_accessor :portal_id

        sig do
          returns(
            HubSpotSDK::Webhooks::AssociationSubscriptionUpsertRequest::SubscriptionType::OrSymbol
          )
        end
        attr_accessor :subscription_type

        sig do
          params(
            actions:
              T::Array[
                HubSpotSDK::Webhooks::AssociationSubscriptionUpsertRequest::Action::OrSymbol
              ],
            associated_object_type_ids: T::Array[String],
            object_ids: T::Array[Integer],
            object_type_id: String,
            portal_id: Integer,
            subscription_type:
              HubSpotSDK::Webhooks::AssociationSubscriptionUpsertRequest::SubscriptionType::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          actions:,
          associated_object_type_ids:,
          object_ids:,
          object_type_id:,
          portal_id:,
          subscription_type:
        )
        end

        sig do
          override.returns(
            {
              actions:
                T::Array[
                  HubSpotSDK::Webhooks::AssociationSubscriptionUpsertRequest::Action::OrSymbol
                ],
              associated_object_type_ids: T::Array[String],
              object_ids: T::Array[Integer],
              object_type_id: String,
              portal_id: Integer,
              subscription_type:
                HubSpotSDK::Webhooks::AssociationSubscriptionUpsertRequest::SubscriptionType::OrSymbol
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
                HubSpotSDK::Webhooks::AssociationSubscriptionUpsertRequest::Action
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CREATE =
            T.let(
              :CREATE,
              HubSpotSDK::Webhooks::AssociationSubscriptionUpsertRequest::Action::TaggedSymbol
            )
          UPDATE =
            T.let(
              :UPDATE,
              HubSpotSDK::Webhooks::AssociationSubscriptionUpsertRequest::Action::TaggedSymbol
            )
          DELETE =
            T.let(
              :DELETE,
              HubSpotSDK::Webhooks::AssociationSubscriptionUpsertRequest::Action::TaggedSymbol
            )
          MERGE =
            T.let(
              :MERGE,
              HubSpotSDK::Webhooks::AssociationSubscriptionUpsertRequest::Action::TaggedSymbol
            )
          RESTORE =
            T.let(
              :RESTORE,
              HubSpotSDK::Webhooks::AssociationSubscriptionUpsertRequest::Action::TaggedSymbol
            )
          ASSOCIATION_ADDED =
            T.let(
              :ASSOCIATION_ADDED,
              HubSpotSDK::Webhooks::AssociationSubscriptionUpsertRequest::Action::TaggedSymbol
            )
          ASSOCIATION_REMOVED =
            T.let(
              :ASSOCIATION_REMOVED,
              HubSpotSDK::Webhooks::AssociationSubscriptionUpsertRequest::Action::TaggedSymbol
            )
          SNAPSHOT =
            T.let(
              :SNAPSHOT,
              HubSpotSDK::Webhooks::AssociationSubscriptionUpsertRequest::Action::TaggedSymbol
            )
          APP_INSTALL =
            T.let(
              :APP_INSTALL,
              HubSpotSDK::Webhooks::AssociationSubscriptionUpsertRequest::Action::TaggedSymbol
            )
          APP_UNINSTALL =
            T.let(
              :APP_UNINSTALL,
              HubSpotSDK::Webhooks::AssociationSubscriptionUpsertRequest::Action::TaggedSymbol
            )
          ADDED_TO_LIST =
            T.let(
              :ADDED_TO_LIST,
              HubSpotSDK::Webhooks::AssociationSubscriptionUpsertRequest::Action::TaggedSymbol
            )
          REMOVED_FROM_LIST =
            T.let(
              :REMOVED_FROM_LIST,
              HubSpotSDK::Webhooks::AssociationSubscriptionUpsertRequest::Action::TaggedSymbol
            )
          GDPR_DELETE =
            T.let(
              :GDPR_DELETE,
              HubSpotSDK::Webhooks::AssociationSubscriptionUpsertRequest::Action::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Webhooks::AssociationSubscriptionUpsertRequest::Action::TaggedSymbol
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
                HubSpotSDK::Webhooks::AssociationSubscriptionUpsertRequest::SubscriptionType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          OBJECT =
            T.let(
              :OBJECT,
              HubSpotSDK::Webhooks::AssociationSubscriptionUpsertRequest::SubscriptionType::TaggedSymbol
            )
          ASSOCIATION =
            T.let(
              :ASSOCIATION,
              HubSpotSDK::Webhooks::AssociationSubscriptionUpsertRequest::SubscriptionType::TaggedSymbol
            )
          EVENT =
            T.let(
              :EVENT,
              HubSpotSDK::Webhooks::AssociationSubscriptionUpsertRequest::SubscriptionType::TaggedSymbol
            )
          APP_LIFECYCLE_EVENT =
            T.let(
              :APP_LIFECYCLE_EVENT,
              HubSpotSDK::Webhooks::AssociationSubscriptionUpsertRequest::SubscriptionType::TaggedSymbol
            )
          LIST_MEMBERSHIP =
            T.let(
              :LIST_MEMBERSHIP,
              HubSpotSDK::Webhooks::AssociationSubscriptionUpsertRequest::SubscriptionType::TaggedSymbol
            )
          GDPR_PRIVACY_DELETION =
            T.let(
              :GDPR_PRIVACY_DELETION,
              HubSpotSDK::Webhooks::AssociationSubscriptionUpsertRequest::SubscriptionType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Webhooks::AssociationSubscriptionUpsertRequest::SubscriptionType::TaggedSymbol
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
