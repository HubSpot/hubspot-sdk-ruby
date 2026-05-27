# typed: strong

module HubSpotSDK
  module Models
    class AssociationSubscriptionUpsertRequest < HubSpotSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            HubSpotSDK::AssociationSubscriptionUpsertRequest,
            HubSpotSDK::Internal::AnyHash
          )
        end

      sig do
        returns(
          T::Array[
            HubSpotSDK::AssociationSubscriptionUpsertRequest::Action::OrSymbol
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
          HubSpotSDK::AssociationSubscriptionUpsertRequest::SubscriptionType::OrSymbol
        )
      end
      attr_accessor :subscription_type

      sig do
        params(
          actions:
            T::Array[
              HubSpotSDK::AssociationSubscriptionUpsertRequest::Action::OrSymbol
            ],
          associated_object_type_ids: T::Array[String],
          object_ids: T::Array[Integer],
          object_type_id: String,
          portal_id: Integer,
          subscription_type:
            HubSpotSDK::AssociationSubscriptionUpsertRequest::SubscriptionType::OrSymbol
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
                HubSpotSDK::AssociationSubscriptionUpsertRequest::Action::OrSymbol
              ],
            associated_object_type_ids: T::Array[String],
            object_ids: T::Array[Integer],
            object_type_id: String,
            portal_id: Integer,
            subscription_type:
              HubSpotSDK::AssociationSubscriptionUpsertRequest::SubscriptionType::OrSymbol
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
              HubSpotSDK::AssociationSubscriptionUpsertRequest::Action
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CREATE =
          T.let(
            :CREATE,
            HubSpotSDK::AssociationSubscriptionUpsertRequest::Action::TaggedSymbol
          )
        UPDATE =
          T.let(
            :UPDATE,
            HubSpotSDK::AssociationSubscriptionUpsertRequest::Action::TaggedSymbol
          )
        DELETE =
          T.let(
            :DELETE,
            HubSpotSDK::AssociationSubscriptionUpsertRequest::Action::TaggedSymbol
          )
        MERGE =
          T.let(
            :MERGE,
            HubSpotSDK::AssociationSubscriptionUpsertRequest::Action::TaggedSymbol
          )
        RESTORE =
          T.let(
            :RESTORE,
            HubSpotSDK::AssociationSubscriptionUpsertRequest::Action::TaggedSymbol
          )
        ASSOCIATION_ADDED =
          T.let(
            :ASSOCIATION_ADDED,
            HubSpotSDK::AssociationSubscriptionUpsertRequest::Action::TaggedSymbol
          )
        ASSOCIATION_REMOVED =
          T.let(
            :ASSOCIATION_REMOVED,
            HubSpotSDK::AssociationSubscriptionUpsertRequest::Action::TaggedSymbol
          )
        SNAPSHOT =
          T.let(
            :SNAPSHOT,
            HubSpotSDK::AssociationSubscriptionUpsertRequest::Action::TaggedSymbol
          )
        APP_INSTALL =
          T.let(
            :APP_INSTALL,
            HubSpotSDK::AssociationSubscriptionUpsertRequest::Action::TaggedSymbol
          )
        APP_UNINSTALL =
          T.let(
            :APP_UNINSTALL,
            HubSpotSDK::AssociationSubscriptionUpsertRequest::Action::TaggedSymbol
          )
        ADDED_TO_LIST =
          T.let(
            :ADDED_TO_LIST,
            HubSpotSDK::AssociationSubscriptionUpsertRequest::Action::TaggedSymbol
          )
        REMOVED_FROM_LIST =
          T.let(
            :REMOVED_FROM_LIST,
            HubSpotSDK::AssociationSubscriptionUpsertRequest::Action::TaggedSymbol
          )
        GDPR_DELETE =
          T.let(
            :GDPR_DELETE,
            HubSpotSDK::AssociationSubscriptionUpsertRequest::Action::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              HubSpotSDK::AssociationSubscriptionUpsertRequest::Action::TaggedSymbol
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
              HubSpotSDK::AssociationSubscriptionUpsertRequest::SubscriptionType
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ASSOCIATION =
          T.let(
            :ASSOCIATION,
            HubSpotSDK::AssociationSubscriptionUpsertRequest::SubscriptionType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              HubSpotSDK::AssociationSubscriptionUpsertRequest::SubscriptionType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
