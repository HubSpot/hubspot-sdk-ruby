# typed: strong

module HubSpotSDK
  module Resources
    class Crm
      sig { returns(HubSpotSDK::Resources::Crm::AppUninstalls) }
      attr_reader :app_uninstalls

      sig { returns(HubSpotSDK::Resources::Crm::Associations) }
      attr_reader :associations

      sig { returns(HubSpotSDK::Resources::Crm::AssociationsSchema) }
      attr_reader :associations_schema

      sig { returns(HubSpotSDK::Resources::Crm::DealSplits) }
      attr_reader :deal_splits

      sig { returns(HubSpotSDK::Resources::Crm::Exports) }
      attr_reader :exports

      sig { returns(HubSpotSDK::Resources::Crm::Extensions) }
      attr_reader :extensions

      sig { returns(HubSpotSDK::Resources::Crm::FeatureFlags) }
      attr_reader :feature_flags

      sig { returns(HubSpotSDK::Resources::Crm::Imports) }
      attr_reader :imports

      sig { returns(HubSpotSDK::Resources::Crm::Limits) }
      attr_reader :limits

      sig { returns(HubSpotSDK::Resources::Crm::Lists) }
      attr_reader :lists

      sig { returns(HubSpotSDK::Resources::Crm::ObjectLibrary) }
      attr_reader :object_library

      sig { returns(HubSpotSDK::Resources::Crm::ObjectSchemas) }
      attr_reader :object_schemas

      sig { returns(HubSpotSDK::Resources::Crm::Objects) }
      attr_reader :objects

      sig { returns(HubSpotSDK::Resources::Crm::Owners) }
      attr_reader :owners

      sig { returns(HubSpotSDK::Resources::Crm::Pipelines) }
      attr_reader :pipelines

      sig { returns(HubSpotSDK::Resources::Crm::Properties) }
      attr_reader :properties

      sig { returns(HubSpotSDK::Resources::Crm::PropertiesValidations) }
      attr_reader :properties_validations

      sig { returns(HubSpotSDK::Resources::Crm::Timeline) }
      attr_reader :timeline

      # @api private
      sig { params(client: HubSpotSDK::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
