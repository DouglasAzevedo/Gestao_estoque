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

ActiveRecord::Schema.define(version: 2019_11_13_230653) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cidades", force: :cascade do |t|
    t.string "nome"
    t.bigint "estado_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["estado_id"], name: "index_cidades_on_estado_id"
  end

  create_table "enderecos", force: :cascade do |t|
    t.string "rua"
    t.string "cep"
    t.string "numero"
    t.bigint "cidade_id"
    t.bigint "estado_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cidade_id"], name: "index_enderecos_on_cidade_id"
    t.index ["estado_id"], name: "index_enderecos_on_estado_id"
  end

  create_table "estados", force: :cascade do |t|
    t.string "nome"
    t.string "sigla"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "gprods", force: :cascade do |t|
    t.string "nome"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "movimentos", force: :cascade do |t|
    t.datetime "data"
    t.float "quantidade"
    t.bigint "pessoa_id"
    t.bigint "operacao_id"
    t.bigint "produto_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["operacao_id"], name: "index_movimentos_on_operacao_id"
    t.index ["pessoa_id"], name: "index_movimentos_on_pessoa_id"
    t.index ["produto_id"], name: "index_movimentos_on_produto_id"
  end

  create_table "operacaos", force: :cascade do |t|
    t.string "descricao"
    t.integer "tipo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pessoas", force: :cascade do |t|
    t.string "nome"
    t.string "documento"
    t.bigint "endereco_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["endereco_id"], name: "index_pessoas_on_endereco_id"
  end

  create_table "produtos", force: :cascade do |t|
    t.string "nome"
    t.bigint "unidade_id"
    t.bigint "gprod_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["gprod_id"], name: "index_produtos_on_gprod_id"
    t.index ["unidade_id"], name: "index_produtos_on_unidade_id"
  end

  create_table "unidades", force: :cascade do |t|
    t.string "descricao"
    t.string "sigla"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "cidades", "estados"
  add_foreign_key "enderecos", "cidades"
  add_foreign_key "enderecos", "estados"
  add_foreign_key "movimentos", "operacaos"
  add_foreign_key "movimentos", "pessoas"
  add_foreign_key "movimentos", "produtos"
  add_foreign_key "pessoas", "enderecos"
  add_foreign_key "produtos", "gprods"
  add_foreign_key "produtos", "unidades"
end
