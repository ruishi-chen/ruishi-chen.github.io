---
layout: archive
title: " "
permalink: /research/
author_profile: true
---

{% include base_path %}

## Current Research

- **Evaluative Systems in Science and Innovation** - How do institutions decide which ideas deserve recognition and advancement? I study evaluation processes such as scientific peer review and patent examination to understand how experts interpret evidence, exchange judgments, and reach decisions under uncertainty. 
- **LLM in Peer Review** - Why is peer review important? How do reviewers and editors operate the process? What factors impact editorial decisions? As AI systems increasingly participate in evaluation and collaboration, how do they reshape decision processes? 
- **Character AI (ChAI)** - How do students' perceptions of school experiences influence their use of AI in educational contexts? 


<!-- Submission in Process -->
{% assign submissions = site.publications | where: "category", "submissions" | sort: "date" | reverse %}
{% if submissions.size > 0 %}
## Work in Process
<hr />
{% for post in submissions %}
  {% include archive-single-publications.html %}
{% endfor %}
{% endif %}

## Publications

<!-- Journal Articles -->
{% assign manuscripts = site.publications | where: "category", "manuscripts" | sort: "date" | reverse %}
{% if manuscripts.size > 0 %}
### Journal Articles
<hr />
{% for post in manuscripts %}
  {% include archive-single-publications.html %}
{% endfor %}
{% endif %}


<!-- Conference Papers -->
{% assign conferences = site.publications | where: "category", "conferences" | sort: "date" | reverse %}
{% if conferences.size > 0 %}
### Conference Papers/Presentations
<hr />
{% for post in conferences %}
  {% include archive-single-publications.html %}
{% endfor %}
{% endif %}

<!-- Others -->
{% assign others = site.publications | where: "category", "others" | sort: "date" | reverse %}
{% if others.size > 0 %}
### Others
<hr />
{% for post in others %}
  {% include archive-single-publications.html %}
{% endfor %}
{% endif %}
