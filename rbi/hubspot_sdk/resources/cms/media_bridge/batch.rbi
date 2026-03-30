# typed: strong

module HubspotSDK
  module Resources
    class Cms
      class MediaBridge
        class Batch
          # Create a batch of properties of the specified object type.
          sig do
            params(
              object_type: String,
              app_id: Integer,
              inputs: T::Array[HubspotSDK::PropertyCreate::OrHash],
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(HubspotSDK::Cms::BatchResponseProperty)
          end
          def create(
            # Path param
            object_type,
            # Path param
            app_id:,
            # Body param
            inputs:,
            request_options: {}
          )
          end

          # Archive a batch of existing properties for the specified types.
          sig do
            params(
              object_type: String,
              app_id: Integer,
              inputs: T::Array[HubspotSDK::PropertyName::OrHash],
              request_options: HubspotSDK::RequestOptions::OrHash
            ).void
          end
          def delete(
            # Path param
            object_type,
            # Path param
            app_id:,
            # Body param
            inputs:,
            request_options: {}
          )
          end

          # Get the details for a batch of properties for a specified object type.
          sig do
            params(
              object_type: String,
              app_id: Integer,
              archived: T::Boolean,
              data_sensitivity:
                HubspotSDK::BatchReadInputPropertyName::DataSensitivity::OrSymbol,
              inputs: T::Array[HubspotSDK::PropertyName::OrHash],
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(HubspotSDK::Cms::BatchResponseProperty)
          end
          def get(
            # Path param
            object_type,
            # Path param
            app_id:,
            # Body param
            archived:,
            # Body param
            data_sensitivity:,
            # Body param
            inputs:,
            request_options: {}
          )
          end

          # @api private
          sig { params(client: HubspotSDK::Client).returns(T.attached_class) }
          def self.new(client:)
          end
        end
      end
    end
  end
end
