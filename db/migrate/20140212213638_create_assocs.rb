class CreateAssocs < ActiveRecord::Migration
  def self.up
    create_table :assocs do |t|
    	t.integer :m_id 
    	t.integer :s_id ,:unique => true
      t.timestamps
    end
  end

  def self.down
  	drop_table :assocs
  end	
end
