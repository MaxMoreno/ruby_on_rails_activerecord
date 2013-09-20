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

ActiveRecord::Schema.define(version: 20130920014404) do

  create_table "direccions", force: true do |t|
    t.string   "calle"
    t.text     "zona"
    t.string   "pais"
    t.text     "ciudad"
    t.integer  "usuario_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "facturas", force: true do |t|
    t.string   "referencia"
    t.text     "monto"
    t.integer  "usuario_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "personas", force: true do |t|
    t.string   "nombre"
    t.string   "email"
    t.string   "identificador"
    t.string   "sexo"
    t.string   "telefono"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "telefonos", force: true do |t|
    t.string   "tipo"
    t.text     "telefono"
    t.integer  "direccion_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "usuarios", force: true do |t|
    t.string   "nombre"
    t.string   "apellido"
    t.date     "nacimiento"
    t.string   "sexo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
