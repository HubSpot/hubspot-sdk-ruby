# typed: strong

module HubspotSDK
  module Models
    module CRM
      module Objects
        module PartnerServices
          class AssociationListParams < HubspotSDK::Internal::Type::BaseModel
            extend HubspotSDK::Internal::Type::RequestParameters::Converter
            include HubspotSDK::Internal::Type::RequestParameters

            OrHash =
              T.type_alias do
                T.any(
                  HubspotSDK::CRM::Objects::PartnerServices::AssociationListParams,
                  HubspotSDK::Internal::AnyHash
                )
              end

            sig { returns(String) }
            attr_accessor :partner_service_id

            # The paging cursor token of the last successfully read resource will be returned
            # as the `paging.next.after` JSON property of a paged response containing more
            # results.
            sig { returns(T.nilable(String)) }
            attr_reader :after

            sig { params(after: String).void }
            attr_writer :after

            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :include_fa

            sig { params(include_fa: T::Boolean).void }
            attr_writer :include_fa

            # The maximum number of results to display per page.
            sig { returns(T.nilable(Integer)) }
            attr_reader :limit

            sig { params(limit: Integer).void }
            attr_writer :limit

            sig do
              params(
                partner_service_id: String,
                after: String,
                include_fa: T::Boolean,
                limit: Integer,
                request_options: HubspotSDK::RequestOptions::OrHash
              ).returns(T.attached_class)
            end
            def self.new(
              partner_service_id:,
              # The paging cursor token of the last successfully read resource will be returned
              # as the `paging.next.after` JSON property of a paged response containing more
              # results.
              after: nil,
              include_fa: nil,
              # The maximum number of results to display per page.
              limit: nil,
              request_options: {}
            )
            end

            sig do
              override.returns(
                {
                  partner_service_id: String,
                  after: String,
                  include_fa: T::Boolean,
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
end
