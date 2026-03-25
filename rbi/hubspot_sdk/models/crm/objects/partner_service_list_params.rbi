# typed: strong

module HubspotSDK
  module Models
    module Crm
      module Objects
        class PartnerServiceListParams < HubspotSDK::Internal::Type::BaseModel
          extend HubspotSDK::Internal::Type::RequestParameters::Converter
          include HubspotSDK::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                HubspotSDK::Crm::Objects::PartnerServiceListParams,
                HubspotSDK::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :partner_service_id

          sig { returns(String) }
          attr_accessor :to_object_type

          # The paging cursor token of the last successfully read resource will be returned
          # as the `paging.next.after` JSON property of a paged response containing more
          # results.
          sig { returns(T.nilable(String)) }
          attr_reader :after

          sig { params(after: String).void }
          attr_writer :after

          # The maximum number of results to display per page.
          sig { returns(T.nilable(Integer)) }
          attr_reader :limit

          sig { params(limit: Integer).void }
          attr_writer :limit

          sig do
            params(
              partner_service_id: String,
              to_object_type: String,
              after: String,
              limit: Integer,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            partner_service_id:,
            to_object_type:,
            # The paging cursor token of the last successfully read resource will be returned
            # as the `paging.next.after` JSON property of a paged response containing more
            # results.
            after: nil,
            # The maximum number of results to display per page.
            limit: nil,
            request_options: {}
          )
          end

          sig do
            override.returns(
              {
                partner_service_id: String,
                to_object_type: String,
                after: String,
                limit: Integer,
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
