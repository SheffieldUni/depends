# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120913121649) do

  create_table "node_relationship_groups", :force => true do |t|
    t.integer "node_id"
    t.integer "relationship_group_id"
  end

  create_table "nodes", :force => true do |t|
    t.string  "name"
    t.boolean "available", :default => true
  end

  create_table "relationship_groups", :force => true do |t|
    t.integer "minimum", :default => 1
    t.string  "name",    :default => "Unnamed Relationship Group", :null => false
  end

  create_table "relationship_nodes", :force => true do |t|
    t.integer "relationship_group_id"
    t.integer "node_id"
  end

  create_table "relationships", :force => true do |t|
    t.integer "node_id"
  end

end
