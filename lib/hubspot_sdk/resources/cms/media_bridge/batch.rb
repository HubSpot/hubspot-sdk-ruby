# frozen_string_literal: true

module HubSpotSDK
  module Resources
    class Cms
      class MediaBridge
        class Batch
          # Create a batch of properties of the specified object type.
          #
          # @overload create(object_type, app_id:, inputs:, request_options: {})
          #
          # @param object_type [String] Path param
          #
          # @param app_id [Integer] Path param
          #
          # @param inputs [Array<HubSpotSDK::Models::PropertyCreate>] Body param
          #
          # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubSpotSDK::Models::Cms::BatchResponseProperty]
          #
          # @see HubSpotSDK::Models::Cms::MediaBridge::BatchCreateParams
          def create(object_type, params)
            parsed, options = HubSpotSDK::Cms::MediaBridge::BatchCreateParams.dump_request(params)
            app_id =
              parsed.delete(:app_id) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :post,
              path: ["media-bridge/2026-03/%1$s/properties/%2$s/batch/create", app_id, object_type],
              body: parsed,
              model: HubSpotSDK::Cms::BatchResponseProperty,
              options: options
            )
          end

          # Archive a batch of existing properties for the specified types.
          #
          # @overload delete(object_type, app_id:, inputs:, request_options: {})
          #
          # @param object_type [String] Path param
          #
          # @param app_id [Integer] Path param
          #
          # @param inputs [Array<HubSpotSDK::Models::PropertyName>] Body param
          #
          # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [nil]
          #
          # @see HubSpotSDK::Models::Cms::MediaBridge::BatchDeleteParams
          def delete(object_type, params)
            parsed, options = HubSpotSDK::Cms::MediaBridge::BatchDeleteParams.dump_request(params)
            app_id =
              parsed.delete(:app_id) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :post,
              path: ["media-bridge/2026-03/%1$s/properties/%2$s/batch/archive", app_id, object_type],
              body: parsed,
              model: NilClass,
              options: options
            )
          end

          # Get the details for a batch of properties for a specified object type.
          #
          # @overload get(object_type, app_id:, archived:, data_sensitivity:, inputs:, request_options: {})
          #
          # @param object_type [String] Path param
          #
          # @param app_id [Integer] Path param
          #
          # @param archived [Boolean] Body param
          #
          # @param data_sensitivity [Symbol, HubSpotSDK::Models::BatchReadInputPropertyName::DataSensitivity] Body param
          #
          # @param inputs [Array<HubSpotSDK::Models::PropertyName>] Body param
          #
          # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubSpotSDK::Models::Cms::BatchResponseProperty]
          #
          # @see HubSpotSDK::Models::Cms::MediaBridge::BatchGetParams
          def get(object_type, params)
            parsed, options = HubSpotSDK::Cms::MediaBridge::BatchGetParams.dump_request(params)
            app_id =
              parsed.delete(:app_id) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :post,
              path: ["media-bridge/2026-03/%1$s/properties/%2$s/batch/read", app_id, object_type],
              body: parsed,
              model: HubSpotSDK::Cms::BatchResponseProperty,
              options: options
            )
          end

          # @api private
          #
          # @param client [HubSpotSDK::Client]
          def initialize(client:)
            @client = client
          end
        end
      end
    end
  end
end
