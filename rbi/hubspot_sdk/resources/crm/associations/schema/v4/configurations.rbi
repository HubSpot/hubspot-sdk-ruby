# typed: strong

module HubspotSDK
  module Resources
    class Crm
      class Associations
        class Schema
          class V4
            class Configurations
              sig do
                params(
                  request_options: HubspotSDK::RequestOptions::OrHash
                ).returns(
                  HubspotSDK::Crm::Associations::Schema::CollectionResponsePublicAssociationDefinitionUserConfiguration
                )
              end
              def list(request_options: {})
              end

              sig do
                params(
                  to_object_type: String,
                  from_object_type: String,
                  inputs:
                    T::Array[
                      HubspotSDK::Crm::Associations::Schema::PublicAssociationDefinitionConfigurationCreateRequest::OrHash
                    ],
                  request_options: HubspotSDK::RequestOptions::OrHash
                ).returns(
                  HubspotSDK::Crm::Associations::Schema::BatchResponsePublicAssociationDefinitionUserConfiguration
                )
              end
              def batch_create(
                # Path param:
                to_object_type,
                # Path param:
                from_object_type:,
                # Body param:
                inputs:,
                request_options: {}
              )
              end

              sig do
                params(
                  to_object_type: String,
                  from_object_type: String,
                  inputs:
                    T::Array[
                      HubspotSDK::Crm::Associations::Schema::PublicAssociationSpec::OrHash
                    ],
                  request_options: HubspotSDK::RequestOptions::OrHash
                ).returns(HubspotSDK::Crm::BatchResponseVoid)
              end
              def batch_delete(
                # Path param:
                to_object_type,
                # Path param:
                from_object_type:,
                # Body param:
                inputs:,
                request_options: {}
              )
              end

              sig do
                params(
                  to_object_type: String,
                  from_object_type: String,
                  inputs:
                    T::Array[
                      HubspotSDK::Crm::Associations::Schema::PublicAssociationDefinitionConfigurationUpdateRequest::OrHash
                    ],
                  request_options: HubspotSDK::RequestOptions::OrHash
                ).returns(
                  HubspotSDK::Crm::Associations::Schema::BatchResponsePublicAssociationDefinitionConfigurationUpdateResult
                )
              end
              def batch_update(
                # Path param:
                to_object_type,
                # Path param:
                from_object_type:,
                # Body param:
                inputs:,
                request_options: {}
              )
              end

              sig do
                params(
                  to_object_type: String,
                  from_object_type: String,
                  request_options: HubspotSDK::RequestOptions::OrHash
                ).returns(
                  HubspotSDK::Crm::Associations::Schema::CollectionResponsePublicAssociationDefinitionUserConfiguration
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
