---
layout: page
title: Probability Theory
description: MATH3007.01 · Fall 2026 · University of Science and Technology of China
course_code: MATH3007.01
permalink: /teaching/26-fall-teaching
date: 2026-08-31
year: 2026
term: Fall
role: Teaching assistant
instructor: Prof. Dangzheng Liu
location: Hefei, China
math: true
---

<nav class="course-jump-links" aria-label="Course sections">
  <a href="#course-information">Course information</a>
  <a href="#assessment">Assessment</a>
  <a href="#schedule">Schedule</a>
  <a href="#course-materials">Materials</a>
</nav>

## Course information

**Instructor:** Prof. Dangzheng Liu · **Teaching assistant:** [Peigan Gao](mailto:gaopg@mail.ustc.edu.cn)

<dl class="course-logistics">
  <dt>Monday</dt>
  <dd>14:00–15:35 · Weeks 1–5 and 7–15</dd>
  <dt>Thursday</dt>
  <dd>09:45–11:20 · Weeks 1–4 and 6–15</dd>
  <dt>Saturday recitation</dt>
  <dd>15:55–18:20 · Eight sessions, following the dates below</dd>
</dl>

Week 1 begins on **August 31, 2026**. All times are **China Standard Time (UTC+8)**.

{% assign recitations = site.data.math3007_2026 | where: 'kind', 'recitation' %}

<p class="course-recitation-dates">
  <strong>Saturday dates:</strong>
  {% for session in recitations %}
    <a href="#class-{{ session.date }}">{{ session.date | date: '%b %-d' }}</a>{% unless forloop.last %}<span aria-hidden="true"> · </span>{% endunless %}
  {% endfor %}
</p>

**Students:** Sophomore mathematics students. **Prerequisites:** Mathematical Analysis I–II, Linear Algebra I, and basic measure theory.

## Assessment

<table class="course-assessment">
  <thead>
    <tr><th scope="col">Component</th><th scope="col">Weight</th></tr>
  </thead>
  <tbody>
    <tr><td>Homework (+ attendance)</td><td>20%</td></tr>
    <tr><td>Midterm test</td><td>30%</td></tr>
    <tr><td>Final test</td><td>50%</td></tr>
  </tbody>
</table>

Midterm and final test dates, homework assignments, and due dates are **to be announced**.

## Schedule

The first lecture covers **Chapter 0**. Each subsequent lecture covers one section through **§5.4**, excluding the chapter problem sections.
The three remaining Monday/Thursday classes are recitations. Saturday recitations are listed alongside the lectures and shaded for easy reference.

<table class="course-schedule" role="table">
  <caption>Fall 2026 · Reading page numbers refer to the printed pages of 简明概率论.</caption>
  <thead>
    <tr>
      <th scope="col">Week</th>
      <th scope="col">Date &amp; time</th>
      <th scope="col">Topic</th>
      <th scope="col">Reading / materials</th>
    </tr>
  </thead>
  <tbody>
    {% for session in site.data.math3007_2026 %}
      <tr class="schedule-{{ session.kind }}" id="class-{{ session.date }}">
        <td class="schedule-week"><span class="schedule-week-prefix">Week </span>{{ session.week }}</td>
        <th scope="row" class="schedule-date">
          <time datetime="{{ session.date }}">{{ session.date | date: '%a, %b %-d' }}</time>
          {% unless session.kind == 'break' %}<span class="schedule-detail">{{ session.time }}</span>{% endunless %}
        </th>
        <td class="schedule-topic">
          <span class="schedule-label">{{ session.label }}</span>
          <strong>{{ session.title }}</strong>
          <span class="schedule-detail" lang="zh-CN">{{ session.title_zh }}</span>
        </td>
        <td class="schedule-materials">
          {% if session.reading %}
            <span class="schedule-reading">{{ session.reading }}</span>
            <span class="schedule-detail">pp. {{ session.page_start }}–{{ session.page_end }}</span>
          {% elsif session.material %}
            <a href="{{ session.material | relative_url }}">{{ session.material_label }}</a>
          {% else %}
            <span class="schedule-detail">{{ session.note }}</span>
          {% endif %}
        </td>
      </tr>
    {% endfor %}
  </tbody>
</table>

## Course materials

**Textbook:** 刘党政 (Dangzheng Liu), _简明概率论_ (_Concise Probability Theory_), 2026. The course covers Chapters 0–5.
The textbook is distributed internally at USTC.

**Recitation 1 · September 12:** [概率论习题课讲义 0912 (PDF)]({{ '/files/teaching/math3007-2026/recitation-2026-09-12.pdf' | relative_url }}).
The handout reviews mathematical analysis, measure theory, measurable functions, Lebesgue integration, convergence, and related preliminaries.
Later recitation topics and materials will be announced as the course progresses.

### Reference books

1. Geoffrey Grimmett and David Stirzaker, _Probability and Random Processes_, 4th ed., Oxford University Press, 2020.
2. Geoffrey Grimmett and David Stirzaker, _One Thousand Exercises in Probability_, 3rd ed., Oxford University Press, 2020.
3. Rick Durrett, _Probability: Theory and Examples_, 5th ed., Cambridge University Press, 2019.
