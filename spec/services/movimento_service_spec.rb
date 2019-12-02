require 'rails_helper'

RSpec.describe MovimentoService, type: :model do

    context 'ao processar' do
        let(:endereco) { FactoryBot.create(:endereco) }
        let(:pessoa) { FactoryBot.create(:pessoa, endereco: endereco) }
        let(:grupo_produto) { FactoryBot.create(:gprod) }
        let(:unidade) { FactoryBot.create(:unidade) }
        let(:produto) { FactoryBot.create(:produto, 
                                          gprod: grupo_produto,
                                          unidade: unidade) }
        
        context 'uma compra' do
            let(:comprar) { FactoryBot.create(:operacao_compra) }
            let(:compra) { MovimentoService.comprar( FactoryBot.create(:movimento, operacao: comprar) ) }

            it 'deve retornar uma instancia de Movimento' do
                expect(compra).to be_an_instance_of(Movimento)
            end

            it 'deve salvar o movimento' do
                expect(compra.persisted?).to be true
            end
        end

        context 'uma venda com estoque menor ou igual ao cadastrado' do
            let(:vender) { FactoryBot.create(:operacao_venda) }
            let(:venda) { MovimentoService.vender( FactoryBot.create(:movimento, operacao: vender) ) }
            
            it 'deve retornar uma instancia de Movimento' do
                expect(venda).to be_an_instance_of(Movimento)
            end

            it 'deve salvar o movimento' do
                expect(venda.persisted?).to be true
            end
        end


        context 'uma venda com quantidade maior do que o cadastrado' do
            let(:vender) { FactoryBot.create(:operacao_venda) }
            let(:venda) { MovimentoService.vender( FactoryBot.create(:movimento, operacao: vender, quantidade: 100) ) }
            it 'deve validar' do
                expect{ venda }.to raise_error(an_instance_of(StandardError).and having_attributes(message: 'Estoque maior do que o disponivel'))
            end
        end


        context 'uma devolucao de compra com estoque de compra maior ou igual que a quantidade' do
            let(:operacao_devolucao_compra) { FactoryBot.create(:operacao_devolucao_compra) }
            let(:devolucaoCompra) { MovimentoService.devolver_compra( FactoryBot.create(:movimento, operacao: operacao_devolucao_compra) ) }

            it 'deve retornar uma instancia de Movimento' do
                expect(devolucaoCompra).to be_an_instance_of(Movimento)
            end

            it 'deve salvar o movimento' do
                expect(devolucaoCompra.persisted?).to be true
            end
        end

        context 'uma devolucao de compra com quantidade maior do que o cadastrado' do
            let(:operacao_devolucao_compra) { FactoryBot.create(:operacao_devolucao_compra) }
            let(:devolucaoCompra) { MovimentoService.devolver_compra( FactoryBot.create(:movimento, operacao: devolucaoCompra, quantidade: 100) ) }
            it 'deve validar' do
                expect{ devolucaoCompra }.to raise_error(an_instance_of(StandardError).and having_attributes(message: 'Estoque maior do que o disponivel'))
            end
        end

        context 'uma devolucao de venda com estoque de compra maior ou igual que a quantidade' do
            let(:operacao_devolucao_venda) { FactoryBot.create(:operacao_devolucao_venda) }
            let(:devolucaoVenda) { MovimentoService.devolver_venda( FactoryBot.create(:movimento, operacao: operacao_devolucao_venda) ) }

            it 'deve retornar uma instancia de Movimento' do
                expect(devolucaoVenda).to be_an_instance_of(Movimento)
            end

            it 'deve salvar o movimento' do
                expect(devolucaoVenda.persisted?).to be true
            end
        end

        context 'uma devolucao de compra com quantidade maior do que o cadastrado' do
            let(:operacao_devolucao_venda) { FactoryBot.create(:operacao_devolucao_venda) }
            let(:devolucaoVenda) { MovimentoService.devolver_venda( FactoryBot.create(:movimento, operacao: operacao_devolucao_venda, quantidade: 100) ) }
            it 'deve validar' do
                expect{ devolucaoVenda }.to raise_error(an_instance_of(StandardError).and having_attributes(message: 'Estoque maior do que o disponivel'))
            end
        end

    end

end