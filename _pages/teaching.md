---
layout: page
title: Teaching
permalink: /teaching/
description: Teaching assistance and course materials at USTC.
nav: true
nav_order: 2
---

{% assign courses = site.teachings | sort: 'date' | reverse %}
{% for course in courses %}

## [{{ course.title }}]({{ course.url | relative_url }})

**{{ course.term }} {{ course.year }} · {{ course.role }}**

{{ course.description }}

**Lecturer:** {{ course.instructor }}

[Course details, references, and materials →]({{ course.url | relative_url }})
{% endfor %}
