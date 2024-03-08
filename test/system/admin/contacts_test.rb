require "application_system_test_case"

class Admin::ContactsTest < ApplicationSystemTestCase
  setup do
    @admin_contact = admin_contacts(:one)
  end

  test "visiting the index" do
    visit admin_contacts_url
    assert_selector "h1", text: "Admin/Contacts"
  end

  test "creating a Contact" do
    visit admin_contacts_url
    click_on "New Admin/Contact"

    fill_in "Email", with: @admin_contact.email
    fill_in "Message", with: @admin_contact.message
    fill_in "Name", with: @admin_contact.name
    click_on "Create Contact"

    assert_text "Contact was successfully created"
    click_on "Back"
  end

  test "updating a Contact" do
    visit admin_contacts_url
    click_on "Edit", match: :first

    fill_in "Email", with: @admin_contact.email
    fill_in "Message", with: @admin_contact.message
    fill_in "Name", with: @admin_contact.name
    click_on "Update Contact"

    assert_text "Contact was successfully updated"
    click_on "Back"
  end

  test "destroying a Contact" do
    visit admin_contacts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Contact was successfully destroyed"
  end
end
