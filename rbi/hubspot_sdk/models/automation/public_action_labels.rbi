# typed: strong

module HubSpotSDK
  module Models
    module Automation
      class PublicActionLabels < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Automation::PublicActionLabels,
              HubSpotSDK::Internal::AnyHash
            )
          end

        # The name of the action.
        sig { returns(String) }
        attr_accessor :action_name

        # Content displayed on the action card.
        sig { returns(T.nilable(String)) }
        attr_reader :action_card_content

        sig { params(action_card_content: String).void }
        attr_writer :action_card_content

        # A description of what the action does.
        sig { returns(T.nilable(String)) }
        attr_reader :action_description

        sig { params(action_description: String).void }
        attr_writer :action_description

        # The display name of the application associated with the action.
        sig { returns(T.nilable(String)) }
        attr_reader :app_display_name

        sig { params(app_display_name: String).void }
        attr_writer :app_display_name

        # Rules that govern the execution of the action.
        sig { returns(T.nilable(T::Hash[Symbol, String])) }
        attr_reader :execution_rules

        sig { params(execution_rules: T::Hash[Symbol, String]).void }
        attr_writer :execution_rules

        # Descriptions for each input field.
        sig { returns(T.nilable(T::Hash[Symbol, String])) }
        attr_reader :input_field_descriptions

        sig { params(input_field_descriptions: T::Hash[Symbol, String]).void }
        attr_writer :input_field_descriptions

        # Labels for the input fields.
        sig { returns(T.nilable(T::Hash[Symbol, String])) }
        attr_reader :input_field_labels

        sig { params(input_field_labels: T::Hash[Symbol, String]).void }
        attr_writer :input_field_labels

        # Labels for the options available in input fields.
        sig { returns(T.nilable(T::Hash[Symbol, T::Hash[Symbol, String]])) }
        attr_reader :input_field_option_labels

        sig do
          params(
            input_field_option_labels: T::Hash[Symbol, T::Hash[Symbol, String]]
          ).void
        end
        attr_writer :input_field_option_labels

        # Labels for the output fields.
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
          # The name of the action.
          action_name:,
          # Content displayed on the action card.
          action_card_content: nil,
          # A description of what the action does.
          action_description: nil,
          # The display name of the application associated with the action.
          app_display_name: nil,
          # Rules that govern the execution of the action.
          execution_rules: nil,
          # Descriptions for each input field.
          input_field_descriptions: nil,
          # Labels for the input fields.
          input_field_labels: nil,
          # Labels for the options available in input fields.
          input_field_option_labels: nil,
          # Labels for the output fields.
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
