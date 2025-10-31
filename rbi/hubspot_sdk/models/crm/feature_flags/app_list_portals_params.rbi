# typed: strong

module HubspotSDK
  module Models
    module CRM
      module FeatureFlags
        class AppListPortalsParams < HubspotSDK::Internal::Type::BaseModel
          extend HubspotSDK::Internal::Type::RequestParameters::Converter
          include HubspotSDK::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                HubspotSDK::CRM::FeatureFlags::AppListPortalsParams,
                HubspotSDK::Internal::AnyHash
              )
            end

          sig { returns(Integer) }
          attr_accessor :app_id

          # The maximum number of results to return in a single request.
          sig { returns(T.nilable(Integer)) }
          attr_reader :limit

          sig { params(limit: Integer).void }
          attr_writer :limit

          # The initial account ID for listing, enabling pagination.
          sig { returns(T.nilable(Integer)) }
          attr_reader :start_portal_id

          sig { params(start_portal_id: Integer).void }
          attr_writer :start_portal_id

          sig do
            params(
              app_id: Integer,
              limit: Integer,
              start_portal_id: Integer,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            app_id:,
            # The maximum number of results to return in a single request.
            limit: nil,
            # The initial account ID for listing, enabling pagination.
            start_portal_id: nil,
            request_options: {}
          )
          end

          sig do
            override.returns(
              {
                app_id: Integer,
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
end
