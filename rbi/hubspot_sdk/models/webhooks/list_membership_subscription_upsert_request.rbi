# typed: strong

module HubSpotSDK
  module Models
    module Webhooks
      class ListMembershipSubscriptionUpsertRequest < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Webhooks::ListMembershipSubscriptionUpsertRequest,
              HubSpotSDK::Internal::AnyHash
            )
          end

        sig do
          returns(
            T::Array[
              HubSpotSDK::Webhooks::ListMembershipSubscriptionUpsertRequest::Action::OrSymbol
            ]
          )
        end
        attr_accessor :actions

        sig { returns(T::Array[Integer]) }
        attr_accessor :list_ids

        sig { returns(T::Array[Integer]) }
        attr_accessor :object_ids

        sig { returns(Integer) }
        attr_accessor :portal_id

        sig do
          returns(
            HubSpotSDK::Webhooks::ListMembershipSubscriptionUpsertRequest::SubscriptionType::OrSymbol
          )
        end
        attr_accessor :subscription_type

        sig do
          params(
            actions:
              T::Array[
                HubSpotSDK::Webhooks::ListMembershipSubscriptionUpsertRequest::Action::OrSymbol
              ],
            list_ids: T::Array[Integer],
            object_ids: T::Array[Integer],
            portal_id: Integer,
            subscription_type:
              HubSpotSDK::Webhooks::ListMembershipSubscriptionUpsertRequest::SubscriptionType::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          actions:,
          list_ids:,
          object_ids:,
          portal_id:,
          subscription_type:
        )
        end

        sig do
          override.returns(
            {
              actions:
                T::Array[
                  HubSpotSDK::Webhooks::ListMembershipSubscriptionUpsertRequest::Action::OrSymbol
                ],
              list_ids: T::Array[Integer],
              object_ids: T::Array[Integer],
              portal_id: Integer,
              subscription_type:
                HubSpotSDK::Webhooks::ListMembershipSubscriptionUpsertRequest::SubscriptionType::OrSymbol
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
                HubSpotSDK::Webhooks::ListMembershipSubscriptionUpsertRequest::Action
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CREATE =
            T.let(
              :CREATE,
              HubSpotSDK::Webhooks::ListMembershipSubscriptionUpsertRequest::Action::TaggedSymbol
            )
          UPDATE =
            T.let(
              :UPDATE,
              HubSpotSDK::Webhooks::ListMembershipSubscriptionUpsertRequest::Action::TaggedSymbol
            )
          DELETE =
            T.let(
              :DELETE,
              HubSpotSDK::Webhooks::ListMembershipSubscriptionUpsertRequest::Action::TaggedSymbol
            )
          MERGE =
            T.let(
              :MERGE,
              HubSpotSDK::Webhooks::ListMembershipSubscriptionUpsertRequest::Action::TaggedSymbol
            )
          RESTORE =
            T.let(
              :RESTORE,
              HubSpotSDK::Webhooks::ListMembershipSubscriptionUpsertRequest::Action::TaggedSymbol
            )
          ASSOCIATION_ADDED =
            T.let(
              :ASSOCIATION_ADDED,
              HubSpotSDK::Webhooks::ListMembershipSubscriptionUpsertRequest::Action::TaggedSymbol
            )
          ASSOCIATION_REMOVED =
            T.let(
              :ASSOCIATION_REMOVED,
              HubSpotSDK::Webhooks::ListMembershipSubscriptionUpsertRequest::Action::TaggedSymbol
            )
          SNAPSHOT =
            T.let(
              :SNAPSHOT,
              HubSpotSDK::Webhooks::ListMembershipSubscriptionUpsertRequest::Action::TaggedSymbol
            )
          APP_INSTALL =
            T.let(
              :APP_INSTALL,
              HubSpotSDK::Webhooks::ListMembershipSubscriptionUpsertRequest::Action::TaggedSymbol
            )
          APP_UNINSTALL =
            T.let(
              :APP_UNINSTALL,
              HubSpotSDK::Webhooks::ListMembershipSubscriptionUpsertRequest::Action::TaggedSymbol
            )
          ADDED_TO_LIST =
            T.let(
              :ADDED_TO_LIST,
              HubSpotSDK::Webhooks::ListMembershipSubscriptionUpsertRequest::Action::TaggedSymbol
            )
          REMOVED_FROM_LIST =
            T.let(
              :REMOVED_FROM_LIST,
              HubSpotSDK::Webhooks::ListMembershipSubscriptionUpsertRequest::Action::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Webhooks::ListMembershipSubscriptionUpsertRequest::Action::TaggedSymbol
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
                HubSpotSDK::Webhooks::ListMembershipSubscriptionUpsertRequest::SubscriptionType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          OBJECT =
            T.let(
              :OBJECT,
              HubSpotSDK::Webhooks::ListMembershipSubscriptionUpsertRequest::SubscriptionType::TaggedSymbol
            )
          ASSOCIATION =
            T.let(
              :ASSOCIATION,
              HubSpotSDK::Webhooks::ListMembershipSubscriptionUpsertRequest::SubscriptionType::TaggedSymbol
            )
          EVENT =
            T.let(
              :EVENT,
              HubSpotSDK::Webhooks::ListMembershipSubscriptionUpsertRequest::SubscriptionType::TaggedSymbol
            )
          APP_LIFECYCLE_EVENT =
            T.let(
              :APP_LIFECYCLE_EVENT,
              HubSpotSDK::Webhooks::ListMembershipSubscriptionUpsertRequest::SubscriptionType::TaggedSymbol
            )
          LIST_MEMBERSHIP =
            T.let(
              :LIST_MEMBERSHIP,
              HubSpotSDK::Webhooks::ListMembershipSubscriptionUpsertRequest::SubscriptionType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Webhooks::ListMembershipSubscriptionUpsertRequest::SubscriptionType::TaggedSymbol
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
