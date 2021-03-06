# encoding: utf-8

# This file is autogenerated. Do not edit it manually.
# If you want change the content of this file, edit
#
#   /spec/fixtures/responses/whois.nic.travel/status_registered.expected
#
# and regenerate the tests with the following rake task
#
#   $ rake spec:generate
#

require 'spec_helper'
require 'whois/record/parser/whois.nic.travel.rb'

describe Whois::Record::Parser::WhoisNicTravel, "status_registered.expected" do

  subject do
    file = fixture("responses", "whois.nic.travel/status_registered.txt")
    part = Whois::Record::Part.new(:body => File.read(file))
    described_class.new(part)
  end

  describe "#domain" do
    it do
      subject.domain.should == "travel.travel"
    end
  end
  describe "#domain_id" do
    it do
      subject.domain_id.should == "D24096-TRAVEL"
    end
  end
  describe "#status" do
    it do
      subject.status.should == "ok"
    end
  end
  describe "#available?" do
    it do
      subject.available?.should == false
    end
  end
  describe "#registered?" do
    it do
      subject.registered?.should == true
    end
  end
  describe "#created_on" do
    it do
      subject.created_on.should be_a(Time)
      subject.created_on.should == Time.parse("2005-10-04 21:44:27 GMT")
    end
  end
  describe "#updated_on" do
    it do
      subject.updated_on.should be_a(Time)
      subject.updated_on.should == Time.parse("2010-11-22 23:14:32 GMT")
    end
  end
  describe "#expires_on" do
    it do
      subject.expires_on.should be_a(Time)
      subject.expires_on.should == Time.parse("2021-10-03 23:59:59 GMT")
    end
  end
  describe "#registrar" do
    it do
      subject.registrar.should be_a(Whois::Record::Registrar)
      subject.registrar.id.should           == nil
      subject.registrar.name.should         == "NEUSTAR GATEWAY"
    end
  end
  describe "#registrant_contacts" do
    it do
      subject.registrant_contacts.should be_a(Array)
      subject.registrant_contacts.should have(1).items
      subject.registrant_contacts[0].should be_a(Whois::Record::Contact)
      subject.registrant_contacts[0].type.should          == Whois::Record::Contact::TYPE_REGISTRANT
      subject.registrant_contacts[0].id.should            == "TRALLIANCE"
      subject.registrant_contacts[0].name.should          == "Tralliance Corporation"
      subject.registrant_contacts[0].organization.should  == nil
      subject.registrant_contacts[0].address.should       == "110 East Broward Blvd, 14th floor"
      subject.registrant_contacts[0].city.should          == "Fort Lauderdale"
      subject.registrant_contacts[0].zip.should           == "33301"
      subject.registrant_contacts[0].state.should         == "FL"
      subject.registrant_contacts[0].country.should       == "United States"
      subject.registrant_contacts[0].country_code.should  == "US"
      subject.registrant_contacts[0].phone.should         == "+1.9547695999"
      subject.registrant_contacts[0].fax.should           == nil
      subject.registrant_contacts[0].email.should         == "info@tralliance.travel"
    end
  end
  describe "#admin_contacts" do
    it do
      subject.admin_contacts.should be_a(Array)
      subject.admin_contacts.should have(1).items
      subject.admin_contacts[0].should be_a(Whois::Record::Contact)
      subject.admin_contacts[0].type.should          == Whois::Record::Contact::TYPE_ADMINISTRATIVE
      subject.admin_contacts[0].id.should            == "TRALLIANCE"
      subject.admin_contacts[0].name.should          == "Tralliance Corporation"
      subject.admin_contacts[0].organization.should  == nil
      subject.admin_contacts[0].address.should       == "110 East Broward Blvd, 14th floor"
      subject.admin_contacts[0].city.should          == "Fort Lauderdale"
      subject.admin_contacts[0].zip.should           == "33301"
      subject.admin_contacts[0].state.should         == "FL"
      subject.admin_contacts[0].country.should       == "United States"
      subject.admin_contacts[0].country_code.should  == "US"
      subject.admin_contacts[0].phone.should         == "+1.9547695999"
      subject.admin_contacts[0].fax.should           == nil
      subject.admin_contacts[0].email.should         == "info@tralliance.travel"
    end
  end
  describe "#technical_contacts" do
    it do
      subject.technical_contacts.should be_a(Array)
      subject.technical_contacts.should have(1).items
      subject.technical_contacts[0].should be_a(Whois::Record::Contact)
      subject.technical_contacts[0].type.should          == Whois::Record::Contact::TYPE_TECHNICAL
      subject.technical_contacts[0].id.should            == "TRALLIANCE"
      subject.technical_contacts[0].name.should          == "Tralliance Corporation"
      subject.technical_contacts[0].organization.should  == nil
      subject.technical_contacts[0].address.should       == "110 East Broward Blvd, 14th floor"
      subject.technical_contacts[0].city.should          == "Fort Lauderdale"
      subject.technical_contacts[0].zip.should           == "33301"
      subject.technical_contacts[0].state.should         == "FL"
      subject.technical_contacts[0].country.should       == "United States"
      subject.technical_contacts[0].country_code.should  == "US"
      subject.technical_contacts[0].phone.should         == "+1.9547695999"
      subject.technical_contacts[0].fax.should           == nil
      subject.technical_contacts[0].email.should         == "info@tralliance.travel"
    end
  end
  describe "#nameservers" do
    it do
      subject.nameservers.should be_a(Array)
      subject.nameservers.should have(2).items
      subject.nameservers[0].should be_a(Whois::Record::Nameserver)
      subject.nameservers[0].name.should == "ns01-mia.theglobe.com"
      subject.nameservers[1].should be_a(Whois::Record::Nameserver)
      subject.nameservers[1].name.should == "netsys.com"
    end
  end
end
