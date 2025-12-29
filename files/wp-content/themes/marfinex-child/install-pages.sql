-- =====================================================
-- Marfinex Pages Installation Script
-- Run this SQL after importing the main database
-- =====================================================

-- Create About Page
INSERT INTO `wp7i_posts` (`post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, NOW(), NOW(), '', 'Nosotros', '', 'publish', 'closed', 'closed', '', 'about', '', '', NOW(), NOW(), '', 0, 'https://marfinex.com/?page_id=100', 0, 'page', '', 0);

SET @about_id = LAST_INSERT_ID();

INSERT INTO `wp7i_postmeta` (`post_id`, `meta_key`, `meta_value`) VALUES
(@about_id, '_elementor_edit_mode', 'builder'),
(@about_id, '_elementor_template_type', 'wp-page'),
(@about_id, '_elementor_version', '3.34.0'),
(@about_id, '_wp_page_template', 'elementor_header_footer');

-- Create Services Page
INSERT INTO `wp7i_posts` (`post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, NOW(), NOW(), '', 'Servicios', '', 'publish', 'closed', 'closed', '', 'services', '', '', NOW(), NOW(), '', 0, 'https://marfinex.com/?page_id=101', 0, 'page', '', 0);

SET @services_id = LAST_INSERT_ID();

INSERT INTO `wp7i_postmeta` (`post_id`, `meta_key`, `meta_value`) VALUES
(@services_id, '_elementor_edit_mode', 'builder'),
(@services_id, '_elementor_template_type', 'wp-page'),
(@services_id, '_elementor_version', '3.34.0'),
(@services_id, '_wp_page_template', 'elementor_header_footer');

-- Create Projects Page
INSERT INTO `wp7i_posts` (`post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, NOW(), NOW(), '', 'Proyectos', '', 'publish', 'closed', 'closed', '', 'projects', '', '', NOW(), NOW(), '', 0, 'https://marfinex.com/?page_id=102', 0, 'page', '', 0);

SET @projects_id = LAST_INSERT_ID();

INSERT INTO `wp7i_postmeta` (`post_id`, `meta_key`, `meta_value`) VALUES
(@projects_id, '_elementor_edit_mode', 'builder'),
(@projects_id, '_elementor_template_type', 'wp-page'),
(@projects_id, '_elementor_version', '3.34.0'),
(@projects_id, '_wp_page_template', 'elementor_header_footer');

-- Create Contact Page
INSERT INTO `wp7i_posts` (`post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, NOW(), NOW(), '', 'Contacto', '', 'publish', 'closed', 'closed', '', 'contact', '', '', NOW(), NOW(), '', 0, 'https://marfinex.com/?page_id=103', 0, 'page', '', 0);

SET @contact_id = LAST_INSERT_ID();

INSERT INTO `wp7i_postmeta` (`post_id`, `meta_key`, `meta_value`) VALUES
(@contact_id, '_elementor_edit_mode', 'builder'),
(@contact_id, '_elementor_template_type', 'wp-page'),
(@contact_id, '_elementor_version', '3.34.0'),
(@contact_id, '_wp_page_template', 'elementor_header_footer');

-- Update WPForms notification email to hello@marfinex.com
UPDATE `wp7i_posts`
SET `post_content` = REPLACE(`post_content`, 'admin@marfinex.com', 'hello@marfinex.com')
WHERE `post_type` = 'wpforms';

-- Output the page IDs for reference
SELECT 'Pages Created:' as Info;
SELECT @about_id as About_ID, @services_id as Services_ID, @projects_id as Projects_ID, @contact_id as Contact_ID;
