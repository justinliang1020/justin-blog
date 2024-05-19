---
title: "The Overuse of the Undo Button"
date: 2024-05-18
summary: "We change too quickly because we can undo so easily"
---

When I was in elementary school, we were writing short essays in the computer lab to learn how to use basic word processor software (Microsoft Word). Feeling mischievous, I highlighted my entire essay and changed the font to be `Wingdings` for fun. The entire page became filled with lines like this

```plaintext
❄︎♒︎♏︎ ♒︎□︎◆︎⬧︎♏︎ ♓︎⬧︎ □︎■︎ ♐︎♓︎❒︎♏︎ ♋︎■︎♎︎ ⧫︎♒︎♏︎ ♍︎♋︎⧫︎ ♓︎⬧︎ ♏︎♋︎⧫︎♓︎■︎♑︎ ♋︎●︎●︎ ⧫︎♒︎♏︎ ♎︎□︎■︎◆︎⧫︎⬧︎✏︎
```

until I had to press the "undo button" when my teacher scolded me that I shouldn't mess with my computer like that.

Fast-forward to today, I am now a software engineer ([SRE](https://sre.google/)) undoing changes all the time (and still messing with my computer): be it through `git revert` or rolling back deployments in the cloud. I now view the ability to revert changes as a foundation of the modern software stack and the primary reason we're able to develop new changes quickly. Reverting changes gives us the ability to explore them in the first place and to return to the original state in a safe, reproducible manner. Some specific examples of being able to "press the undo button" in different layers of the modern software stack include:

* Version control systems (`git`): the power to revert changes through versioning means that thousands of developers can work on the same codebase without fear of causing permanent damage to the code.

* Infrastructure as code (`terraform`): by turning infrastructure into code, we can use the same versioning abilities of git except for actual hardware resources. Accidentally provisioned too many extra servers in the cloud? Easily undo the change in your code and run `terraform apply`.

* Continuous Delivery (`github actions` or `bitbucket pipelines`): by being able to undo bad deployments on command via deployment rollbacks, developers frequently make production changes, often many times a day 

It's clear to see that the ability to press the metaphorical "undo button" is fundamental to how the modern software stack functions today, from enabling codebase and infrastructure versioning to continuous deployment methods. Reverting changes allows us to move quickly. What I find more interesting about this though is how this paradigm has molded the way we write code, and ultimately the way we think about software.

Since software changes are so easy to revert we inevitably spend less time thinking about the actual changes we make. For instance, I feel that when I program I sometimes fall into the trap of trying to changing my code as frequently as possible to get it to work more quickly. I do this through copy-pasting similar code from sources like Stack Overflow or ChatGPT in hopes that one of them would compile correctly, all without improving my fundamental understanding of the code I'm working on. If editing and running my code took more time, I believe I would be motivated to put more effort into thinking about the changes I made before making them.

An example to illustrate what happens when there is no easy-to-press "undo button" is punch card programming. Changes made to a punch card had to be physically punched in, an extremely time-consuming and error-prone process. Additionally, when programmers wanted to run their punch card programs, they had to manually submit them to a computer operator who would schedule the job at a later date. This meant that punch card programmers had to be extremely deliberate about the changes they made, since undoing a change meant throwing away a card, or at worst running into an unexpected runtime error leading to having to wait hours or even days to run the program again.

The concept of undoing changes more quickly has had broader impacts to the culture surrounding software development as a whole. Enabled by fast revisions, we began to care more about the speed at which we wrote software than the actual quality of it. This has inspired a trend of moving up the hierarchy of abstraction, sometimes to excess. While of course some higher abstractions are well-warranted (it would be a waste of time to write assembly instead of C in most scenarios) too much of this has had negative ramifications on the overall quality of software development. Examples of this include the innumerable discussions on [javascript web bloat](https://tonsky.me/blog/js-bloat/) or the decline of software as whole as described by [this talk from Jonathan Blow](https://www.youtube.com/watch?v=ZSRHeXYDLko). Lastly, this culture has conflated making changes quickly with building better software. Companies in the past few years have begun evaluating [PR counts as performance metrics](https://www.teamblind.com/post/PR-count-as-evaluating-parameter-8uKFFQqh) in a misguided attempt of measuring productivity.

This isn't to say that we should consider getting rid of the undo button (my elementary school teacher would have been furious if Microsoft Word didn't have an undo button) or the downstream impacts on software development culture its had (this is a lengthy discussion for another time). Rather we should be more conscious about the changes we make to better understand the systems we build.

Don't just create quickly, but create to learn.
