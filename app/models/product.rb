class Product < ActiveRecord::Base
  validates :description, presence: true

  rails_admin do
    # configure :description do
    #   label 'Customized Description'
    #   html_attributes rows: 20, cols: 40
    # end
    field :description, :text do
    	html_attributes do
    		{:maxlength => 600}
    	end
    end
  end
end
