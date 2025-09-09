# README

<div align="center">
  <div>
    <img src="https://img.shields.io/badge/-Ruby_On_Rails-black?style=for-the-badge&logoColor=white&logo=rubyonrails&color=ff0000" alt="TypeScript" />
    <img src="https://img.shields.io/badge/-PostgreSQL-black?style=for-the-badge&logoColor=white&logo=postgresql&color=4169E1" alt="postgresql" />
    <img src="https://img.shields.io/badge/-Tailwind_CSS-black?style=for-the-badge&logoColor=white&logo=tailwindcss&color=06B6D4" alt="tailwindcss" />
  </div>

  <h3 align="center">Bizz Card</h3>

   <div align="center">
     Build this project step by step with given below
    </div>
</div>

## 📋 <a name="table">Table of Contents</a>

1. 🤖 [Introduction](#introduction)
2. ⚙️ [Tech Stack](#tech-stack)
3. 🔋 [Features](#features)
4. 🤸 [Quick Start](#quick-start)
5. 🕸️ [Snippets (Code to Copy)](#snippets)

## 🚨 Tutorial

This repository contains the code for your self hosted Medical Record Management System.

## <a name="introduction">🤖 Introduction</a>

Built with Ruby on Rails, TypeScript, and Postgres, the Bizz Card is a production-grade platform featuring a public-facing app and an admin interface. It offers advanced functionalities like #TODO.

If you're getting started and need assistance or face any bugs, feel free to create an issue at https://github.com/dambar08/bizzrail_card/issues


## <a name="tech-stack">⚙️ Tech Stack</a>

- Ruby on Rails
- PostgreSQL
- TypeScript
- Tailwind CSS

## <a name="features">🔋 Features</a>

### Features of the Medical Record Management System Project

👉 **Open-source Authentication**: Powered by Rails 8’s built-in authentication framework, providing secure user registration, login, password reset, and session handling without third-party dependencies.

👉 **Card Management**: Create, customize, and manage digital business cards with personal or company details, making it easy to share and update professional contact information.

👉 **Role Management**: Fine-grained user roles and permissions for admins, moderators, and regular users, enabling secure access control across the platform.

👉 **Advanced Functionalities**: Caching, rate-limiting, DDoS protection, and custom notifications.  

👉 **Database Management**: Postgres with Self hosted for scalable and collaborative database handling.

👉 **Real-time Media Processing**: Instant processing and optimization of uploaded media (e.g., business card images, logos, profile pictures) with background jobs and WebSocket-powered live updates.

👉 **Efficient Caching**: Multi-layer caching with Redis and Rails’ solid_cache for faster response times, reduced load, and seamless scaling.

👉 **Database ORM**: ActiveRecord ORM for clean, object-oriented database interactions, with support for associations, validations, and callbacks.

👉 **Modern UI/UX**: Built with TailwindCSS, and other cutting-edge tools.  

👉 **Technology Stack**: Ruby on Rails with TypeScript for scalable development

👉 **Seamless Email Handling**: Integrated Action Mailer with Letter Opener and SMTP support for development and production, including email templates, previews, and delivery tracking.

and many more, including code architecture and reusability 

## <a name="quick-start">🤸 Quick Start</a>

Follow these steps to set up the project locally on your machine.

**Prerequisites**

Make sure you have the following installed on your machine:

- [Git](https://git-scm.com/)
- [Postgresql](https://docs.docker.com/engine/install/) (If you want to self host your postgresql)
- [Ruby](https://www.ruby-lang.org/en)
- [Node.js](https://nodejs.org/en)
- [yarn](https://yarnpkg.com/) (Node Package Manager)

**Cloning the Repository**

```bash
git clone https://github.com/dambar08/bizzrail_card.git
cd bizzrail_card
```

**Installation**
Install the project dependencies using bundler and yarn:

```bash
# If you want to run your own postgres, you will need docker
bundle
yarn
```

**Setvices**
Optional: If you want to use a self hosted postgres:

```bash
docker compose -f docker/services.yml up -d
```

**Set Up Environment Variables**

Copy the sample .env.local.example file to .env.local

```bash
cp .env.local.example .env.local
```

**Running the Project**

```bash
bin/setup

# Run application
bin/dev
```

Open [http://localhost:3000](http://localhost:3000) in your browser to view the project.

## <a name="snippets">🕸️ Snippets</a>

<details>
<summary><code>db/seeds.rb</code></summary>
</details>

Want to work together? You can reach out to me by creating an issue at https://github.com/dambar08/bizzrail_card/issues