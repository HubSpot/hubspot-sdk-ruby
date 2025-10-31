# typed: strong

module HubspotSDK
  module Models
    module Automation
      class PublicActionLabels < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Automation::PublicActionLabels,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :action_name

        sig { returns(T.nilable(String)) }
        attr_reader :action_card_content

        sig { params(action_card_content: String).void }
        attr_writer :action_card_content

        sig { returns(T.nilable(String)) }
        attr_reader :action_description

        sig { params(action_description: String).void }
        attr_writer :action_description

        sig { returns(T.nilable(String)) }
        attr_reader :app_display_name

        sig { params(app_display_name: String).void }
        attr_writer :app_display_name

        sig { returns(T.nilable(T::Hash[Symbol, String])) }
        attr_reader :execution_rules

        sig { params(execution_rules: T::Hash[Symbol, String]).void }
        attr_writer :execution_rules

        sig { returns(T.nilable(T::Hash[Symbol, String])) }
        attr_reader :input_field_descriptions

        sig { params(input_field_descriptions: T::Hash[Symbol, String]).void }
        attr_writer :input_field_descriptions

        sig { returns(T.nilable(T::Hash[Symbol, String])) }
        attr_reader :input_field_labels

        sig { params(input_field_labels: T::Hash[Symbol, String]).void }
        attr_writer :input_field_labels

        sig { returns(T.nilable(T::Hash[Symbol, T::Hash[Symbol, String]])) }
        attr_reader :input_field_option_labels

        sig do
          params(
            input_field_option_labels: T::Hash[Symbol, T::Hash[Symbol, String]]
          ).void
        end
        attr_writer :input_field_option_labels

        sig { returns(T.nilable(T::Hash[Symbol, String])) }
        attr_reader :output_field_labels

        sig { params(output_field_labels: T::Hash[Symbol, String]).void }
        attr_writer :output_field_labels

        sig do
          params(
            action_name: String,
            action_card_content: String,
            action_description: String,
            app_display_name: String,
            execution_rules: T::Hash[Symbol, String],
            input_field_descriptions: T::Hash[Symbol, String],
            input_field_labels: T::Hash[Symbol, String],
            input_field_option_labels: T::Hash[Symbol, T::Hash[Symbol, String]],
            output_field_labels: T::Hash[Symbol, String]
          ).returns(T.attached_class)
        end
        def self.new(
          action_name:,
          action_card_content: nil,
          action_description: nil,
          app_display_name: nil,
          execution_rules: nil,
          input_field_descriptions: nil,
          input_field_labels: nil,
          input_field_option_labels: nil,
          output_field_labels: nil
        )
        end

        sig do
          override.returns(
            {
              action_name: String,
              action_card_content: String,
              action_description: String,
              app_display_name: String,
              execution_rules: T::Hash[Symbol, String],
              input_field_descriptions: T::Hash[Symbol, String],
              input_field_labels: T::Hash[Symbol, String],
              input_field_option_labels:
                T::Hash[Symbol, T::Hash[Symbol, String]],
              output_field_labels: T::Hash[Symbol, String]
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
