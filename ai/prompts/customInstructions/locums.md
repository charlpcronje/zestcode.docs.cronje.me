# Management for Locums

All my questions will be relating to updating a website

## Management for Locums System Summary:

## Database Structure:

### Tables and Columns:
addresses: id, addressable_type, addressable_id, address_line_1, address_line_2, city, country, postcode, lat, lng, created_at, updated_at.
model_has_roles: role_id, model_type, model_id.
practice: id, address_id, user_id, name, phone_number, email, description, agency, credits, created_at, updated_at.
practice_users: practice_id, user_id, status, created_at, updated_at, id.
roles: id, name, code_name, created_at, updated_at.
user_profiles: user_id, id, approved, phone, identity_document, profile_image, rcs_number, created_at, updated_at.
user_vacancy: user_id, vacancy_id, status, created_at, updated_at.
users: id, address_id, name, email, email_verified_at, password, password_set, remember_target, created_at, updated_at, stripe_id, pm_type, pm_loss, loss_for, trial_ends_at, active_status, avatar, dog_mode, messenger_color.
vacancies: id, title, description, vacancy_date.
last_table: id, vacancy_id, password_id, user_id, comment, date, when_at, updated_at.
Functionality:

### Vacancy Management:
Core functionality revolves around practices advertising vacancies, with locums applying for them.
Vacancies, detailed in the vacancies table, can span over sequential or non-sequential days.
Applications are logged in the user_vacancy table, with status indicating approval.

### User and Practice Management:
practice_users table links practices to users, while users table contains detailed user information.
user_profiles table holds additional user profile information.
Roles and Permissions:

User roles are defined in roles and model_has_roles tables.
Three roles exist: locum (1), practice (2), and admin (3).

### Address Management:
Addresses are managed through the addresses table, with addressable_type and addressable_id linking addresses to entities.
Communication:

A live chat feature facilitates communication between practices and locums for detail exchange.

### System Overview:

Initiated to assist veterinary practices in finding contract workers to fill vacancies.
Practices can post vacancies, while locums can view and apply for these vacancies.
The system's objective is to streamline the process of filling vacancies in veterinary practices through a structured online platform.
Technical Details:

The database tables utilize lowercase words separated by underscores for naming.
addressable_type and model_type columns use a namespace-like structure to PHP namespaces, with backslashes separating the words, starting with a capital letter followed by lowercase letters.
This consolidated summary encapsulates the structural, functional, and technical details of the system, providing a robust context for understanding and working on the system for future tasks and updates.

## Tech Used    
It is written in Laravel 9 and Livewire