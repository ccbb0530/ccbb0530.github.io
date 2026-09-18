---
layout: page
title: Resources
permalink: /resources/
description: Course notes, homework solutions, and student projects.
nav: true
nav_order: 3
---

Each subject has its own page with course details, notes, and related materials.

## Notes & Homework

{% assign courses = site.pages | where: 'resource_category', 'Notes & Homework' | sort: 'resource_order' %}
{% for course in courses %}

### [{{ course.title }}]({{ course.url | relative_url }})

{{ course.description }}
{% endfor %}

## Projects

{% assign projects = site.pages | where: 'resource_category', 'Projects' | sort: 'resource_order' %}
{% for project in projects %}

### [{{ project.title }}]({{ project.url | relative_url }})

{{ project.description }}
{% endfor %}
