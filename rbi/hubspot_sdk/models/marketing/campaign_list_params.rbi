# typed: strong

module HubSpotSDK
  module Models
    module Marketing
      class CampaignListParams < HubSpotSDK::Internal::Type::BaseModel
        extend HubSpotSDK::Internal::Type::RequestParameters::Converter
        include HubSpotSDK::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Marketing::CampaignListParams,
              HubSpotSDK::Internal::AnyHash
            )
          end

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

        sig { returns(T.nilable(String)) }
        attr_reader :name

        sig { params(name: String).void }
        attr_writer :name

        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :properties

        sig { params(properties: T::Array[String]).void }
        attr_writer :properties

        sig { returns(T.nilable(String)) }
        attr_reader :sort

        sig { params(sort: String).void }
        attr_writer :sort

        sig do
          params(
            after: String,
            limit: Integer,
            name: String,
            properties: T::Array[String],
            sort: String,
            request_options: HubSpotSDK::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # The paging cursor token of the last successfully read resource will be returned
          # as the `paging.next.after` JSON property of a paged response containing more
          # results.
          after: nil,
          # The maximum number of results to display per page.
          limit: nil,
          name: nil,
          properties: nil,
          sort: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              after: String,
              limit: Integer,
              name: String,
              properties: T::Array[String],
              sort: String,
              request_options: HubSpotSDK::RequestOptions
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
