-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 20/10/2025 às 02:11
-- Versão do servidor: 10.4.28-MariaDB
-- Versão do PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `rack_management`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `connections`
--

CREATE TABLE `connections` (
  `id` int(11) NOT NULL,
  `switch_port` varchar(50) NOT NULL,
  `patch_panel_port` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `connections`
--

INSERT INTO `connections` (`id`, `switch_port`, `patch_panel_port`) VALUES
(1, 'R-C1 / S-01', 'P-01'),
(2, 'R-C2 / S-02', 'P-02'),
(3, 'R-P1 / S-03', 'P-03'),
(4, 'A-C1 / S-04', 'P-04'),
(5, 'A-C2 / S-05', 'P-05'),
(6, 'A-P1 / S-06', 'P-06'),
(7, 'X-C1 / S-07', 'P-07'),
(8, 'K1-C1 / S-08', 'P-08'),
(9, 'K2-C1 / S-09', 'P-09'),
(10, 'K3-C1 / S-10', 'P-10'),
(11, 'K4-C1 / S-11', 'P-11'),
(12, 'K5-C1 / S-12', 'P-12'),
(13, 'K6-C1 / S-13', 'P-13'),
(14, 'W-AP1 / S-14', 'P-14'),
(15, 'M-PA1 / S-15', 'P-15'),
(16, 'VAGO / S-16', 'P-16'),
(17, 'VAGO / S-17', 'P-17'),
(18, 'VAGO / S-18', 'P-18'),
(19, 'VAGO / S-19', 'P-19'),
(20, 'VAGO / S-20', 'P-20'),
(21, 'VAGO / S-21', 'P-21'),
(22, 'VAGO / S-22', 'P-22'),
(23, 'VAGO / S-23', 'P-23'),
(24, 'VAGO / S-24', 'P-24');

-- --------------------------------------------------------

--
-- Estrutura para tabela `equipment`
--

CREATE TABLE `equipment` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `model` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL,
  `unit` varchar(50) NOT NULL,
  `value` decimal(10,2) NOT NULL,
  `research_link` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `equipment`
--

INSERT INTO `equipment` (`id`, `name`, `description`, `model`, `quantity`, `unit`, `value`, `research_link`) VALUES
(1, 'Rack de Piso 12U', 'Maior, com melhor ventilação e segurança.', 'EXPAND-LINE', 1, 'Peça', 889.99, 'https://www.mercadolivre.com.br/rack-servidor-piso-padrao-19---12u-x-470mm/up/MLBU1731131376?pdp_filters=item_id:MLB3323338405&matt_tool=61921241&matt_internal_campaign_id=&matt_word=&matt_source=google&matt_campaign_id=22090354535&matt_ad_group_id=173090'),
(2, 'Nobreak Rack 3200VA Senoidal', 'Senoidal, Bivolt, para proteção de Switch/Firewall.', 'TS Shara', 1, 'Peça', 3499.99, 'https://www.kabum.com.br/produto/191161/nobreak-ts-shara-ups-senoidal-universal-3200va-2-baterias-internas-entrada-bivolt-automatica-senoidal-indicador-led-usb-4450?utm_id=22429583908&gad_source=1&gad_campaignid=22429583908&gbraid=0AAAAADx-HyED_2hnyHDhS-N'),
(3, 'Firewall (Hardware)', 'Essencial para segurança e controle de acesso.', 'Fortinet', 1, 'Peça', 2300.00, 'https://www.spotelecom.com.br/firewall/marca/fortinet/firewall-fortigate-200d-firewall-de-seguranca-avancada-com-suporte-a-vpn-idsips?parceiro=1&gad_source=1&gad_campaignid=23012757358&gbraid=0AAAAACtOzMTRgUGkgOiNVH1MtlzhnhEHG&gclid=Cj0KCQjw9czHBhCyARIsAF'),
(4, 'Patch Panel 24 Portas CAT6', 'Para terminação dos 15 pontos.', 'Furukawa', 1, 'Peça', 489.90, 'https://www.kabum.com.br/produto/474007/patch-panel-furukawa-t568a-b-soho-plus-cat-6-24-portas-35050439?utm_id=22429583908&gad_source=1&gad_campaignid=22429583908&gbraid=0AAAAADx-HyED_2hnyHDhS-NkZOUf8AOIq&gclid=Cj0KCQjw9czHBhCyARIsAFZlN8THrv-4eXJHwcNxWw9f'),
(5, 'Switch Gigabit 24 Portas', 'Não gerenciável (manter o custo baixo).', 'TP-Link', 1, 'Peça', 649.99, 'https://www.kabum.com.br/produto/22261/switch-wired-tp-link-gigabit-24-portas-tl-sg1024d?utm_id=22429583908&gad_source=1&gad_campaignid=22429583908&gbraid=0AAAAADx-HyED_2hnyHDhS-NkZOUf8AOIq&gclid=Cj0KCQjw9czHBhCyARIsAFZlN8SsgjBz0jtRRedRRl3lVdZmFgQHd9C-paq'),
(6, 'Access Point Corporativo Wi-Fi 6 (W-AP1)', 'Ponto de acesso para a Sala de Espera.', 'Ubiquiti', 1, 'Peça', 999.90, 'https://www.kabum.com.br/produto/662321/access-point-ubiquiti-wi-fi-6-2x2-multi-2-45ghz-2-975gbp-sem-fonte-u6?utm_id=22429583908&gad_source=1&gad_campaignid=22429583908&gbraid=0AAAAADx-HyED_2hnyHDhS-NkZOUf8AOIq&gclid=Cj0KCQjw9czHBhCyARIsAFZlN8R7L_5-QMVP01'),
(8, 'Reguá de Energia para Rack', 'Para ligar equipamentos.', 'Regua Rack 12 Tomadas 20A', 1, 'Peça', 154.48, 'https://www.kabum.com.br/produto/473609/regua-p-rack-max-eletron-12-tomadas-20a-cabo-1-10m-5306?utm_id=21434223550&gad_source=1&gad_campaignid=21430282493&gbraid=0AAAAADx-HyGufwvNeZDnmdaYVvKMuT6Wn&gclid=Cj0KCQjw9czHBhCyARIsAFZlN8StksIDfWDG4JPQ65YgLVA2Lxpf'),
(9, 'Cabo CAT6 UTP (305m)', '15 pontos requerem cerca de 200-250m. Uma caixa é o ideal.', 'Furukawa', 1, 'Caixa', 1049.90, 'https://www.kabum.com.br/produto/92088/cabo-de-rede-cat-6-furukawa-305-metros-azul-62154?utm_id=22429583908&gad_source=1&gad_campaignid=22429583908&gbraid=0AAAAADx-HyED_2hnyHDhS-NkZOUf8AOIq&gclid=Cj0KCQjw9czHBhCyARIsAFZlN8QvZTDXZ5tdwinqqJWdN3eJ7QeB577MC2n'),
(10, 'Conectores RJ-45 Fêmea (Keystone)', '15 para os pontos de parede + 1 de reserva.', 'Keystone', 16, 'Peça', 14.40, 'https://www.kabum.com.br/produto/427701/cabo-conector-keystone-rj45-cat6-branco?utm_id=21434223541&gad_source=1&gad_campaignid=21423803016&gbraid=0AAAAADx-HyH-BEQz7HfPARSBhq4QKMU1I&gclid=Cj0KCQjw9czHBhCyARIsAFZlN8QmyhGEW8_3LV7t5UHu9_BY_CJxlikESoi1rnMjhqcq'),
(11, 'Conjunto Montado Aria 4x2 1 Tomada de Rede/Internet RJ45', 'Para instalar os keystones nas paredes.', 'Tramontina', 15, 'Peça', 26.94, 'https://www.amazon.com.br/Conjunto-Montado-Tomada-Internet-Tramontina/dp/B07RFMBM1F/ref=sr_1_1?__mk_pt_BR=%C3%85M%C3%85%C5%BD%C3%95%C3%91&crid=1IX3PDLVWDIEU&dib=eyJ2IjoiMSJ9.rtZlq7Bzf7gI7IGmJBr-fmTHrbTDbZ3pkVD9REK-2aaJtnZAZDNBROp0AVe-vcwf9fTtReOXz05Xti0Vt'),
(12, 'Patch Cords (1m - Switch/PP)', 'Cabos para conectar o Switch ao Patch Panel.', 'PlusCable', 15, 'Peça', 8.90, 'https://www.amazon.com.br/PlusCable-Cabo-Patch-CAT610BL-Cat-6/dp/B0CKD3G2DT/ref=asc_df_B0CKD3G2DT?mcid=37d705b301a23a75858d6faa407d1906&tag=googleshopp00-20&linkCode=df0&hvadid=709884378136&hvpos=&hvnetw=g&hvrand=15437223818697393511&hvpone=&hvptwo=&hvqmt'),
(13, 'Canaleta Plástica de Sobrepor (Dupla-Face)', 'Estimativa de 3 metros por ponto + trechos de passagem.', 'Fame', 5, 'Kit', 120.00, 'https://www.mercadolivre.com.br/kit-10-canaleta-1-metro-fita-dupla-face-pvc-branca-40x16mm/up/MLBU3413049771?pdp_filters=item_id:MLB5691449416&matt_tool=47518833&matt_internal_campaign_id=&matt_word=&matt_source=google&matt_campaign_id=22090354007&matt_ad'),
(14, 'Abraçadeiras, parafusos, buchas', 'Materiais de fixação e organização.', 'Saturno', 1, 'Kit', 48.45, 'https://www.mercadolivre.com.br/50-abracadeira-tipo-u-34-aco-c-100-buchas-e-100-parafusos-cor-prateado/p/MLB38521456?pdp_filters=item_id%3AMLB4927152154&from=gshop&matt_tool=48995110&matt_internal_campaign_id=&matt_word=&matt_source=google&matt_campaign_i'),
(15, 'Conector Rj45 Macho Cat6/cat5e 8p8c Cabo Rede Crimpar 100un', 'para Crimpar os cabos', 's/m', 1, 'pc', 29.70, 'https://www.kabum.com.br/produto/730601/conector-rj45-macho-cat6-cat5e-8p8c-cabo-rede-crimpar-100un');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `connections`
--
ALTER TABLE `connections`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `equipment`
--
ALTER TABLE `equipment`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `connections`
--
ALTER TABLE `connections`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de tabela `equipment`
--
ALTER TABLE `equipment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
