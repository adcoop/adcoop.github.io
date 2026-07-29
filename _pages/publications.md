---
layout: archive
title: "Publications"
permalink: /publications/
author_profile: true
---

{% include base_path %}

My publications are organized around the four research areas described in my research statement.

## 1. Bloc Voting and Accountability: Political Behavior, Organizing, and the Environment {#bloc-voting}

{% assign pubs = site.publications | where: "theme", "bloc-voting" | sort: "date" | reverse %}
{% for post in pubs %}
  {% include archive-single.html type="grid" %}
{% endfor %}

## 2. Disaster Politics: Political Behavior and the Environment {#disaster-politics}

{% assign pubs = site.publications | where: "theme", "disaster-politics" | sort: "date" | reverse %}
{% for post in pubs %}
  {% include archive-single.html type="grid" %}
{% endfor %}

## 3. Water Politics: Community Organizing, Equity, and Water Resources {#water-politics}

{% assign pubs = site.publications | where: "theme", "water-politics" | sort: "date" | reverse %}
{% for post in pubs %}
  {% include archive-single.html type="grid" %}
{% endfor %}

## 4. Methodology: Tools and Applications for Political Science and Environmental Studies {#methodology}

{% assign pubs = site.publications | where: "theme", "methodology" | sort: "date" | reverse %}
{% for post in pubs %}
  {% include archive-single.html type="grid" %}
{% endfor %}
