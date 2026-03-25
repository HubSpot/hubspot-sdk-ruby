# typed: strong

module HubspotSDK
  module Models
    module Crm
      class ListCreateRequest < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Crm::ListCreateRequest,
              HubspotSDK::Internal::AnyHash
            )
          end

        # The name of the list, which must be globally unique across all public lists in
        # the portal.
        sig { returns(String) }
        attr_accessor :name

        # The object type ID of the type of objects that the list will store.
        sig { returns(String) }
        attr_accessor :object_type_id

        # The processing type of the list. One of: `SNAPSHOT`, `MANUAL`, or `DYNAMIC`.
        sig { returns(String) }
        attr_accessor :processing_type

        # The list of custom properties to tie to the list. Custom property name is the
        # key, the value is the value.
        sig { returns(T.nilable(T::Hash[Symbol, String])) }
        attr_reader :custom_properties

        sig { params(custom_properties: T::Hash[Symbol, String]).void }
        attr_writer :custom_properties

        # Filter branch object containing filtering criteria for the list
        sig do
          returns(
            T.nilable(
              T.any(
                HubspotSDK::Crm::PublicOrFilterBranch,
                HubspotSDK::Crm::PublicAndFilterBranch,
                HubspotSDK::Crm::PublicNotAllFilterBranch,
                HubspotSDK::Crm::PublicNotAnyFilterBranch,
                HubspotSDK::Crm::PublicRestrictedFilterBranch,
                HubspotSDK::Crm::PublicUnifiedEventsFilterBranch,
                HubspotSDK::Crm::PublicPropertyAssociationFilterBranch,
                HubspotSDK::Crm::PublicAssociationFilterBranch
              )
            )
          )
        end
        attr_reader :filter_branch

        sig do
          params(
            filter_branch:
              T.any(
                HubspotSDK::Crm::PublicOrFilterBranch::OrHash,
                HubspotSDK::Crm::PublicAndFilterBranch::OrHash,
                HubspotSDK::Crm::PublicNotAllFilterBranch::OrHash,
                HubspotSDK::Crm::PublicNotAnyFilterBranch::OrHash,
                HubspotSDK::Crm::PublicRestrictedFilterBranch::OrHash,
                HubspotSDK::Crm::PublicUnifiedEventsFilterBranch::OrHash,
                HubspotSDK::Crm::PublicPropertyAssociationFilterBranch::OrHash,
                HubspotSDK::Crm::PublicAssociationFilterBranch::OrHash
              )
          ).void
        end
        attr_writer :filter_branch

        # The ID of the folder that the list should be created in. If left blank, then the
        # list will be created in the root of the list folder structure.
        sig { returns(T.nilable(Integer)) }
        attr_reader :list_folder_id

        sig { params(list_folder_id: Integer).void }
        attr_writer :list_folder_id

        sig { returns(T.nilable(HubspotSDK::Crm::PublicListPermissions)) }
        attr_reader :list_permissions

        sig do
          params(
            list_permissions: HubspotSDK::Crm::PublicListPermissions::OrHash
          ).void
        end
        attr_writer :list_permissions

        sig { returns(T.nilable(HubspotSDK::Crm::PublicMembershipSettings)) }
        attr_reader :membership_settings

        sig do
          params(
            membership_settings:
              HubspotSDK::Crm::PublicMembershipSettings::OrHash
          ).void
        end
        attr_writer :membership_settings

        sig do
          params(
            name: String,
            object_type_id: String,
            processing_type: String,
            custom_properties: T::Hash[Symbol, String],
            filter_branch:
              T.any(
                HubspotSDK::Crm::PublicOrFilterBranch::OrHash,
                HubspotSDK::Crm::PublicAndFilterBranch::OrHash,
                HubspotSDK::Crm::PublicNotAllFilterBranch::OrHash,
                HubspotSDK::Crm::PublicNotAnyFilterBranch::OrHash,
                HubspotSDK::Crm::PublicRestrictedFilterBranch::OrHash,
                HubspotSDK::Crm::PublicUnifiedEventsFilterBranch::OrHash,
                HubspotSDK::Crm::PublicPropertyAssociationFilterBranch::OrHash,
                HubspotSDK::Crm::PublicAssociationFilterBranch::OrHash
              ),
            list_folder_id: Integer,
            list_permissions: HubspotSDK::Crm::PublicListPermissions::OrHash,
            membership_settings:
              HubspotSDK::Crm::PublicMembershipSettings::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # The name of the list, which must be globally unique across all public lists in
          # the portal.
          name:,
          # The object type ID of the type of objects that the list will store.
          object_type_id:,
          # The processing type of the list. One of: `SNAPSHOT`, `MANUAL`, or `DYNAMIC`.
          processing_type:,
          # The list of custom properties to tie to the list. Custom property name is the
          # key, the value is the value.
          custom_properties: nil,
          # Filter branch object containing filtering criteria for the list
          filter_branch: nil,
          # The ID of the folder that the list should be created in. If left blank, then the
          # list will be created in the root of the list folder structure.
          list_folder_id: nil,
          list_permissions: nil,
          membership_settings: nil
        )
        end

        sig do
          override.returns(
            {
              name: String,
              object_type_id: String,
              processing_type: String,
              custom_properties: T::Hash[Symbol, String],
              filter_branch:
                T.any(
                  HubspotSDK::Crm::PublicOrFilterBranch,
                  HubspotSDK::Crm::PublicAndFilterBranch,
                  HubspotSDK::Crm::PublicNotAllFilterBranch,
                  HubspotSDK::Crm::PublicNotAnyFilterBranch,
                  HubspotSDK::Crm::PublicRestrictedFilterBranch,
                  HubspotSDK::Crm::PublicUnifiedEventsFilterBranch,
                  HubspotSDK::Crm::PublicPropertyAssociationFilterBranch,
                  HubspotSDK::Crm::PublicAssociationFilterBranch
                ),
              list_folder_id: Integer,
              list_permissions: HubspotSDK::Crm::PublicListPermissions,
              membership_settings: HubspotSDK::Crm::PublicMembershipSettings
            }
          )
        end
        def to_hash
        end

        # Filter branch object containing filtering criteria for the list
        module FilterBranch
          extend HubspotSDK::Internal::Type::Union

          Variants =
            T.type_alias do
              T.any(
                HubspotSDK::Crm::PublicOrFilterBranch,
                HubspotSDK::Crm::PublicAndFilterBranch,
                HubspotSDK::Crm::PublicNotAllFilterBranch,
                HubspotSDK::Crm::PublicNotAnyFilterBranch,
                HubspotSDK::Crm::PublicRestrictedFilterBranch,
                HubspotSDK::Crm::PublicUnifiedEventsFilterBranch,
                HubspotSDK::Crm::PublicPropertyAssociationFilterBranch,
                HubspotSDK::Crm::PublicAssociationFilterBranch
              )
            end

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Crm::ListCreateRequest::FilterBranch::Variants
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
