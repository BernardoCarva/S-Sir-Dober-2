-- Dados de exemplo para o Sir Dober Site Builder

-- Inserir usuário de demonstração
INSERT INTO users (id, email, name, password_hash) VALUES 
('550e8400-e29b-41d4-a716-446655440000', 'demo@sirdober.com', 'Usuário Demo', '$2b$10$example_hash_here')
ON CONFLICT (email) DO NOTHING;

-- Inserir sites de exemplo
INSERT INTO sites (id, user_id, name, slug, status, views) VALUES 
('550e8400-e29b-41d4-a716-446655440001', '550e8400-e29b-41d4-a716-446655440000', 'Meu Portfólio', 'meu-portfolio', 'published', 1250),
('550e8400-e29b-41d4-a716-446655440002', '550e8400-e29b-41d4-a716-446655440000', 'Loja Online', 'minha-loja', 'draft', 0),
('550e8400-e29b-41d4-a716-446655440003', '550e8400-e29b-41d4-a716-446655440000', 'Blog Pessoal', 'meu-blog', 'published', 890)
ON CONFLICT (slug) DO NOTHING;

-- Inserir componentes do site portfólio
INSERT INTO site_components (site_id, component_type, content, styles, position) VALUES 
('550e8400-e29b-41d4-a716-446655440001', 'heading', 'João Silva - Desenvolvedor Web', '{"fontSize": "3xl", "color": "#1f2937", "textAlign": "center"}', 1),
('550e8400-e29b-41d4-a716-446655440001', 'text', 'Sou um desenvolvedor apaixonado por criar experiências digitais incríveis. Com mais de 5 anos de experiência, trabalho com as mais modernas tecnologias web.', '{"color": "#6b7280", "textAlign": "center", "padding": "4"}', 2),
('550e8400-e29b-41d4-a716-446655440001', 'image', '/placeholder.svg?height=300&width=600', '{}', 3),
('550e8400-e29b-41d4-a716-446655440001', 'button', 'Entre em Contato', '{"backgroundColor": "#3b82f6", "color": "#ffffff", "padding": "3", "textAlign": "center"}', 4);

-- Inserir componentes do blog
INSERT INTO site_components (site_id, component_type, content, styles, position) VALUES 
('550e8400-e29b-41d4-a716-446655440003', 'heading', 'Meu Blog Pessoal', '{"fontSize": "2xl", "color": "#1f2937", "textAlign": "center"}', 1),
('550e8400-e29b-41d4-a716-446655440003', 'text', 'Compartilho aqui minhas experiências, aprendizados e reflexões sobre tecnologia, vida e carreira.', '{"color": "#6b7280", "textAlign": "center", "padding": "4"}', 2);
