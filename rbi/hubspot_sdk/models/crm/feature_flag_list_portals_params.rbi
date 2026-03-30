# typed: strong

module HubspotSDK
  module Models
    module Crm
      class FeatureFlagListPortalsParams < HubspotSDK::Internal::Type::BaseModel
        extend HubspotSDK::Internal::Type::RequestParameters::Converter
        include HubspotSDK::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Crm::FeatureFlagListPortalsParams,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(Integer) }
        attr_accessor :app_id

        sig { returns(String) }
        attr_accessor :flag_name

        # The maximum number of results to display per page.
        sig { returns(T.nilable(Integer)) }
        attr_reader :limit

        sig { params(limit: Integer).void }
        attr_writer :limit

        sig { returns(T.nilable(Integer)) }
        attr_reader :start_portal_id

        sig { params(start_portal_id: Integer).void }
        attr_writer :start_portal_id

        sig do
          params(
            app_id: Integer,
            flag_name: String,
            limit: Integer,
            start_portal_id: Integer,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          app_id:,
          flag_name:,
          # The maximum number of results to display per page.
          limit: nil,
          start_portal_id: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              app_id: Integer,
              flag_name: String,
              limit: Integer,
              start_portal_id: Integer,
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
