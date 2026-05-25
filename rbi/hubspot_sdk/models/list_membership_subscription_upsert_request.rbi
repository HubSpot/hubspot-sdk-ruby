# typed: strong

module HubSpotSDK
  module Models
    class ListMembershipSubscriptionUpsertRequest < HubSpotSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            HubSpotSDK::ListMembershipSubscriptionUpsertRequest,
            HubSpotSDK::Internal::AnyHash
          )
        end

      sig do
        returns(
          T::Array[
            HubSpotSDK::ListMembershipSubscriptionUpsertRequest::Action::OrSymbol
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
          HubSpotSDK::ListMembershipSubscriptionUpsertRequest::SubscriptionType::OrSymbol
        )
      end
      attr_accessor :subscription_type

      sig do
        params(
          actions:
            T::Array[
              HubSpotSDK::ListMembershipSubscriptionUpsertRequest::Action::OrSymbol
            ],
          list_ids: T::Array[Integer],
          object_ids: T::Array[Integer],
          portal_id: Integer,
          subscription_type:
            HubSpotSDK::ListMembershipSubscriptionUpsertRequest::SubscriptionType::OrSymbol
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
                HubSpotSDK::ListMembershipSubscriptionUpsertRequest::Action::OrSymbol
              ],
            list_ids: T::Array[Integer],
            object_ids: T::Array[Integer],
            portal_id: Integer,
            subscription_type:
              HubSpotSDK::ListMembershipSubscriptionUpsertRequest::SubscriptionType::OrSymbol
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
              HubSpotSDK::ListMembershipSubscriptionUpsertRequest::Action
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CREATE =
          T.let(
            :CREATE,
            HubSpotSDK::ListMembershipSubscriptionUpsertRequest::Action::TaggedSymbol
          )
        UPDATE =
          T.let(
            :UPDATE,
            HubSpotSDK::ListMembershipSubscriptionUpsertRequest::Action::TaggedSymbol
          )
        DELETE =
          T.let(
            :DELETE,
            HubSpotSDK::ListMembershipSubscriptionUpsertRequest::Action::TaggedSymbol
          )
        MERGE =
          T.let(
            :MERGE,
            HubSpotSDK::ListMembershipSubscriptionUpsertRequest::Action::TaggedSymbol
          )
        RESTORE =
          T.let(
            :RESTORE,
            HubSpotSDK::ListMembershipSubscriptionUpsertRequest::Action::TaggedSymbol
          )
        ASSOCIATION_ADDED =
          T.let(
            :ASSOCIATION_ADDED,
            HubSpotSDK::ListMembershipSubscriptionUpsertRequest::Action::TaggedSymbol
          )
        ASSOCIATION_REMOVED =
          T.let(
            :ASSOCIATION_REMOVED,
            HubSpotSDK::ListMembershipSubscriptionUpsertRequest::Action::TaggedSymbol
          )
        SNAPSHOT =
          T.let(
            :SNAPSHOT,
            HubSpotSDK::ListMembershipSubscriptionUpsertRequest::Action::TaggedSymbol
          )
        APP_INSTALL =
          T.let(
            :APP_INSTALL,
            HubSpotSDK::ListMembershipSubscriptionUpsertRequest::Action::TaggedSymbol
          )
        APP_UNINSTALL =
          T.let(
            :APP_UNINSTALL,
            HubSpotSDK::ListMembershipSubscriptionUpsertRequest::Action::TaggedSymbol
          )
        ADDED_TO_LIST =
          T.let(
            :ADDED_TO_LIST,
            HubSpotSDK::ListMembershipSubscriptionUpsertRequest::Action::TaggedSymbol
          )
        REMOVED_FROM_LIST =
          T.let(
            :REMOVED_FROM_LIST,
            HubSpotSDK::ListMembershipSubscriptionUpsertRequest::Action::TaggedSymbol
          )
        GDPR_DELETE =
          T.let(
            :GDPR_DELETE,
            HubSpotSDK::ListMembershipSubscriptionUpsertRequest::Action::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              HubSpotSDK::ListMembershipSubscriptionUpsertRequest::Action::TaggedSymbol
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
              HubSpotSDK::ListMembershipSubscriptionUpsertRequest::SubscriptionType
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        LIST_MEMBERSHIP =
          T.let(
            :LIST_MEMBERSHIP,
            HubSpotSDK::ListMembershipSubscriptionUpsertRequest::SubscriptionType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              HubSpotSDK::ListMembershipSubscriptionUpsertRequest::SubscriptionType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
