# typed: strong

module HubspotSDK
  module Models
    module Marketing
      class EmailGetParams < HubspotSDK::Internal::Type::BaseModel
        extend HubspotSDK::Internal::Type::RequestParameters::Converter
        include HubspotSDK::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Marketing::EmailGetParams,
              HubspotSDK::Internal::AnyHash
            )
          end

        # Whether to return only results that have been archived.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :archived

        sig { params(archived: T::Boolean).void }
        attr_writer :archived

        # Limit the response to only include the specified properties.
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :included_properties

        sig { params(included_properties: T::Array[String]).void }
        attr_writer :included_properties

        # Include statistics with email.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :include_stats

        sig { params(include_stats: T::Boolean).void }
        attr_writer :include_stats

        # If set to true, loads `campaignName` and `campaignUtm`.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :marketing_campaign_names

        sig { params(marketing_campaign_names: T::Boolean).void }
        attr_writer :marketing_campaign_names

        # If set to true, loads workflows in which the email is used within a "send email"
        # action.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :workflow_names

        sig { params(workflow_names: T::Boolean).void }
        attr_writer :workflow_names

        sig do
          params(
            archived: T::Boolean,
            included_properties: T::Array[String],
            include_stats: T::Boolean,
            marketing_campaign_names: T::Boolean,
            workflow_names: T::Boolean,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Whether to return only results that have been archived.
          archived: nil,
          # Limit the response to only include the specified properties.
          included_properties: nil,
          # Include statistics with email.
          include_stats: nil,
          # If set to true, loads `campaignName` and `campaignUtm`.
          marketing_campaign_names: nil,
          # If set to true, loads workflows in which the email is used within a "send email"
          # action.
          workflow_names: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              archived: T::Boolean,
              included_properties: T::Array[String],
              include_stats: T::Boolean,
              marketing_campaign_names: T::Boolean,
              workflow_names: T::Boolean,
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
