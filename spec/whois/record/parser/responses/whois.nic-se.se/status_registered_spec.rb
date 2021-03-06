# encoding: utf-8

# This file is autogenerated. Do not edit it manually.
# If you want change the content of this file, edit
#
#   /spec/fixtures/responses/whois.nic-se.se/status_registered.expected
#
# and regenerate the tests with the following rake task
#
#   $ rake spec:generate
#

require 'spec_helper'
require 'whois/record/parser/whois.nic-se.se.rb'

describe Whois::Record::Parser::WhoisNicSeSe, "status_registered.expected" do

  subject do
    file = fixture("responses", "whois.nic-se.se/status_registered.txt")
    part = Whois::Record::Part.new(:body => File.read(file))
    described_class.new(part)
  end

  describe "#disclaimer" do
    it do
      subject.disclaimer.should == "Copyright (c) 1997- .SE (The Internet Infrastructure Foundation). All rights reserved. The information obtained through searches, or otherwise, is protected by the Swedish Copyright Act (1960:729) and international conventions. It is also subject to database protection according to the Swedish Copyright Act. Any use of this material to target advertising or similar activities is forbidden and will be prosecuted. If any of the information below is transferred to a third party, it must be done in its entirety. This server must not be used as a backend for a search engine."
    end
  end
  describe "#status" do
    it do
      subject.status.should == :registered
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
      subject.created_on.should == Time.parse("2008-10-20")
    end
  end
  describe "#updated_on" do
    it do
      subject.updated_on.should be_a(Time)
      subject.updated_on.should == Time.parse("2009-08-01")
    end
  end
  describe "#expires_on" do
    it do
      subject.expires_on.should be_a(Time)
      subject.expires_on.should == Time.parse("2010-10-20")
    end
  end
  describe "#registrar" do
    it do
      subject.registrar.should be_a(Whois::Record::Registrar)
      subject.registrar.name.should == "MarkMonitor Inc"
    end
  end
  describe "#registrant_contacts" do
    it do
      subject.registrant_contacts.should be_a(Array)
      subject.registrant_contacts.should have(1).items
      subject.registrant_contacts[0].should be_a(Whois::Record::Contact)
      subject.registrant_contacts[0].type.should         == Whois::Record::Contact::TYPE_REGISTRANT
      subject.registrant_contacts[0].id.should           == "googoo5855-00001"
      subject.registrant_contacts[0].name.should         == nil
      subject.registrant_contacts[0].organization.should == nil
      subject.registrant_contacts[0].address.should      == nil
      subject.registrant_contacts[0].city.should         == nil
      subject.registrant_contacts[0].zip.should          == nil
      subject.registrant_contacts[0].state.should        == nil
      subject.registrant_contacts[0].country_code.should == nil
      subject.registrant_contacts[0].phone.should        == nil
      subject.registrant_contacts[0].fax.should          == nil
      subject.registrant_contacts[0].email.should        == nil
    end
  end
  describe "#admin_contacts" do
    it do
      subject.admin_contacts.should be_a(Array)
      subject.admin_contacts.should == []
    end
  end
  describe "#technical_contacts" do
    it do
      subject.technical_contacts.should be_a(Array)
      subject.technical_contacts.should == []
    end
  end
  describe "#nameservers" do
    it do
      subject.nameservers.should be_a(Array)
      subject.nameservers.should have(4).items
      subject.nameservers[0].should be_a(Whois::Record::Nameserver)
      subject.nameservers[0].name.should == "ns1.google.com"
      subject.nameservers[1].should be_a(Whois::Record::Nameserver)
      subject.nameservers[1].name.should == "ns2.google.com"
      subject.nameservers[2].should be_a(Whois::Record::Nameserver)
      subject.nameservers[2].name.should == "ns3.google.com"
      subject.nameservers[3].should be_a(Whois::Record::Nameserver)
      subject.nameservers[3].name.should == "ns4.google.com"
    end
  end
end
