# typed: strong

module HubSpotSDK
  module Models
    module Crm
      class PublicObjectList < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Crm::PublicObjectList,
              HubSpotSDK::Internal::AnyHash
            )
          end

        # The **ILS ID** of the list.
        sig { returns(String) }
        attr_accessor :list_id

        # The version of the list.
        sig { returns(Integer) }
        attr_accessor :list_version

        # The name of the list.
        sig { returns(String) }
        attr_accessor :name

        # The object type of the list.
        sig { returns(String) }
        attr_accessor :object_type_id

        # The processing status of the list.
        sig { returns(String) }
        attr_accessor :processing_status

        # The processing type of the list.
        sig { returns(String) }
        attr_accessor :processing_type

        # The time when the list was created.
        sig { returns(T.nilable(Time)) }
        attr_reader :created_at

        sig { params(created_at: Time).void }
        attr_writer :created_at

        # The ID of the user that created the list.
        sig { returns(T.nilable(String)) }
        attr_reader :created_by_id

        sig { params(created_by_id: String).void }
        attr_writer :created_by_id

        # The time when the list was deleted.
        sig { returns(T.nilable(Time)) }
        attr_reader :deleted_at

        sig { params(deleted_at: Time).void }
        attr_writer :deleted_at

        # Defines the filter criteria for the list, allowing for complex logical
        # operations and nested filter branches to determine list membership.
        sig do
          returns(
            T.nilable(HubSpotSDK::Crm::PublicObjectList::FilterBranch::Variants)
          )
        end
        attr_reader :filter_branch

        sig do
          params(
            filter_branch:
              T.any(
                HubSpotSDK::Crm::PublicOrFilterBranch::OrHash,
                HubSpotSDK::Crm::PublicAndFilterBranch::OrHash,
                HubSpotSDK::Crm::PublicNotAllFilterBranch::OrHash,
                HubSpotSDK::Crm::PublicNotAnyFilterBranch::OrHash,
                HubSpotSDK::Crm::PublicRestrictedFilterBranch::OrHash,
                HubSpotSDK::Crm::PublicUnifiedEventsFilterBranch::OrHash,
                HubSpotSDK::Crm::PublicPropertyAssociationFilterBranch::OrHash,
                HubSpotSDK::Crm::PublicAssociationFilterBranch::OrHash
              )
          ).void
        end
        attr_writer :filter_branch

        # The time when the filters for this list were last updated.
        sig { returns(T.nilable(Time)) }
        attr_reader :filters_updated_at

        sig { params(filters_updated_at: Time).void }
        attr_writer :filters_updated_at

        sig { returns(T.nilable(HubSpotSDK::Crm::PublicListPermissions)) }
        attr_reader :list_permissions

        sig do
          params(
            list_permissions: HubSpotSDK::Crm::PublicListPermissions::OrHash
          ).void
        end
        attr_writer :list_permissions

        sig { returns(T.nilable(HubSpotSDK::Crm::PublicMembershipSettings)) }
        attr_reader :membership_settings

        sig do
          params(
            membership_settings:
              HubSpotSDK::Crm::PublicMembershipSettings::OrHash
          ).void
        end
        attr_writer :membership_settings

        # Size of the list
        sig { returns(T.nilable(Integer)) }
        attr_reader :size

        sig { params(size: Integer).void }
        attr_writer :size

        # The time the list was last updated.
        sig { returns(T.nilable(Time)) }
        attr_reader :updated_at

        sig { params(updated_at: Time).void }
        attr_writer :updated_at

        # The ID of the user that last updated the list.
        sig { returns(T.nilable(String)) }
        attr_reader :updated_by_id

        sig { params(updated_by_id: String).void }
        attr_writer :updated_by_id

        sig do
          params(
            list_id: String,
            list_version: Integer,
            name: String,
            object_type_id: String,
            processing_status: String,
            processing_type: String,
            created_at: Time,
            created_by_id: String,
            deleted_at: Time,
            filter_branch:
              T.any(
                HubSpotSDK::Crm::PublicOrFilterBranch::OrHash,
                HubSpotSDK::Crm::PublicAndFilterBranch::OrHash,
                HubSpotSDK::Crm::PublicNotAllFilterBranch::OrHash,
                HubSpotSDK::Crm::PublicNotAnyFilterBranch::OrHash,
                HubSpotSDK::Crm::PublicRestrictedFilterBranch::OrHash,
                HubSpotSDK::Crm::PublicUnifiedEventsFilterBranch::OrHash,
                HubSpotSDK::Crm::PublicPropertyAssociationFilterBranch::OrHash,
                HubSpotSDK::Crm::PublicAssociationFilterBranch::OrHash
              ),
            filters_updated_at: Time,
            list_permissions: HubSpotSDK::Crm::PublicListPermissions::OrHash,
            membership_settings:
              HubSpotSDK::Crm::PublicMembershipSettings::OrHash,
            size: Integer,
            updated_at: Time,
            updated_by_id: String
          ).returns(T.attached_class)
        end
        def self.new(
          # The **ILS ID** of the list.
          list_id:,
          # The version of the list.
          list_version:,
          # The name of the list.
          name:,
          # The object type of the list.
          object_type_id:,
          # The processing status of the list.
          processing_status:,
          # The processing type of the list.
          processing_type:,
          # The time when the list was created.
          created_at: nil,
          # The ID of the user that created the list.
          created_by_id: nil,
          # The time when the list was deleted.
          deleted_at: nil,
          # Defines the filter criteria for the list, allowing for complex logical
          # operations and nested filter branches to determine list membership.
          filter_branch: nil,
          # The time when the filters for this list were last updated.
          filters_updated_at: nil,
          list_permissions: nil,
          membership_settings: nil,
          # Size of the list
          size: nil,
          # The time the list was last updated.
          updated_at: nil,
          # The ID of the user that last updated the list.
          updated_by_id: nil
        )
        end

        sig do
          override.returns(
            {
              list_id: String,
              list_version: Integer,
              name: String,
              object_type_id: String,
              processing_status: String,
              processing_type: String,
              created_at: Time,
              created_by_id: String,
              deleted_at: Time,
              filter_branch:
                HubSpotSDK::Crm::PublicObjectList::FilterBranch::Variants,
              filters_updated_at: Time,
              list_permissions: HubSpotSDK::Crm::PublicListPermissions,
              membership_settings: HubSpotSDK::Crm::PublicMembershipSettings,
              size: Integer,
              updated_at: Time,
              updated_by_id: String
            }
          )
        end
        def to_hash
        end

        # Defines the filter criteria for the list, allowing for complex logical
        # operations and nested filter branches to determine list membership.
        module FilterBranch
          extend HubSpotSDK::Internal::Type::Union

          Variants =
            T.type_alias do
              T.any(
                HubSpotSDK::Crm::PublicOrFilterBranch,
                HubSpotSDK::Crm::PublicAndFilterBranch,
                HubSpotSDK::Crm::PublicNotAllFilterBranch,
                HubSpotSDK::Crm::PublicNotAnyFilterBranch,
                HubSpotSDK::Crm::PublicRestrictedFilterBranch,
                HubSpotSDK::Crm::PublicUnifiedEventsFilterBranch,
                HubSpotSDK::Crm::PublicPropertyAssociationFilterBranch,
                HubSpotSDK::Crm::PublicAssociationFilterBranch
              )
            end

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Crm::PublicObjectList::FilterBranch::Variants
              ]
            )
          end
          def self.variants
          end
        end
      end
    end
  end
end
