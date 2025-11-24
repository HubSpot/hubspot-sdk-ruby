# typed: strong

module HubspotSDK
  module Models
    module Crm
      module Objects
        module Projects
          class AssociationDeleteParams < HubspotSDK::Internal::Type::BaseModel
            extend HubspotSDK::Internal::Type::RequestParameters::Converter
            include HubspotSDK::Internal::Type::RequestParameters

            OrHash =
              T.type_alias do
                T.any(
                  HubspotSDK::Crm::Objects::Projects::AssociationDeleteParams,
                  HubspotSDK::Internal::AnyHash
                )
              end

            sig { returns(String) }
            attr_accessor :project_id

            sig { returns(String) }
            attr_accessor :to_object_type

            sig { returns(String) }
            attr_accessor :to_object_id

            sig do
              params(
                project_id: String,
                to_object_type: String,
                to_object_id: String,
                request_options: HubspotSDK::RequestOptions::OrHash
              ).returns(T.attached_class)
            end
            def self.new(
              project_id:,
              to_object_type:,
              to_object_id:,
              request_options: {}
            )
            end

            sig do
              override.returns(
                {
                  project_id: String,
                  to_object_type: String,
                  to_object_id: String,
                  request_options: HubspotSDK::RequestOptions
                }
              )
            end
            def to_hash
            end
          end
        end
      end
    end
  end
end
