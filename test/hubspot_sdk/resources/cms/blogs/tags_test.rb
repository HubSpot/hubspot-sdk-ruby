# frozen_string_literal: true

require_relative "../../../test_helper"

class HubspotSDK::Test::Resources::Cms::Blogs::TagsTest < HubspotSDK::Test::ResourceTest
  def test_create_required_params
    skip("Prism tests are disabled")

    response =
      @hubspot.cms.blogs.tags.create(
        id: "id",
        created: "2019-12-27T18:11:19.117Z",
        deleted_at: "2019-12-27T18:11:19.117Z",
        language: :af,
        name: "name",
        translated_from_id: 0,
        updated: "2019-12-27T18:11:19.117Z"
      )

    assert_pattern do
      response => HubspotSDK::Cms::Blogs::Tag
    end

    assert_pattern do
      response => {
        id: String,
        created: Time,
        deleted_at: Time,
        language: HubspotSDK::Cms::Blogs::Tag::Language,
        name: String,
        translated_from_id: Integer,
        updated: Time
      }
    end
  end

  def test_update_required_params
    skip("Prism tests are disabled")

    response =
      @hubspot.cms.blogs.tags.update(
        "objectId",
        id: "id",
        created: "2019-12-27T18:11:19.117Z",
        deleted_at: "2019-12-27T18:11:19.117Z",
        language: :af,
        name: "name",
        translated_from_id: 0,
        updated: "2019-12-27T18:11:19.117Z"
      )

    assert_pattern do
      response => HubspotSDK::Cms::Blogs::Tag
    end

    assert_pattern do
      response => {
        id: String,
        created: Time,
        deleted_at: Time,
        language: HubspotSDK::Cms::Blogs::Tag::Language,
        name: String,
        translated_from_id: Integer,
        updated: Time
      }
    end
  end

  def test_list
    skip("Prism tests are disabled")

    response = @hubspot.cms.blogs.tags.list

    assert_pattern do
      response => HubspotSDK::Internal::Page
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => HubspotSDK::Cms::Blogs::Tag
    end

    assert_pattern do
      row => {
        id: String,
        created: Time,
        deleted_at: Time,
        language: HubspotSDK::Cms::Blogs::Tag::Language,
        name: String,
        translated_from_id: Integer,
        updated: Time
      }
    end
  end

  def test_delete
    skip("Prism tests are disabled")

    response = @hubspot.cms.blogs.tags.delete("objectId")

    assert_pattern do
      response => nil
    end
  end

  def test_attach_to_lang_group_required_params
    skip("Prism tests are disabled")

    response =
      @hubspot.cms.blogs.tags.attach_to_lang_group(id: "id", language: "language", primary_id: "primaryId")

    assert_pattern do
      response => nil
    end
  end

  def test_create_batch_required_params
    skip("Prism tests are disabled")

    response =
      @hubspot.cms.blogs.tags.create_batch(
        inputs: [
          {
            id: "id",
            created: "2019-12-27T18:11:19.117Z",
            deletedAt: "2019-12-27T18:11:19.117Z",
            language: :af,
            name: "name",
            translatedFromId: 0,
            updated: "2019-12-27T18:11:19.117Z"
          }
        ]
      )

    assert_pattern do
      response => HubspotSDK::Cms::Blogs::BatchResponseTag
    end

    assert_pattern do
      response => {
        completed_at: Time,
        results: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Cms::Blogs::Tag]),
        started_at: Time,
        status: HubspotSDK::Cms::Blogs::BatchResponseTag::Status,
        links: ^(HubspotSDK::Internal::Type::HashOf[String]) | nil,
        requested_at: Time | nil
      }
    end
  end

  def test_create_lang_variation_required_params
    skip("Prism tests are disabled")

    response = @hubspot.cms.blogs.tags.create_lang_variation(id: "id", name: "name")

    assert_pattern do
      response => HubspotSDK::Cms::Blogs::Tag
    end

    assert_pattern do
      response => {
        id: String,
        created: Time,
        deleted_at: Time,
        language: HubspotSDK::Cms::Blogs::Tag::Language,
        name: String,
        translated_from_id: Integer,
        updated: Time
      }
    end
  end

  def test_delete_batch_required_params
    skip("Prism tests are disabled")

    response = @hubspot.cms.blogs.tags.delete_batch(inputs: ["string"])

    assert_pattern do
      response => nil
    end
  end

  def test_detach_from_lang_group_required_params
    skip("Prism tests are disabled")

    response = @hubspot.cms.blogs.tags.detach_from_lang_group(id: "id")

    assert_pattern do
      response => nil
    end
  end

  def test_get
    skip("Prism tests are disabled")

    response = @hubspot.cms.blogs.tags.get("objectId")

    assert_pattern do
      response => HubspotSDK::Cms::Blogs::Tag
    end

    assert_pattern do
      response => {
        id: String,
        created: Time,
        deleted_at: Time,
        language: HubspotSDK::Cms::Blogs::Tag::Language,
        name: String,
        translated_from_id: Integer,
        updated: Time
      }
    end
  end

  def test_get_batch_required_params
    skip("Prism tests are disabled")

    response = @hubspot.cms.blogs.tags.get_batch(inputs: ["string"])

    assert_pattern do
      response => HubspotSDK::Cms::Blogs::BatchResponseTag
    end

    assert_pattern do
      response => {
        completed_at: Time,
        results: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Cms::Blogs::Tag]),
        started_at: Time,
        status: HubspotSDK::Cms::Blogs::BatchResponseTag::Status,
        links: ^(HubspotSDK::Internal::Type::HashOf[String]) | nil,
        requested_at: Time | nil
      }
    end
  end

  def test_set_lang_primary_required_params
    skip("Prism tests are disabled")

    response = @hubspot.cms.blogs.tags.set_lang_primary(id: "id")

    assert_pattern do
      response => nil
    end
  end

  def test_update_batch_required_params
    skip("Prism tests are disabled")

    response = @hubspot.cms.blogs.tags.update_batch(inputs: [{}])

    assert_pattern do
      response => HubspotSDK::Cms::Blogs::BatchResponseTag
    end

    assert_pattern do
      response => {
        completed_at: Time,
        results: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Cms::Blogs::Tag]),
        started_at: Time,
        status: HubspotSDK::Cms::Blogs::BatchResponseTag::Status,
        links: ^(HubspotSDK::Internal::Type::HashOf[String]) | nil,
        requested_at: Time | nil
      }
    end
  end

  def test_update_langs_required_params
    skip("Prism tests are disabled")

    response = @hubspot.cms.blogs.tags.update_langs(languages: {foo: "string"}, primary_id: "primaryId")

    assert_pattern do
      response => nil
    end
  end
end
