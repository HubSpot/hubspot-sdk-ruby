# typed: strong

module HubspotSDK
  module Models
    module Crm
      module Lists
        class MembershipListParams < HubspotSDK::Internal::Type::BaseModel
          extend HubspotSDK::Internal::Type::RequestParameters::Converter
          include HubspotSDK::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                HubspotSDK::Crm::Lists::MembershipListParams,
                HubspotSDK::Internal::AnyHash
              )
            end

          # The paging offset token for the page that comes `after` the previously requested
          # records.
          #
          # If provided, then the records in the response will be the records following the
          # offset, sorted in _ascending_ order. Takes precedence over the `before` offset.
          sig { returns(T.nilable(String)) }
          attr_reader :after

          sig { params(after: String).void }
          attr_writer :after

          # The paging offset token for the page that comes `before` the previously
          # requested records.
          #
          # If provided, then the records in the response will be the records preceding the
          # offset, sorted in _descending_ order.
          sig { returns(T.nilable(String)) }
          attr_reader :before

          sig { params(before: String).void }
          attr_writer :before

          # The number of records to return in the response. The maximum `limit` is 250.
          sig { returns(T.nilable(Integer)) }
          attr_reader :limit

          sig { params(limit: Integer).void }
          attr_writer :limit

          sig do
            params(
              after: String,
              before: String,
              limit: Integer,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            # The paging offset token for the page that comes `after` the previously requested
            # records.
            #
            # If provided, then the records in the response will be the records following the
            # offset, sorted in _ascending_ order. Takes precedence over the `before` offset.
            after: nil,
            # The paging offset token for the page that comes `before` the previously
            # requested records.
            #
            # If provided, then the records in the response will be the records preceding the
            # offset, sorted in _descending_ order.
            before: nil,
            # The number of records to return in the response. The maximum `limit` is 250.
            limit: nil,
            request_options: {}
          )
          end

          sig do
            override.returns(
              {
                after: String,
                before: String,
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
