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
  <a href="#homework">Homework</a>
  <a href="#schedule">Schedule</a>
  <a href="#course-materials">Materials</a>
</nav>

## Course information

**Instructor:** Prof. Dangzheng Liu · **Teaching assistant:** [Peigan Gao](mailto:gaopg@mail.ustc.edu.cn)

<dl class="course-logistics">
  <div>
    <dt>Monday lecture</dt>
    <dd>14:00–15:35<span>Weeks 1–5 and 7–15</span></dd>
  </div>
  <div>
    <dt>Thursday lecture</dt>
    <dd>09:45–11:20<span>Weeks 1–4 and 6–15</span></dd>
  </div>
  <div>
    <dt>Saturday recitation</dt>
    <dd>15:55–18:20<span>Eight sessions · dates below</span></dd>
  </div>
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

Midterm and final test dates are **to be announced**.

## Homework

Submit homework **once a week**. **Weeks 1–2 are combined into one submission**; from Week 3 onward, submit one set each week.
Complete the textbook's **end-of-section exercises** for the sections taught that week, as listed in the schedule. Chapter 0 has no exercise set.

<p class="course-homework-note">Each homework group has one entry in the <strong>Homework answers</strong> column. Answer files will be linked as they become available. The submission day and time, and exercises for the final review week, will be announced.</p>

## Schedule

The first lecture covers **Chapter 0**. Each subsequent lecture covers one section through **§5.4**, excluding the chapter problem sections.
The three remaining Monday/Thursday classes are recitations. Saturday recitations are listed alongside the lectures and shaded for easy reference.

<table class="course-schedule" role="table">
  <caption>Fall 2026 · Page numbers refer to 简明概率论. Homework is grouped by teaching week; row placement does not indicate a deadline.</caption>
  <thead>
    <tr>
      <th scope="col">Week</th>
      <th scope="col">Date &amp; time</th>
      <th scope="col">Topic &amp; materials</th>
      <th scope="col">Weekly homework</th>
      <th scope="col">Homework answers</th>
    </tr>
  </thead>
  {% for group in site.data.math3007_homework_2026 %}
    {% assign sessions = site.data.math3007_2026 | where_exp: 'session', 'group.weeks contains session.week' %}
    <tbody class="schedule-group">
    {% for session in sessions %}
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
          <div class="schedule-materials">
          {% if session.reading %}
            <span class="schedule-reading">{{ session.reading }}</span>
            <span class="schedule-pages"> · pp. {{ session.page_start }}–{{ session.page_end }}</span>
          {% elsif session.material %}
            <a href="{{ session.material | relative_url }}">{{ session.material_label }}</a>
          {% else %}
            <span class="schedule-detail">{{ session.note }}</span>
          {% endif %}
          </div>
        </td>
        {% if forloop.first %}
          <td class="schedule-homework" rowspan="{{ sessions.size }}"{% if group.homework %} id="homework-{{ group.homework }}"{% endif %}>
            {% if group.homework %}
              <strong class="homework-number">Homework {{ group.homework }}</strong>
              <span class="schedule-detail">{% if group.weeks.size > 1 %}Weeks {{ group.weeks.first }}–{{ group.weeks.last }} · combined{% else %}Week {{ group.weeks.first }}{% endif %}</span>
              <ul class="homework-exercises" aria-label="Textbook exercise sets">
                {% for lecture in sessions %}
                  {% if lecture.kind == 'lecture' and lecture.section != '0' %}
                    <li lang="zh-CN">习题 {{ lecture.section }}</li>
                  {% endif %}
                {% endfor %}
              </ul>
              {% if group.note %}<span class="schedule-detail">{{ group.note }}</span>{% endif %}
            {% else %}
              <span class="schedule-detail">Recitation only</span>
            {% endif %}
          </td>
          <td class="schedule-answers" rowspan="{{ sessions.size }}">
            {% if group.homework %}
              <span class="schedule-mobile-label">Homework answers</span>
              {% if group.answers %}
                <a href="{{ group.answers | relative_url }}" aria-label="Answers for Homework {{ group.homework }}">Answers {{ group.homework }}</a>
              {% else %}
                <span class="answer-pending" aria-label="Answers for Homework {{ group.homework }} not yet posted">Not posted</span>
              {% endif %}
            {% else %}
              <span class="schedule-detail" aria-label="Not applicable">—</span>
            {% endif %}
          </td>
        {% endif %}
      </tr>
    {% endfor %}
    </tbody>
  {% endfor %}
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
