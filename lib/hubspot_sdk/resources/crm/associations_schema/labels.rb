# frozen_string_literal: true

module HubspotSDK
  module Resources
    class Crm
      class AssociationsSchema
        class Labels
          # Batch configure association limits between two object types.
          #
          # @overload batch_create(to_object_type, from_object_type:, inputs:, request_options: {})
          #
          # @param to_object_type [String] Path param
          #
          # @param from_object_type [String] Path param
          #
          # @param inputs [Array<HubspotSDK::Models::Crm::PublicAssociationDefinitionConfigurationCreateRequest>] Body param
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Crm::BatchResponsePublicAssociationDefinitionUserConfiguration]
          #
          # @see HubspotSDK::Models::Crm::AssociationsSchema::LabelBatchCreateParams
          def batch_create(to_object_type, params)
            parsed, options = HubspotSDK::Crm::AssociationsSchema::LabelBatchCreateParams.dump_request(params)
            from_object_type =
              parsed.delete(:from_object_type) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :post,
              path: [
                "crm/associations/2026-03/definitions/configurations/%1$s/%2$s/batch/create",
                from_object_type,
                to_object_type
              ],
              body: parsed,
              model: HubspotSDK::Crm::BatchResponsePublicAssociationDefinitionUserConfiguration,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {HubspotSDK::Models::Crm::AssociationsSchema::LabelCreateLabelParams} for more
          # details.
          #
          # Create a new label that describes the relationship between two specified CRM
          # object types. This can help in categorizing and managing associations more
          # effectively.
          #
          # @overload create_label(to_object_type, from_object_type:, label:, name:, inverse_label: nil, request_options: {})
          #
          # @param to_object_type [String] Path param
          #
          # @param from_object_type [String] Path param
          #
          # @param label [String] Body param: A descriptor that provides context about the relationship between tw
          #
          # @param name [String] Body param: The unique identifier for the association definition.
          #
          # @param inverse_label [String] Body param: An optional descriptor that clarifies the reverse relationship in th
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Crm::CollectionResponseAssociationSpecWithLabelNoPaging]
          #
          # @see HubspotSDK::Models::Crm::AssociationsSchema::LabelCreateLabelParams
          def create_label(to_object_type, params)
            parsed, options = HubspotSDK::Crm::AssociationsSchema::LabelCreateLabelParams.dump_request(params)
            from_object_type =
              parsed.delete(:from_object_type) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :post,
              path: ["crm/associations/2026-03/%1$s/%2$s/labels", from_object_type, to_object_type],
              body: parsed,
              model: HubspotSDK::Crm::CollectionResponseAssociationSpecWithLabelNoPaging,
              options: options
            )
          end

          # Remove a specific label from the association between two CRM object types.
          #
          # @overload delete_label(association_type_id, from_object_type:, to_object_type:, request_options: {})
          #
          # @param association_type_id [Integer]
          # @param from_object_type [String]
          # @param to_object_type [String]
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [nil]
          #
          # @see HubspotSDK::Models::Crm::AssociationsSchema::LabelDeleteLabelParams
          def delete_label(association_type_id, params)
            parsed, options = HubspotSDK::Crm::AssociationsSchema::LabelDeleteLabelParams.dump_request(params)
            from_object_type =
              parsed.delete(:from_object_type) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            to_object_type =
              parsed.delete(:to_object_type) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :delete,
              path: [
                "crm/associations/2026-03/%1$s/%2$s/labels/%3$s",
                from_object_type,
                to_object_type,
                association_type_id
              ],
              model: NilClass,
              options: options
            )
          end

          # Retrieve all labels that describe the relationships between two specified CRM
          # object types. These labels provide context about the nature of the associations.
          #
          # @overload list_labels(to_object_type, from_object_type:, request_options: {})
          #
          # @param to_object_type [String]
          # @param from_object_type [String]
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Crm::CollectionResponseAssociationSpecWithLabelNoPaging]
          #
          # @see HubspotSDK::Models::Crm::AssociationsSchema::LabelListLabelsParams
          def list_labels(to_object_type, params)
            parsed, options = HubspotSDK::Crm::AssociationsSchema::LabelListLabelsParams.dump_request(params)
            from_object_type =
              parsed.delete(:from_object_type) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :get,
              path: ["crm/associations/2026-03/%1$s/%2$s/labels", from_object_type, to_object_type],
              model: HubspotSDK::Crm::CollectionResponseAssociationSpecWithLabelNoPaging,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {HubspotSDK::Models::Crm::AssociationsSchema::LabelUpdateLabelParams} for more
          # details.
          #
          # Update an existing label that describes the relationship between two specified
          # CRM object types. This allows for modifications to existing association labels
          # to better reflect the nature of the relationship.
          #
          # @overload update_label(to_object_type, from_object_type:, association_type_id:, label:, inverse_label: nil, request_options: {})
          #
          # @param to_object_type [String] Path param
          #
          # @param from_object_type [String] Path param
          #
          # @param association_type_id [Integer] Body param: The unique identifier for the association type.
          #
          # @param label [String] Body param: A descriptor that provides context about the relationship between as
          #
          # @param inverse_label [String] Body param: An optional descriptor for the inverse relationship between associat
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [nil]
          #
          # @see HubspotSDK::Models::Crm::AssociationsSchema::LabelUpdateLabelParams
          def update_label(to_object_type, params)
            parsed, options = HubspotSDK::Crm::AssociationsSchema::LabelUpdateLabelParams.dump_request(params)
            from_object_type =
              parsed.delete(:from_object_type) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :put,
              path: ["crm/associations/2026-03/%1$s/%2$s/labels", from_object_type, to_object_type],
              body: parsed,
              model: NilClass,
              options: options
            )
          end

          # @api private
          #
          # @param client [HubspotSDK::Client]
          def initialize(client:)
            @client = client
          end
        end
      end
    end
  end
end
