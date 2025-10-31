# typed: strong

module HubspotSDK
  module Resources
    class CRM
      class Associations
        class Schema
          class V4
            class Definitions
              # Create a user defined association definition
              sig do
                params(
                  to_object_type: String,
                  from_object_type: String,
                  label: String,
                  name: String,
                  inverse_label: String,
                  request_options: HubspotSDK::RequestOptions::OrHash
                ).returns(
                  HubspotSDK::CRM::Associations::Schema::CollectionResponseAssociationSpecWithLabelNoPaging
                )
              end
              def create(
                # Path param:
                to_object_type,
                # Path param:
                from_object_type:,
                # Body param:
                label:,
                # Body param:
                name:,
                # Body param:
                inverse_label: nil,
                request_options: {}
              )
              end

              # Update a user defined association definition
              sig do
                params(
                  to_object_type: String,
                  from_object_type: String,
                  association_type_id: Integer,
                  label: String,
                  inverse_label: String,
                  request_options: HubspotSDK::RequestOptions::OrHash
                ).void
              end
              def update(
                # Path param:
                to_object_type,
                # Path param:
                from_object_type:,
                # Body param:
                association_type_id:,
                # Body param:
                label:,
                # Body param:
                inverse_label: nil,
                request_options: {}
              )
              end

              # Returns all association types between two object types
              sig do
                params(
                  to_object_type: String,
                  from_object_type: String,
                  request_options: HubspotSDK::RequestOptions::OrHash
                ).returns(
                  HubspotSDK::CRM::Associations::Schema::CollectionResponseAssociationSpecWithLabelNoPaging
                )
              end
              def list(to_object_type, from_object_type:, request_options: {})
              end

              # Deletes an association definition
              sig do
                params(
                  association_type_id: Integer,
                  from_object_type: String,
                  to_object_type: String,
                  request_options: HubspotSDK::RequestOptions::OrHash
                ).void
              end
              def delete(
                association_type_id,
                from_object_type:,
                to_object_type:,
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
