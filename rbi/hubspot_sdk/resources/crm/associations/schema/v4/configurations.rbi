# typed: strong

module HubspotSDK
  module Resources
    class CRM
      class Associations
        class Schema
          class V4
            class Configurations
              # Returns all user configurations available on a given portal
              sig do
                params(
                  request_options: HubspotSDK::RequestOptions::OrHash
                ).returns(
                  HubspotSDK::CRM::Associations::Schema::CollectionResponsePublicAssociationDefinitionUserConfigurationNoPaging
                )
              end
              def list(request_options: {})
              end

              # Batch create user configurations between two object types
              sig do
                params(
                  to_object_type: String,
                  from_object_type: String,
                  inputs:
                    T::Array[
                      HubspotSDK::CRM::Associations::Schema::PublicAssociationDefinitionConfigurationCreateRequest::OrHash
                    ],
                  request_options: HubspotSDK::RequestOptions::OrHash
                ).returns(
                  HubspotSDK::CRM::Associations::Schema::BatchResponsePublicAssociationDefinitionUserConfiguration
                )
              end
              def batch_create_by_object_types(
                # Path param:
                to_object_type,
                # Path param:
                from_object_type:,
                # Body param:
                inputs:,
                request_options: {}
              )
              end

              # Batch delete user configurations between two object types
              sig do
                params(
                  to_object_type: String,
                  from_object_type: String,
                  inputs:
                    T::Array[
                      HubspotSDK::CRM::Associations::Schema::PublicAssociationSpec::OrHash
                    ],
                  request_options: HubspotSDK::RequestOptions::OrHash
                ).void
              end
              def batch_delete_by_object_types(
                # Path param:
                to_object_type,
                # Path param:
                from_object_type:,
                # Body param:
                inputs:,
                request_options: {}
              )
              end

              # Batch update user configurations between two object types
              sig do
                params(
                  to_object_type: String,
                  from_object_type: String,
                  inputs:
                    T::Array[
                      HubspotSDK::CRM::Associations::Schema::PublicAssociationDefinitionConfigurationUpdateRequest::OrHash
                    ],
                  request_options: HubspotSDK::RequestOptions::OrHash
                ).returns(
                  HubspotSDK::CRM::Associations::Schema::BatchResponsePublicAssociationDefinitionConfigurationUpdateResult
                )
              end
              def batch_update_by_object_types(
                # Path param:
                to_object_type,
                # Path param:
                from_object_type:,
                # Body param:
                inputs:,
                request_options: {}
              )
              end

              # Returns user configurations on all association definitions between two object
              # types
              sig do
                params(
                  to_object_type: String,
                  from_object_type: String,
                  request_options: HubspotSDK::RequestOptions::OrHash
                ).returns(
                  HubspotSDK::CRM::Associations::Schema::CollectionResponsePublicAssociationDefinitionUserConfigurationNoPaging
                )
              end
              def get_by_object_types(
                to_object_type,
                from_object_type:,
                request_options: {}
              )
              end

              # @api private
              sig do
                params(client: HubspotSDK::Client).returns(T.attached_class)
              end
              def self.new(client:)
              end
            end
          end
        end
      end
    end
  end
end
