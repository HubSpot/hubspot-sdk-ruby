# typed: strong

module HubSpotSDK
  module Models
    module Marketing
      class EmailGetAbTestVariationParams < HubSpotSDK::Internal::Type::BaseModel
        extend HubSpotSDK::Internal::Type::RequestParameters::Converter
        include HubSpotSDK::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Marketing::EmailGetAbTestVariationParams,
              HubSpotSDK::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :email_id

        # Whether to return only results that have been archived.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :archived

        sig { params(archived: T::Boolean).void }
        attr_writer :archived

        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :included_properties

        sig { params(included_properties: T::Array[String]).void }
        attr_writer :included_properties

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :include_stats

        sig { params(include_stats: T::Boolean).void }
        attr_writer :include_stats

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :marketing_campaign_names

        sig { params(marketing_campaign_names: T::Boolean).void }
        attr_writer :marketing_campaign_names

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :variant_stats

        sig { params(variant_stats: T::Boolean).void }
        attr_writer :variant_stats

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :workflow_names

        sig { params(workflow_names: T::Boolean).void }
        attr_writer :workflow_names

        sig do
          params(
            email_id: String,
            archived: T::Boolean,
            included_properties: T::Array[String],
            include_stats: T::Boolean,
            marketing_campaign_names: T::Boolean,
            variant_stats: T::Boolean,
            workflow_names: T::Boolean,
            request_options: HubSpotSDK::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          email_id:,
          # Whether to return only results that have been archived.
          archived: nil,
          included_properties: nil,
          include_stats: nil,
          marketing_campaign_names: nil,
          variant_stats: nil,
          workflow_names: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              email_id: String,
              archived: T::Boolean,
              included_properties: T::Array[String],
              include_stats: T::Boolean,
              marketing_campaign_names: T::Boolean,
              variant_stats: T::Boolean,
              workflow_names: T::Boolean,
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
