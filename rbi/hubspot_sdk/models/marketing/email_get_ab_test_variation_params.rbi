# typed: strong

module HubspotSDK
  module Models
    module Marketing
      class EmailGetAbTestVariationParams < HubspotSDK::Internal::Type::BaseModel
        extend HubspotSDK::Internal::Type::RequestParameters::Converter
        include HubspotSDK::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Marketing::EmailGetAbTestVariationParams,
              HubspotSDK::Internal::AnyHash
            )
          end

        # Boolean variable to request archived email
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :archived

        sig { params(archived: T::Boolean).void }
        attr_writer :archived

        # List of properties to be returned in the API response
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :included_properties

        sig { params(included_properties: T::Array[String]).void }
        attr_writer :included_properties

        # Boolean variable to request stats to be returned in response
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :include_stats

        sig { params(include_stats: T::Boolean).void }
        attr_writer :include_stats

        # Boolean variable to request name of the campaign in response
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :marketing_campaign_names

        sig { params(marketing_campaign_names: T::Boolean).void }
        attr_writer :marketing_campaign_names

        # Boolean variable to request name of the associated workflows in response
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
          # Boolean variable to request archived email
          archived: nil,
          # List of properties to be returned in the API response
          included_properties: nil,
          # Boolean variable to request stats to be returned in response
          include_stats: nil,
          # Boolean variable to request name of the campaign in response
          marketing_campaign_names: nil,
          # Boolean variable to request name of the associated workflows in response
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
