# mine

my dotfiles and non-work stuff

## Reading 

### Eventual Consistency

A consistency model that contrasts [ACID](https://en.wikipedia.org/wiki/ACID).

While your run-of-mill system can get away with the standard ACID model 
that is taught at universities, 
a high-concurrency collaborative system cannot.

In essence you have to trade some data guarantees for others, 
mainly high-availability and partitioning. 

Data architectures in a high-concurrency, distributed system are governed by the 
CAP theorem and it's limitations; i.e "you can't have it all".

- [CAP Theorem](https://en.wikipedia.org/wiki/CAP_theorem)
- [Fallacies of Distributed computing](https://en.wikipedia.org/wiki/Fallacies_of_distributed_computing)
- [Brewers Conjecture](https://github.com/papers-we-love/papers-we-love/blob/main/distributed_systems/brewers-conjecture.pdf)

this is also important:

- [Martin Klepmann: Please stop calling databases AP or CP](https://martin.kleppmann.com/2015/05/11/please-stop-calling-databases-cp-or-ap.html)

The following are eventually consistency models designed to work 
in a collaborative context.

Their concepts are not necessarily new but they are considered exotic data architectures 
and a big chunk of them is still a research subject. 

#### Operational transformation

> A model which allows convergence of data,
> much like a CRDT but does so using a very different technique.
> It's distinguishing feature is that it's model requires a central
> coordinating server, whereas a CRDT does not.
> 
> Google Docs is built around this concept and they seem to guard
> it's actual method of operation under lock and key.

- [Specification and Complexity of Collaborative Text Editing](https://www.cs.tau.ac.il/~mad/publications/podc2016-collabedit.pdf)
 
#### CRDT 

> A Conflict-free Replicated Data Type (CRDT) is a data structure that
> simplifies distributed data storage systems and multi-user applications.
>
> Which is fancy science talk about a simple concept:
> 
> it allows 2 users to work on disconnected pieces of the same data and then
> transparently merge those pieces at some point in the future,
> in a way that preserves the intent of both users, without interfering with each
> others work.
>

- [CRDT: Martin Klepmann](https://crdt.tech/)
- [LoRe: A Programming Model for Verifiably Safe Local-first Software](https://dl.acm.org/doi/pdf/10.1145/3633769) 
- [Applications with the Automerge Model Checker](https://api.repository.cam.ac.uk/server/api/core/bitstreams/e0f9f934-9e79-4485-8745-f0a3191ff70c/content)
- [Sebastian Burckhardt. Principles of eventual consistency. Foundations and Trends in Programming Languages](https://www.nowpublishers.com/article/Details/PGL-011)


### Logging/Telemetry

- [The Art of Logging](https://www.codeproject.com/Articles/42354/The-Art-of-Logging)
- [Best Practices for Application Logs]( https://devcenter.heroku.com/articles/writing-best-practices-for-application-logs#define-which-events-to-log)

### Systems Architecture 

- [Building Evolutionary architectures](https://www.thoughtworks.com/insights/books/building-evolutionary-architectures)

### Unit testing

- [Focus on Integration tests](https://kentcdodds.com/blog/write-tests)
- [The Eroding Test Pyramid](https://www.agileconnection.com/article/eroding-agile-test-pyramid)
- [The Little Black Book on test-design](https://www.thetesteye.com/papers/TheLittleBlackBookOnTestDesign.pdf)
- [Unit-testing books](https://club.ministryoftesting.com/t/software-testing-books-wiki/72518)

### Uncategorised 

- [The Dreyfus Model of Skills Acquisition](https://www.bumc.bu.edu/facdev-medicine/files/2012/03/Dreyfus-skill-level.pdf)
- [Things Caches Do](https://tomayko.com/blog/2008/things-caches-do)
- [The Pragmatic Programmer](https://pragprog.com/titles/tpp20/the-pragmatic-programmer-20th-anniversary-edition/)

## People 

- [Adam Wiggins](https://adamwiggins.com/)
- [Martin Klepmann](https://martin.kleppmann.com/)
- [Michael Feathers](https://michaelfeathers.silvrback.com/)
- [Eric Dietrich](https://daedtech.com/how-developers-stop-learning-rise-of-the-expert-beginner/)
- [Tyler Treat](https://bravenewgeek.com/you-cannot-have-exactly-once-delivery/)
- [Ted Dziuba](http://widgetsandshit.com/teddziuba/2011/12/process.html)

[menlo]: https://en.wikipedia.org/wiki/Menlo_(typeface)
[zed]: https://zed.dev/
[jq]: https://jqlang.github.io/jq/
[bash]: https://github.com/nicholaswmin/mine/blob/main/bash_profile
