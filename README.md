# mine

@nicholaswmin personal stuff, not work

## Reading 

### Eventual-consistency

A method of handling distributed updates that contrasts what your run-of-the-mill software engineer would know.
ACID is what is taught at universities as the one and only way. 
10 years ago this would have been considered a literal sin - it looks like it's starting to take over since the 
Dynamo papers came out.  
ACID is *theoretically* unable to handle high-concurrency, see the "CAP theorem" and todays systems are highly concurrent.
Anecdotally the switch from ACID-thinking to Eventual Consistency is something a lot of software engineers resist 
by tooth and nail.

- [The CAP Theorem](https://groups.csail.mit.edu/tds/papers/Gilbert/Brewer2.pdf)
- [The Dynamo Paper](https://www.allthingsdistributed.com/files/amazon-dynamo-sosp2007.pdf)

#### Operation transformation

> A computation model which allows eventually-consistent convergence, much like a CRDT but does so using a very different technique.

- [Specification and Complexity of Collaborative Text Editing](https://www.cs.tau.ac.il/~mad/publications/podc2016-collabedit.pdf)
 
#### CRDT 

> A Conflict-free Replicated Data Type (CRDT) is a data structure that simplifies distributed data storage systems and multi-user applications.

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

- [Escape from Freedom: Erich Fromm](https://psycnet.apa.org/record/1942-01072-000)
- [The Dreyfus Model of Skills Acquisition](https://www.bumc.bu.edu/facdev-medicine/files/2012/03/Dreyfus-skill-level.pdf)
- [Things Caches Do](https://tomayko.com/blog/2008/things-caches-do)
- [The Pragmatic Programmer](https://pragprog.com/titles/tpp20/the-pragmatic-programmer-20th-anniversary-edition/)

## People 

- [Adam Wiggins](https://adamwiggins.com/)
- [Martin Klepmann](https://martin.kleppmann.com/)
- [Eric Dietrich](https://daedtech.com/how-developers-stop-learning-rise-of-the-expert-beginner/)
- [Lindsey Jacobellis](https://www.nytimes.com/2018/02/14/sports/olympics/lindsey-jacobellis-olympics-snowboard.html)

[menlo]: https://en.wikipedia.org/wiki/Menlo_(typeface)
[zed]: https://zed.dev/
[jq]: https://jqlang.github.io/jq/
[bash]: https://github.com/nicholaswmin/mine/blob/main/bash_profile
