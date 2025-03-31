---
title: Justin Review 1
date: 2025-03-30
lastmod: 2025-03-30
summary: on metadata, personal writing, and html/css
---

This is the first issue of the Justin Review, where I discuss things that happened in Justin's life lately.

Expect unrefined thoughts, possible typos, and a lack of clear conclusions.

## metadata and are.na

I have been thinking about how data and metadata coexist a lot lately. It's scratching some part of my brain that cares deeply about logical information organization.

I recently attended a design history session at the [Lubalin Archive](https://cooper.edu/art/herb-lubalin-study-center-design-and-typography) where the topic of metadata's importance on the meaning of an object was discussed, paraphrased in my interpretation below

> What is the point of digitizing something if only the actual object and metadata are attached. The value of an object comes with its context and connections with other objects.

> Why does the date of an object matter? It’s just a number. I.e does it matter if an object was made in 1951 vs. 1952? Probably not

Thus, how much does metadata matter for determining the meaning of an object? Below I discuss different types of metadata and their value, in the context of are.na which I use a lot.

Here's some of the data and metadata of an are.na block.
- data: content i.e. text, image, link, etc.
- metadata: title, description, time created, author, connected channels

We can see that metadata can be organized in three categories
1. Automatic: time created, author
2. Manual and required: connected channel
3. Manual and optional: title, description

### Automatic Metadata

Automatic metadata is nice since it doesn't require the user to take time filling out fields to attach a metadata to an object. Thus it's consistently present in every object in a collection which makes it easy to filter/search based on it.

I think it's also some of the most interesting metadata. Specifically, time and author both have  valuable context around an object. What was the background of the author that created it? When was it made, and what context does that time have in the author's life?

### Manual and Required Metadata

When I first started using are.na I disliked the fact that blocks had to be assigned a channel when they were created. I often didn't know which channel a block would best fit in. So, I made a channel titled "uncategorized" that I dump any block into when I don't know what channel it should go in.

> I use a dump channel titled "Uncategorized" that I add blocks to whenever I don't know which channel to add it to.
>
> This is since your are.na account itself is a super-channel, a representation of yourself. 
> https://www.are.na/block/35521398

Metadata can be hard to make, especially in a fast-paced environment like a website/mobile app. This is why I opt to "skip" my way out of the channel field which is required metadata.
### Manual and Optional Metadata

Manual and optional metadata is interesting since it leads to inconsistencies in metadata. 

Some of these inconsistencies can be treated as "mistakes", i.e. are.na's spring cleaning event which encouraged better metadata practices like adding proper titles and descriptions (I actually don't know if this is true I never went to the event, just guessing).

However, some interesting features arise within these inconsistencies. For one, since title and description are both optional, it allows the user to focus on the object as data rather than allowing metadata to color its perception.

Emergent behavior arises such as using the "title" metadata for different uses ranging from attributing a Block's actual author, such as the author of a quote, or even making a comment about the data itself rather than an actual title. This is possible due to the fact that "title" is always shown next to the block's content, unliked other metadata like time or description. When scrolling through a channel, "title" is the only metadata that is purposefully displayed (other than relative time and author which are inherently displayed). This makes "title" a more special metadata more important to the content itself. 

### conclusion

Not sure how to conclude this. I just think metadata is interesting to observe in different applications, especially in are.na where a lot of emergent behavior can occur around manipulating metadata using the simple primitives that are.na provides.

P.S. created an are.na channel on [how Justin uses are.na](https://www.are.na/justin-liang/how-justin-uses-are-na)

## writing more

I've always had "writing more" as a task I'd wanted to do for a while. It's been hard for me to consistently do so for a variety of factors (health issues, lack of time, etc.) However, recently I've written slightly more and enjoy how it makes me more organized in my thinking.

I started out by taking small notes in a private are.na channel titled "Justin's Thoughts". I'm currently at 200 blocks in the channel, with each block comprising of anywhere from a few words to a few sentences. I enjoy looking at it as a visual grid of thought throughout time. I can distinctly pinpoint various blocks with specific memories I have.

However, I want to go more into longer-form writing to expand on thoughts that I have. are.na blocks are good for shorter-form thoughts but since it's entirely plaintext, it's difficult to expand on larger ideas vs. using a more traditional document editor. 

I've chosen to write longer notes on Obsidian to do this. Obsidian lines up philosophically with what I prefer in software, simple data formats (markdown) and an extensible core. I spent about a week configuring Obsidian to fit my needs. Everything from installing various plugins, to making my own custom plugin to visualize files better (currently called "VisualFS", tbd if I publicly release it), and writing scripts to sync my personal website's hugo markdown content with a folder in my are.na vault.

We'll see if this writing habit lasts.

P.S. (still will continue using are.na for shorter, stream of consciousness thoughts)

## a more human-approach to writing html/css

I'm thinking about how to make a more human way of writing HTML/CSS. Inspired by [Inventing on Principle by Bret Victor](https://www.youtube.com/watch?v=PUv66718DII).

Some broad ideas
- sliders and dropdowns in code allow for:
	- a more approachable way of modifying code than manually typing
	- more intuitive way of understanding css functionality, i.e. in a slider you can scroll through many values
- HTML/CSS documentation (i.e. MDN) is hard to read and doesn't give a dynamic visual understanding of HTML/CSS
- Remembering HTML/CSS syntax is hard
![screenshot](/justin-blog/attachments/human_html_demo_screenshot.png)
https://www.youtube.com/watch?v=1geBrqPhgAk