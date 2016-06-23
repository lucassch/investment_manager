class InvestmentTypes < EnumerateIt::Base
  associate_values :renda_fixa_lci, :renda_fixa_lca, :renda_fixa_cdb, :renda_fixa_lc,
                   :poupanca, :tesouro_direto

  sort_by :translation
end
