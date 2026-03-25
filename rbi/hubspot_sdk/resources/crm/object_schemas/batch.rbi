# typed: strong

module HubspotSDK
  module Resources
    class Crm
      class ObjectSchemas
        class Batch
          sig do
            params(
              include_association_definitions: T::Boolean,
              include_audit_metadata: T::Boolean,
              include_property_definitions: T::Boolean,
              inputs: T::Array[String],
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(HubspotSDK::CollectionResponseObjectSchemaNoPaging)
          end
          def get(
            include_association_definitions:,
            include_audit_metadata:,
            include_property_definitions:,
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
