# mine

## Architecture of distributed & fault-tolerant services

Before you choose to breaking a systems architecture into distributed services, note this, from me:

- What most people call microservices are not true microservices in the sense of distributed computing. 
  A distributed microservice architecture assumes **multiple databases** in an assembly that looks like its federated.
- ***Don't do it***. Resist the pressure (either by yourself or most often by an idiot busybody executive) to use "microservices"
  because "other people do it". There is no "other people do it". Most people don't do microservices, they do some kind of multiprocessing and think it's SOA - and those that actually do have nearly driven their companies to the toilet numerous times because of it.
  It's impossible not to get caught off-guard by their complexity, unless you did an MSc on them or similar and you happen to know what's up.
  As an example, have a look at what [Zookeeper](https://zookeeper.apache.org/) does and why it's neeeded and you'll figure out. 
  Distributed computing is exceptionally hard. 
- By doing so you're entering a drastically different environment than the one you're trained on. 
  It's failure modes are active research subjects, nearly impossible to reason about because of their inherent complexity and when it goes wrong,
  it tends to fail the entire system catastrophically.
  The issues produced require analysis for days (or even weeks) to get to the bottom of them and that is if by some miracular reason you have a
  granular telemetry system set up.
- A distributed architecture in one place tends to infect the architectural design of subsequent modules; it's the leakiest abstraction you can find.
  True distributed microservices **require** an Eventually Consistent data model (see below) which makes everything asynchronous. 
  This means anything that pings your API will have to take this into account.

Unless there is a very well specified business requirement - you shouldn't do it.

### Eventual Consistency

A consistency model that contrasts [ACID](https://en.wikipedia.org/wiki/ACID). 
Named so because the final values are not synchronously known (or at least known to be consistent) - they will be, eventually.

It's academic name is BASE: *Basically Available, Soft State, Eventual Consistency*. <- this is academic mumbo jumbo, just call it Eventually Consistent.

It contrasts the ACID criterion of *Consistency*. 

This is the main argument of the CAP theorem.   

If you took Distributed Systems in your Bachelor, 
you've 100% covered it - it's also called Brewer's Conjecture. 

### Consistency

For disambiguating - consistency is better described as *linearizeability*.

> In concurrent programming, an operation (or set of operations) is linearizable if it consists of an ordered list of invocation and response events, that may be extended by adding response events such that:
> The extended list can be re-expressed as a sequential history (is serializable).
> That sequential history is a subset of the original unextended list.

If you've ever played with Redis you'd know exactly what this is - Redis is single-threaded and running on an Event Loop,
meaning `read-after-write` operations always return the previous value regardless of contention on that particular datum,
in other words they perform their composite writes as *Atomic Commitments*.

The most straightforward definition I know comes from this paper.

<img width="707" alt="Screenshot 2024-08-19 at 12 17 43 PM" src="https://github.com/user-attachments/assets/76647724-a1a0-45a6-9de1-b35a7a18b288">

### The CAP theorem 

A system that demonstrates all 3: 

- Consistency
- Availability
- Partition-tolerance

is theoretically impossible - but practically you can design an architecture that is good-enough.

- [The Theorem that doesn't go away](https://www.the-paper-trail.org/post/2010-10-07-the-theorem-that-will-not-go-away/)
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

## Atomic Commitment Protocols

> @TODO 

### Consensus Resolution

> A truely distributed system will reach a point where its nodes have simultaneously awoken from failure and need to *agree on who has the correct value*.  

> This central issue forms the basis of a family of problems, called ***the consensus problems*** - they are imperfectly-solved by highly elaborate mechanisms or more practically but even more hapharzadly, using [*quorums*](https://en.wikipedia.org/wiki/Quorum_(distributed_computing)). 

> Lamparts PAXOS is a family of protocols which prove that achieving consensus is not impossible; it is an actual proof.
> PAXOS doesn't cover [Byzantine Failures](https://en.wikipedia.org/wiki/Byzantine_fault).

- [Byzantine Fault: Reaching Agreement in the Presence of Faults](https://lamport.azurewebsites.net/pubs/pubs.html?from=https://research.microsoft.com/en-us/um/people/lamport/pubs/pubs.html&type=path#byz)
- [Paxos Consensus Protocols](https://github.com/bigeasy/paxos?tab=readme-ov-file)
- [Barbara Liskov: Byzantine Fault-Tolerance](https://www.the-paper-trail.org/post/2009-03-30-barbara-liskovs-turing-award-and-byzantine-fault-tolerance/)

## Failure modes of distributed systems

### Byzantine faults:

> The term takes its name from an allegory, the "Byzantine generals problem" - developed to describe a situation in which, to avoid catastrophic failure of a system, the system's actors must agree on a strategy, but some of these actors are unreliable in such a way as to cause other (good) actors to disagree on the strategy and they may be unaware of the disagreement.

> Leslie Lampart has a fetish for Greece, Paxos is a Greek island and Byzantine is .. Byzantine.

Byzantine Faults used to be NASA-level issues because the issues they produce used to be relevant to aircraft avionics with multiply-redundant systems.

They became an Average Joe problem because it's fashionable to break up systems into microservices, which effectively produces the same condition. 

The protocols are extraordinaringly hard to read but the problem itself is simple and clicks easy.

### Split-brain: 

> Similar to a Byzantine Fault but not about reaching consensous


### Thundering herd: 

> Example: A node has died and it's clients detect it. 
> This kickstarts an internal timer to attempt reconnect.
> Eventually thousands of clients converge on a reconnect attempt, simultaneously, which starves the node -
> by the time the node has starved itself it has propagated the failure to other subsystems
> and kickstarted a cascading failure, eventually bringing the entire system down.
> An "okay-ishly" technique to solve this, is exponential backoffs.
>
> *cascading-failures* are the most serious failure types (not modes) in distributed systems because they
> are guaranteed to result in *catastrophic failure* (failure from which recovery is impossible).

### 2-phase Commit Protocol

> Also called 2PC

> // @ TODO

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
