require 'spec_helper'

describe "Static pages" do

  subject { page  }

  let(:base_title) { "Ruby on rails Tutorial Sample App" }

  describe "Home page" do
    before { visit root_path }

      it { should have_selector('h1', :text => 'Sample App') }
      it { should have_selector('title', :text => "#{base_title} | Home") }

  end

  describe "Help page" do
    before { visit help_path  }

      it { should have_selector('h1', :text => 'Help') }
      it { should have_selector('title', :text => "#{base_title} | Help") }

  end

  describe "About page" do
    before { visit about_path  }

      it { should have_selector('h1', :text => 'About Us') }
      it { should have_selector('title', :text => "#{base_title} | About") }

  end

  describe "Contacts page" do
    before { visit contacts_path  }

      it { should have_selector('h1', :text => 'Contacts') }
      it { should have_selector('title', :text => "Ruby on rails Tutorial Sample App | Contacts") }

  end 
end
