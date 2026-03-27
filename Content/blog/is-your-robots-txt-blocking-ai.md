---
layout: BlogPost
tags: Platform Readiness, AI Crawlers, Quick Wins
title: Is Your Robots.txt Blocking AI? How to Check in 5 Minutes
description: Your robots.txt file might be telling AI crawlers to stay away from your entire site — and you probably don't know it. Here's how to check and fix it.
date: 2026-03-27 07:00
published: true
---

Right now, your website might be completely invisible to ChatGPT, Claude, Perplexity, and every other AI system that people use to find businesses like yours. Not because your content is bad. Not because your SEO is weak. Because a single text file on your server is telling AI crawlers to go away — and you probably don't even know it's there.

The good news: this is one of the fastest things you can check and fix. Let's walk through it.

## What Is Robots.txt, Exactly?

Every website has (or should have) a file called `robots.txt`. It sits at the root of your domain and acts like a set of instructions for web crawlers — the automated programs that scan the internet, index content, and feed information into search engines and AI systems.

Think of it as a sign on your front door. It can say "come on in," "stay out of the basement," or "go away entirely." Crawlers are expected to follow these instructions, and most of them do.

## AI Crawlers Are Not the Same as Google

Here's where things get interesting. Most people think of web crawlers as Google's indexing bot. But AI companies have their own crawlers, and they're separate from traditional search. Blocking Google's search crawler doesn't necessarily block AI crawlers, and vice versa.

Here are the ones that matter most:

**The big ones you need to know about:**

- **GPTBot** — OpenAI's crawler. This is what feeds content into ChatGPT's knowledge and training. If GPTBot can't access your site, ChatGPT may not know your business exists.
- **ChatGPT-User** — A separate OpenAI crawler that fetches pages in real time when a ChatGPT user asks about something specific. Block this, and ChatGPT can't look you up even when someone asks about you directly.
- **ClaudeBot** — Anthropic's crawler for Claude, one of the most widely used AI assistants in business.
- **PerplexityBot** — Powers Perplexity, the AI search engine that's growing fast and directly cites sources in its answers.

**Also important:**

- **Google-Extended** — This is separate from Google's regular search crawler. It controls whether your content feeds into Google's AI Overviews (those AI-generated summaries at the top of search results).
- **Applebot** — Powers Siri and Apple's AI features. If your audience uses iPhones, this one matters.
- **Amazonbot** — Feeds into Alexa and Amazon's AI systems.

**Worth knowing about:**

- **CCBot** — The Common Crawl bot. Common Crawl is a massive open dataset that many AI models use for training data. Blocking it can reduce your presence in future AI models.

Each of these crawlers identifies itself differently, and your robots.txt can allow or block each one independently. That's where problems start.

## How to Check Your Robots.txt Right Now

This takes about thirty seconds. Open your browser and type your website address followed by `/robots.txt`. For example:

`https://yourcompany.com/robots.txt`

You'll see a plain text file. It might be short or long, but what you're looking for are lines that start with `User-agent:` and `Disallow:`.

If you see something like this, you're in good shape:

```
User-agent: *
Allow: /
```

That tells all crawlers they're welcome to access your entire site.

But if you see something like this, you have a problem:

```
User-agent: *
Disallow: /
```

That single forward slash after `Disallow` means "block everything." Every crawler — including every AI system — is being told to stay away from your entire site.

## Common Problems and What They Look Like

**The blanket block.** The most common issue is a `Disallow: /` rule applied to all user agents (`User-agent: *`). This was often set up years ago to block search engines during development and never removed. Or it was added by a CMS default that nobody reviewed.

**Overly specific AI blocks.** Some sites have added rules like these, sometimes intentionally but sometimes by copying configurations they didn't fully understand:

```
User-agent: GPTBot
Disallow: /

User-agent: ClaudeBot
Disallow: /
```

This explicitly blocks AI crawlers while potentially allowing Google's search bot. If this was a deliberate choice, fine. But many site owners don't realize these rules were added by a plugin, a hosting provider, or a well-meaning developer who defaulted to blocking.

**CMS and platform defaults.** WordPress, Shopify, Wix, and other platforms sometimes ship with robots.txt rules that are more restrictive than you'd want. Some security plugins block all bots by default. Some staging-to-production migrations carry over "block everything" rules that were appropriate for a test site but not for a live one.

**Wildcard rules that catch more than intended.** Rules using wildcards can accidentally block AI crawlers that weren't specifically targeted. A rule meant to block one type of scraper can end up blocking legitimate AI systems too.

## What to Do About It

First, check whether you actually have a problem. Go look at your robots.txt file using the method above. If everything looks open, you're probably fine — but keep reading about llms.txt below.

If you find overly restrictive rules, here's the general approach:

1. **Identify what's being blocked and why.** Talk to whoever manages your website. There may have been a reason for the rules, or they may have been set up by default and forgotten.

2. **Decide which AI crawlers you want to allow.** Most businesses benefit from being visible to AI systems. If people are asking ChatGPT or Perplexity for recommendations in your industry and your site is blocked, you're missing out.

3. **Update the file carefully.** Robots.txt changes take effect immediately, but it can take days or weeks for AI crawlers to revisit your site and update their indexes. Don't expect instant results.

4. **Consider getting granular.** You might want AI crawlers to access your public content but not your customer portal, admin pages, or certain directories. That's perfectly reasonable and easy to set up.

If you're not comfortable editing the file yourself, any web developer can handle it in minutes. It's a simple text file — there's nothing complicated about the format.

## Llms.txt: The New File AI Systems Are Looking For

While robots.txt tells crawlers what they *can't* access, there's a new standard emerging that tells AI systems what your site *is* about. It's called `llms.txt`, and it sits at the root of your domain just like robots.txt.

The idea behind llms.txt is straightforward: give AI systems a structured summary of your business, your key pages, and what matters most about your site. Instead of making an AI crawler piece together what your company does from dozens of pages, you hand it a clear, organized overview.

This is still an emerging standard — not every AI system uses it yet — but adoption is growing. Sites that have an llms.txt file are making it easier for AI to understand and accurately represent them. Think of it as an executive summary of your website, written for machines.

There's also `ai.txt`, another emerging file format with a similar goal. The landscape is still taking shape, but the direction is clear: the websites that proactively communicate with AI systems will have an advantage over those that don't.

## This Is the Single Fastest Thing You Can Check

Out of everything you could do to improve your AI visibility — better content, structured data, schema markup, platform presence — checking your robots.txt file is the fastest and highest-impact starting point. It takes five minutes, it's free, and if there's a problem, fixing it removes a hard barrier that no amount of great content can overcome.

You can check it manually using the steps above, or automated tools can audit your robots.txt against every known AI crawler and flag problems you might miss. Either way, start here.

Because if your front door has a "keep out" sign that you didn't put there, nothing else you do for AI visibility matters until you take it down.
