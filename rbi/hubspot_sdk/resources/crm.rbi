# typed: strong

module HubspotSDK
  module Resources
    class Crm
      sig { returns(HubspotSDK::Resources::Crm::AppUninstalls) }
      attr_reader :app_uninstalls

      sig { returns(HubspotSDK::Resources::Crm::Associations) }
      attr_reader :associations

      sig { returns(HubspotSDK::Resources::Crm::Exports) }
      attr_reader :exports

      sig { returns(HubspotSDK::Resources::Crm::Extensions) }
      attr_reader :extensions

      sig { returns(HubspotSDK::Resources::Crm::FeatureFlags) }
      attr_reader :feature_flags

      sig { returns(HubspotSDK::Resources::Crm::Imports) }
      attr_reader :imports

      sig { returns(HubspotSDK::Resources::Crm::Limits) }
      attr_reader :limits

      sig { returns(HubspotSDK::Resources::Crm::Lists) }
      attr_reader :lists

      sig { returns(HubspotSDK::Resources::Crm::ObjectLibrary) }
      attr_reader :object_library

      sig { returns(HubspotSDK::Resources::Crm::Objects) }
      attr_reader :objects

      sig { returns(HubspotSDK::Resources::Crm::Owners) }
      attr_reader :owners

      sig { returns(HubspotSDK::Resources::Crm::Pipelines) }
      attr_reader :pipelines

      sig { returns(HubspotSDK::Resources::Crm::Properties) }
      attr_reader :properties

      sig { returns(HubspotSDK::Resources::Crm::PropertyValidations) }
      attr_reader :property_validations

      sig { returns(HubspotSDK::Resources::Crm::Subscriptions) }
      attr_reader :subscriptions

      sig { returns(HubspotSDK::Resources::Crm::Timeline) }
      attr_reader :timeline

      sig { returns(HubspotSDK::Resources::Crm::Users) }
      attr_reader :users

      # @api private
      sig { params(client: HubspotSDK::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
