# typed: strong

module HubspotSDK
  module Models
    module Marketing
      class CampaignListParams < HubspotSDK::Internal::Type::BaseModel
        extend HubspotSDK::Internal::Type::RequestParameters::Converter
        include HubspotSDK::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Marketing::CampaignListParams,
              HubspotSDK::Internal::AnyHash
            )
          end

        # A cursor for pagination. If provided, the results will start after the given
        # cursor. Example: NTI1Cg%3D%3D
        sig { returns(T.nilable(String)) }
        attr_reader :after

        sig { params(after: String).void }
        attr_writer :after

        # The maximum number of results to return. Allowed values range from 1 to 100
        # Default: 50
        sig { returns(T.nilable(Integer)) }
        attr_reader :limit

        sig { params(limit: Integer).void }
        attr_writer :limit

        # A filter to return campaigns whose names contain the specified substring. This
        # allows partial matching of campaign names, returning all campaigns that include
        # the given substring in their name. If this parameter is not provided, the search
        # will return all campaigns
        sig { returns(T.nilable(String)) }
        attr_reader :name

        sig { params(name: String).void }
        attr_writer :name

        # A comma-separated list of the properties to be returned in the response. If any
        # of the specified properties has empty value on the requested object(s), they
        # will be ignored and not returned in response. If this parameter is empty, the
        # response will include an empty properties map
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :properties

        sig { params(properties: T::Array[String]).void }
        attr_writer :properties

        # The field by which to sort the results. Allowed values are hs_name, createdAt,
        # updatedAt. An optional '-' before the property name can denote descending order
        # Default: hs_name
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
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # A cursor for pagination. If provided, the results will start after the given
          # cursor. Example: NTI1Cg%3D%3D
          after: nil,
          # The maximum number of results to return. Allowed values range from 1 to 100
          # Default: 50
          limit: nil,
          # A filter to return campaigns whose names contain the specified substring. This
          # allows partial matching of campaign names, returning all campaigns that include
          # the given substring in their name. If this parameter is not provided, the search
          # will return all campaigns
          name: nil,
          # A comma-separated list of the properties to be returned in the response. If any
          # of the specified properties has empty value on the requested object(s), they
          # will be ignored and not returned in response. If this parameter is empty, the
          # response will include an empty properties map
          properties: nil,
          # The field by which to sort the results. Allowed values are hs_name, createdAt,
          # updatedAt. An optional '-' before the property name can denote descending order
          # Default: hs_name
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
