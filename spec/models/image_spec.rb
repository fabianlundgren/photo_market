require 'rails_helper'

  RSpec.describe Image, type: :model do
    describe 'Factory' do
      it 'is valid' do
        expect(create(:image)).to be_valid
      end

      it 'has an file url by default' do
        image = create(:image)
        expect(image.file.url).to include 'my_cat.png'
      end
    end

    describe 'Database Table' do
      it { is_expected.to have_db_column(:name).of_type(:string) }
      it { is_expected.to have_db_column(:creator).of_type(:string) }
      it { is_expected.to have_db_column(:price).of_type(:integer) }
      it { is_expected.to have_db_column(:print_size).of_type(:string) }
      it { is_expected.to have_db_column(:file_file_name).of_type(:string) }
      it { is_expected.to have_db_column(:file_content_type).of_type(:string) }
      it { is_expected.to have_db_column(:file_file_size).of_type(:integer) }
      it { is_expected.to have_db_column(:file_updated_at).of_type(:datetime) }
    end

    describe 'File attachment' do
      it { is_expected.to have_attached_file(:file) }
    end

  end