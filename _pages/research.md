---
layout: archive
title: " "
permalink: /research/
author_profile: true
---

{% include base_path %}

<!-- ## Current Research

- **Evaluation in Science and Innovation**
  - *Peer Review* – Why do papers get desk rejected, and how does consultation between reviewers and editors shape editorial decisions? As LLMs enter peer review, do they homogenize evaluation or broaden it, and how should human–AI review panels be designed to balance decision quality and scale?
  - *Patent Examination* – How do examiners interpret legal and technical claims? How do learning and routines in examiner–inventor interactions shape claim revisions, patent value, and litigation risk?
- **Evaluating AI in Expert Domains**
  - *Legal AI Evaluation* – How should we judge the quality of AI-generated legal work? 
  - *Implicit Assumptions in Legal Scholarship* – How can we surface the undefended assumptions in law review articles?
- **AI in Education**
  - *Cheating in the Age of Generative AI (ChAI)* – How do high school students and teachers respond to AI chatbots? How do motivation, belonging, and perceptions of schoolwork shape students' AI use and academic integrity? -->

<!-- Submission in Process -->
{% assign submissions = site.publications | where: "category", "submissions" | sort: "date" | reverse %}
{% if submissions.size > 0 %}
## Work in Progress
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

<!-- Conference Preprints -->
{% assign conference_preprints = site.publications | where: "category", "conference-preprints" | sort: "date" | reverse %}
{% if conference_preprints.size > 0 %}
### Conference Papers
<hr />
{% for post in conference_preprints %}
  {% include archive-single-publications.html %}
{% endfor %}
{% endif %}


<!-- Conference Papers -->
{% assign conferences = site.publications | where: "category", "conferences" | sort: "date" | reverse %}
{% if conferences.size > 0 %}
### Presentations
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
