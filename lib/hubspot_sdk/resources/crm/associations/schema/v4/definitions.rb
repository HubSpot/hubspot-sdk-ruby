# frozen_string_literal: true

module HubspotSDK
  module Resources
    class Crm
      class Associations
        class Schema
          class V4
            class Definitions
              # @overload create_label(to_object_type, from_object_type:, label:, name:, inverse_label: nil, request_options: {})
              #
              # @param to_object_type [String] Path param
              #
              # @param from_object_type [String] Path param
              #
              # @param label [String] Body param
              #
              # @param name [String] Body param
              #
              # @param inverse_label [String] Body param
              #
              # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
              #
              # @return [HubspotSDK::Models::Crm::Associations::Schema::CollectionResponseAssociationSpecWithLabel]
              #
              # @see HubspotSDK::Models::Crm::Associations::Schema::V4::DefinitionCreateLabelParams
              def create_label(to_object_type, params)
                parsed, options =
                  HubspotSDK::Crm::Associations::Schema::V4::DefinitionCreateLabelParams.dump_request(params)
                from_object_type =
                  parsed.delete(:from_object_type) do
                    raise ArgumentError.new("missing required path argument #{_1}")
                  end
                @client.request(
                  method: :post,
                  path: ["crm/associations/v4/%1$s/%2$s/labels", from_object_type, to_object_type],
                  body: parsed,
                  model: HubspotSDK::Crm::Associations::Schema::CollectionResponseAssociationSpecWithLabel,
                  options: options
                )
              end

              # @overload delete_label(association_type_id, from_object_type:, to_object_type:, request_options: {})
              #
              # @param association_type_id [Integer]
              # @param from_object_type [String]
              # @param to_object_type [String]
              # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
              #
              # @return [nil]
              #
              # @see HubspotSDK::Models::Crm::Associations::Schema::V4::DefinitionDeleteLabelParams
              def delete_label(association_type_id, params)
                parsed, options =
                  HubspotSDK::Crm::Associations::Schema::V4::DefinitionDeleteLabelParams.dump_request(params)
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
                    "crm/associations/v4/%1$s/%2$s/labels/%3$s",
                    from_object_type,
                    to_object_type,
                    association_type_id
                  ],
                  model: NilClass,
                  options: options
                )
              end

              # @overload list_labels(to_object_type, from_object_type:, request_options: {})
              #
              # @param to_object_type [String]
              # @param from_object_type [String]
              # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
              #
              # @return [HubspotSDK::Models::Crm::Associations::Schema::CollectionResponseAssociationSpecWithLabel]
              #
              # @see HubspotSDK::Models::Crm::Associations::Schema::V4::DefinitionListLabelsParams
              def list_labels(to_object_type, params)
                parsed, options =
                  HubspotSDK::Crm::Associations::Schema::V4::DefinitionListLabelsParams.dump_request(params)
                from_object_type =
                  parsed.delete(:from_object_type) do
                    raise ArgumentError.new("missing required path argument #{_1}")
                  end
                @client.request(
                  method: :get,
                  path: ["crm/associations/v4/%1$s/%2$s/labels", from_object_type, to_object_type],
                  model: HubspotSDK::Crm::Associations::Schema::CollectionResponseAssociationSpecWithLabel,
                  options: options
                )
              end

              # @overload update_label(to_object_type, from_object_type:, association_type_id:, label:, inverse_label: nil, request_options: {})
              #
              # @param to_object_type [String] Path param
              #
              # @param from_object_type [String] Path param
              #
              # @param association_type_id [Integer] Body param
              #
              # @param label [String] Body param
              #
              # @param inverse_label [String] Body param
              #
              # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
              #
              # @return [nil]
              #
              # @see HubspotSDK::Models::Crm::Associations::Schema::V4::DefinitionUpdateLabelParams
              def update_label(to_object_type, params)
                parsed, options =
                  HubspotSDK::Crm::Associations::Schema::V4::DefinitionUpdateLabelParams.dump_request(params)
                from_object_type =
                  parsed.delete(:from_object_type) do
                    raise ArgumentError.new("missing required path argument #{_1}")
                  end
                @client.request(
                  method: :put,
                  path: ["crm/associations/v4/%1$s/%2$s/labels", from_object_type, to_object_type],
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
  end
end
