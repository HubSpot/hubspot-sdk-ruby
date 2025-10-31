# frozen_string_literal: true

module HubspotSDK
  module Resources
    class CRM
      class Associations
        class Schema
          class V4
            class Definitions
              # Create a user defined association definition
              #
              # @overload create(to_object_type, from_object_type:, label:, name:, inverse_label: nil, request_options: {})
              #
              # @param to_object_type [String] Path param:
              #
              # @param from_object_type [String] Path param:
              #
              # @param label [String] Body param:
              #
              # @param name [String] Body param:
              #
              # @param inverse_label [String] Body param:
              #
              # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
              #
              # @return [HubspotSDK::Models::CRM::Associations::Schema::CollectionResponseAssociationSpecWithLabelNoPaging]
              #
              # @see HubspotSDK::Models::CRM::Associations::Schema::V4::DefinitionCreateParams
              def create(to_object_type, params)
                parsed, options = HubspotSDK::CRM::Associations::Schema::V4::DefinitionCreateParams.dump_request(params)
                from_object_type =
                  parsed.delete(:from_object_type) do
                    raise ArgumentError.new("missing required path argument #{_1}")
                  end
                @client.request(
                  method: :post,
                  path: ["crm/v4/associations/%1$s/%2$s/labels", from_object_type, to_object_type],
                  body: parsed,
                  model: HubspotSDK::CRM::Associations::Schema::CollectionResponseAssociationSpecWithLabelNoPaging,
                  options: options
                )
              end

              # Update a user defined association definition
              #
              # @overload update(to_object_type, from_object_type:, association_type_id:, label:, inverse_label: nil, request_options: {})
              #
              # @param to_object_type [String] Path param:
              #
              # @param from_object_type [String] Path param:
              #
              # @param association_type_id [Integer] Body param:
              #
              # @param label [String] Body param:
              #
              # @param inverse_label [String] Body param:
              #
              # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
              #
              # @return [nil]
              #
              # @see HubspotSDK::Models::CRM::Associations::Schema::V4::DefinitionUpdateParams
              def update(to_object_type, params)
                parsed, options = HubspotSDK::CRM::Associations::Schema::V4::DefinitionUpdateParams.dump_request(params)
                from_object_type =
                  parsed.delete(:from_object_type) do
                    raise ArgumentError.new("missing required path argument #{_1}")
                  end
                @client.request(
                  method: :put,
                  path: ["crm/v4/associations/%1$s/%2$s/labels", from_object_type, to_object_type],
                  body: parsed,
                  model: NilClass,
                  options: options
                )
              end

              # Returns all association types between two object types
              #
              # @overload list(to_object_type, from_object_type:, request_options: {})
              #
              # @param to_object_type [String]
              # @param from_object_type [String]
              # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
              #
              # @return [HubspotSDK::Models::CRM::Associations::Schema::CollectionResponseAssociationSpecWithLabelNoPaging]
              #
              # @see HubspotSDK::Models::CRM::Associations::Schema::V4::DefinitionListParams
              def list(to_object_type, params)
                parsed, options = HubspotSDK::CRM::Associations::Schema::V4::DefinitionListParams.dump_request(params)
                from_object_type =
                  parsed.delete(:from_object_type) do
                    raise ArgumentError.new("missing required path argument #{_1}")
                  end
                @client.request(
                  method: :get,
                  path: ["crm/v4/associations/%1$s/%2$s/labels", from_object_type, to_object_type],
                  model: HubspotSDK::CRM::Associations::Schema::CollectionResponseAssociationSpecWithLabelNoPaging,
                  options: options
                )
              end

              # Deletes an association definition
              #
              # @overload delete(association_type_id, from_object_type:, to_object_type:, request_options: {})
              #
              # @param association_type_id [Integer]
              # @param from_object_type [String]
              # @param to_object_type [String]
              # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
              #
              # @return [nil]
              #
              # @see HubspotSDK::Models::CRM::Associations::Schema::V4::DefinitionDeleteParams
              def delete(association_type_id, params)
                parsed, options = HubspotSDK::CRM::Associations::Schema::V4::DefinitionDeleteParams.dump_request(params)
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
                    "crm/v4/associations/%1$s/%2$s/labels/%3$s",
                    from_object_type,
                    to_object_type,
                    association_type_id
                  ],
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
