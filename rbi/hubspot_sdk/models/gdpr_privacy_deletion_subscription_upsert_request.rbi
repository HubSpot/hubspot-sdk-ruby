# typed: strong

module HubSpotSDK
  module Models
    class GdprPrivacyDeletionSubscriptionUpsertRequest < HubSpotSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            HubSpotSDK::GdprPrivacyDeletionSubscriptionUpsertRequest,
            HubSpotSDK::Internal::AnyHash
          )
        end

      sig do
        returns(
          T::Array[
            HubSpotSDK::GdprPrivacyDeletionSubscriptionUpsertRequest::Action::OrSymbol
          ]
        )
      end
      attr_accessor :actions

      sig { returns(String) }
      attr_accessor :object_type_id

      sig { returns(Integer) }
      attr_accessor :portal_id

      sig do
        returns(
          HubSpotSDK::GdprPrivacyDeletionSubscriptionUpsertRequest::SubscriptionType::OrSymbol
        )
      end
      attr_accessor :subscription_type

      sig do
        params(
          actions:
            T::Array[
              HubSpotSDK::GdprPrivacyDeletionSubscriptionUpsertRequest::Action::OrSymbol
            ],
          object_type_id: String,
          portal_id: Integer,
          subscription_type:
            HubSpotSDK::GdprPrivacyDeletionSubscriptionUpsertRequest::SubscriptionType::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(actions:, object_type_id:, portal_id:, subscription_type:)
      end

      sig do
        override.returns(
          {
            actions:
              T::Array[
                HubSpotSDK::GdprPrivacyDeletionSubscriptionUpsertRequest::Action::OrSymbol
              ],
            object_type_id: String,
            portal_id: Integer,
            subscription_type:
              HubSpotSDK::GdprPrivacyDeletionSubscriptionUpsertRequest::SubscriptionType::OrSymbol
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
              HubSpotSDK::GdprPrivacyDeletionSubscriptionUpsertRequest::Action
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CREATE =
          T.let(
            :CREATE,
            HubSpotSDK::GdprPrivacyDeletionSubscriptionUpsertRequest::Action::TaggedSymbol
          )
        UPDATE =
          T.let(
            :UPDATE,
            HubSpotSDK::GdprPrivacyDeletionSubscriptionUpsertRequest::Action::TaggedSymbol
          )
        DELETE =
          T.let(
            :DELETE,
            HubSpotSDK::GdprPrivacyDeletionSubscriptionUpsertRequest::Action::TaggedSymbol
          )
        MERGE =
          T.let(
            :MERGE,
            HubSpotSDK::GdprPrivacyDeletionSubscriptionUpsertRequest::Action::TaggedSymbol
          )
        RESTORE =
          T.let(
            :RESTORE,
            HubSpotSDK::GdprPrivacyDeletionSubscriptionUpsertRequest::Action::TaggedSymbol
          )
        ASSOCIATION_ADDED =
          T.let(
            :ASSOCIATION_ADDED,
            HubSpotSDK::GdprPrivacyDeletionSubscriptionUpsertRequest::Action::TaggedSymbol
          )
        ASSOCIATION_REMOVED =
          T.let(
            :ASSOCIATION_REMOVED,
            HubSpotSDK::GdprPrivacyDeletionSubscriptionUpsertRequest::Action::TaggedSymbol
          )
        SNAPSHOT =
          T.let(
            :SNAPSHOT,
            HubSpotSDK::GdprPrivacyDeletionSubscriptionUpsertRequest::Action::TaggedSymbol
          )
        APP_INSTALL =
          T.let(
            :APP_INSTALL,
            HubSpotSDK::GdprPrivacyDeletionSubscriptionUpsertRequest::Action::TaggedSymbol
          )
        APP_UNINSTALL =
          T.let(
            :APP_UNINSTALL,
            HubSpotSDK::GdprPrivacyDeletionSubscriptionUpsertRequest::Action::TaggedSymbol
          )
        ADDED_TO_LIST =
          T.let(
            :ADDED_TO_LIST,
            HubSpotSDK::GdprPrivacyDeletionSubscriptionUpsertRequest::Action::TaggedSymbol
          )
        REMOVED_FROM_LIST =
          T.let(
            :REMOVED_FROM_LIST,
            HubSpotSDK::GdprPrivacyDeletionSubscriptionUpsertRequest::Action::TaggedSymbol
          )
        GDPR_DELETE =
          T.let(
            :GDPR_DELETE,
            HubSpotSDK::GdprPrivacyDeletionSubscriptionUpsertRequest::Action::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              HubSpotSDK::GdprPrivacyDeletionSubscriptionUpsertRequest::Action::TaggedSymbol
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
              HubSpotSDK::GdprPrivacyDeletionSubscriptionUpsertRequest::SubscriptionType
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        GDPR_PRIVACY_DELETION =
          T.let(
            :GDPR_PRIVACY_DELETION,
            HubSpotSDK::GdprPrivacyDeletionSubscriptionUpsertRequest::SubscriptionType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              HubSpotSDK::GdprPrivacyDeletionSubscriptionUpsertRequest::SubscriptionType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
