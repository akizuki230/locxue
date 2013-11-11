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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20131111083758) do

  create_table "actas", force: true do |t|
    t.date     "fecha_reunion"
    t.string   "tipo_reunion"
    t.string   "lugar"
    t.text     "orden_dia"
    t.text     "desarrollo"
    t.text     "tareas"
    t.text     "conclusiones"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "actas", ["user_id"], name: "index_actas_on_user_id", using: :btree

  create_table "articulos", force: true do |t|
    t.string   "titulo"
    t.text     "contenido"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "articulos", ["user_id"], name: "index_articulos_on_user_id", using: :btree

  create_table "eventos", force: true do |t|
    t.string   "titulo"
    t.string   "lugar"
    t.date     "fecha"
    t.text     "descripcion"
    t.string   "imagen"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "foros", force: true do |t|
    t.string   "categoria"
    t.text     "tema"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "foros", ["user_id"], name: "index_foros_on_user_id", using: :btree

  create_table "integrantes", force: true do |t|
    t.string   "nombre"
    t.string   "primer_apellido"
    t.string   "segundo_apellido"
    t.text     "perfil"
    t.string   "twitter"
    t.string   "telefono"
    t.string   "imagen"
    t.text     "widget"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "integrantes", ["user_id"], name: "index_integrantes_on_user_id", using: :btree

  create_table "proyectos", force: true do |t|
    t.string   "titulo"
    t.text     "descripcion"
    t.string   "estapa"
    t.string   "imagen"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "proyectos_users", force: true do |t|
    t.integer  "user_id"
    t.integer  "proyectos_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "proyectos_users", ["proyectos_id"], name: "index_proyectos_users_on_proyectos_id", using: :btree
  add_index "proyectos_users", ["user_id"], name: "index_proyectos_users_on_user_id", using: :btree

  create_table "roles", force: true do |t|
    t.string   "name"
    t.integer  "resource_id"
    t.string   "resource_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "roles", ["name", "resource_type", "resource_id"], name: "index_roles_on_name_and_resource_type_and_resource_id", using: :btree
  add_index "roles", ["name"], name: "index_roles_on_name", using: :btree

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "users_roles", id: false, force: true do |t|
    t.integer "user_id"
    t.integer "role_id"
  end

  add_index "users_roles", ["user_id", "role_id"], name: "index_users_roles_on_user_id_and_role_id", using: :btree

end
