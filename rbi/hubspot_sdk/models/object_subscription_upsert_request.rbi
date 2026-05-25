# typed: strong

module HubSpotSDK
  module Models
    class ObjectSubscriptionUpsertRequest < HubSpotSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            HubSpotSDK::ObjectSubscriptionUpsertRequest,
            HubSpotSDK::Internal::AnyHash
          )
        end

      sig do
        returns(
          T::Array[
            HubSpotSDK::ObjectSubscriptionUpsertRequest::Action::OrSymbol
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
          HubSpotSDK::ObjectSubscriptionUpsertRequest::SubscriptionType::OrSymbol
        )
      end
      attr_accessor :subscription_type

      sig do
        params(
          actions:
            T::Array[
              HubSpotSDK::ObjectSubscriptionUpsertRequest::Action::OrSymbol
            ],
          object_ids: T::Array[Integer],
          object_type_id: String,
          portal_id: Integer,
          properties: T::Array[String],
          subscription_type:
            HubSpotSDK::ObjectSubscriptionUpsertRequest::SubscriptionType::OrSymbol
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
                HubSpotSDK::ObjectSubscriptionUpsertRequest::Action::OrSymbol
              ],
            object_ids: T::Array[Integer],
            object_type_id: String,
            portal_id: Integer,
            properties: T::Array[String],
            subscription_type:
              HubSpotSDK::ObjectSubscriptionUpsertRequest::SubscriptionType::OrSymbol
          }
        )
      end
      def to_hash
      end

      module Action
        extend HubSpotSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, HubSpotSDK::ObjectSubscriptionUpsertRequest::Action)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CREATE =
          T.let(
            :CREATE,
            HubSpotSDK::ObjectSubscriptionUpsertRequest::Action::TaggedSymbol
          )
        UPDATE =
          T.let(
            :UPDATE,
            HubSpotSDK::ObjectSubscriptionUpsertRequest::Action::TaggedSymbol
          )
        DELETE =
          T.let(
            :DELETE,
            HubSpotSDK::ObjectSubscriptionUpsertRequest::Action::TaggedSymbol
          )
        MERGE =
          T.let(
            :MERGE,
            HubSpotSDK::ObjectSubscriptionUpsertRequest::Action::TaggedSymbol
          )
        RESTORE =
          T.let(
            :RESTORE,
            HubSpotSDK::ObjectSubscriptionUpsertRequest::Action::TaggedSymbol
          )
        ASSOCIATION_ADDED =
          T.let(
            :ASSOCIATION_ADDED,
            HubSpotSDK::ObjectSubscriptionUpsertRequest::Action::TaggedSymbol
          )
        ASSOCIATION_REMOVED =
          T.let(
            :ASSOCIATION_REMOVED,
            HubSpotSDK::ObjectSubscriptionUpsertRequest::Action::TaggedSymbol
          )
        SNAPSHOT =
          T.let(
            :SNAPSHOT,
            HubSpotSDK::ObjectSubscriptionUpsertRequest::Action::TaggedSymbol
          )
        APP_INSTALL =
          T.let(
            :APP_INSTALL,
            HubSpotSDK::ObjectSubscriptionUpsertRequest::Action::TaggedSymbol
          )
        APP_UNINSTALL =
          T.let(
            :APP_UNINSTALL,
            HubSpotSDK::ObjectSubscriptionUpsertRequest::Action::TaggedSymbol
          )
        ADDED_TO_LIST =
          T.let(
            :ADDED_TO_LIST,
            HubSpotSDK::ObjectSubscriptionUpsertRequest::Action::TaggedSymbol
          )
        REMOVED_FROM_LIST =
          T.let(
            :REMOVED_FROM_LIST,
            HubSpotSDK::ObjectSubscriptionUpsertRequest::Action::TaggedSymbol
          )
        GDPR_DELETE =
          T.let(
            :GDPR_DELETE,
            HubSpotSDK::ObjectSubscriptionUpsertRequest::Action::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              HubSpotSDK::ObjectSubscriptionUpsertRequest::Action::TaggedSymbol
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
              HubSpotSDK::ObjectSubscriptionUpsertRequest::SubscriptionType
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        OBJECT =
          T.let(
            :OBJECT,
            HubSpotSDK::ObjectSubscriptionUpsertRequest::SubscriptionType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              HubSpotSDK::ObjectSubscriptionUpsertRequest::SubscriptionType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
