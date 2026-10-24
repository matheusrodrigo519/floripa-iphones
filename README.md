# Floripa iPhones — Showroom público

Vitrine de apresentação da Floripa iPhones, preparada para **GitHub Pages** e publicada a partir dos arquivos estáticos deste repositório.

**Endereço público (após ativar o GitHub Pages):** https://matheusrodrigo519.github.io/floripa-iphones/

## Estrutura de publicação

- `index.html`: entrada do site, metadados e carregamento do aplicativo.
- `assets/`: estilos, JavaScript, logotipo e fotos otimizadas dos produtos e da loja.
- `.nojekyll`: garante que os arquivos estáticos sejam servidos diretamente pelo GitHub Pages.

Todos os caminhos dos arquivos usam o prefixo `/floripa-iphones/`, compatível com o endereço acima.

## Ativar a publicação (uma única vez)

1. Abra **Settings → Pages** neste repositório.
2. Em **Build and deployment**, escolha **Deploy from a branch**.
3. Selecione a branch **main** e a pasta **/(root)**.
4. Clique em **Save**. Aguarde a implantação e acesse o endereço público acima.

Depois de ativado, novos commits em `main` atualizarão o site automaticamente. O repositório deve permanecer público para uso gratuito do GitHub Pages.

## Experiência da vitrine

- Interface responsiva com iPhones em movimento, sombras e efeitos de destaque.
- Busca, filtros, favoritos, comparação e seleção de modelos.
- Botão **Seu novo favorito** para adicionar o iPhone 16 Pro à seleção.
- Galeria com imagens da loja e destaque de avaliações do Google.
- Contato pelo Instagram oficial `@floripa_iphones`, sem número pessoal de WhatsApp.
- Imagens e preços ilustrativos/sob consulta; disponibilidade deve ser confirmada pela loja.

## Importante: recursos dinâmicos

O **GitHub Pages hospeda apenas arquivos estáticos**. O showroom pode tentar consultar o servidor original do projeto para catálogo e avaliações; se a consulta do catálogo falhar, a vitrine exibe os modelos de apresentação locais.

A **gravação pública de novas avaliações, atualização compartilhada do estoque, envio de imagens e painel administrativo** dependem de um backend com banco de dados e permissões adequadas. Esses recursos **não são hospedados pelo GitHub Pages** e não devem ser anunciados como independentes do servidor original. O botão para avaliações no Google continua apontando ao perfil público da loja.

Não coloque senhas de administração, tokens ou chaves privadas nos arquivos deste repositório.
