---
title: Palladium
author: Unxmaal
type: post
date: 2002-10-16T00:00:00+00:00
url: /archives/781
categories:
  - General

---
Yesterday, I found a highly interesting analysis of Microsoft&#8217;s Palladium. The original article, in German, is located [here][1].

[ <A href="http://unxmaal.com/archives/00000791.htm" target=_blank>Read More</A>]  
<!--more-->

  
Yesterday, I found a highly interesting analysis of Microsoft&#8217;s Palladium. The original article, in German, is located [here][1].

&#8220;I don&#8217;t know why people are so excited about Palladium. It can not function as they claim it. This is a fact, because nobody can ignore the reasons, at least not in this universe. I&#8217;m always under the impression that there are people who sell some highly speculative and esoteric garbage. They claim something that cannot work. And still there is applause for these people, for whatever reason. And if enough applause is around, everybody claps their hands, too, without knowing why. Anyway, Palladium will never do what it is claimed to do, it cannot function reliably and every child with a little skill in mathematics can find a proof for this fact. I will give this proof now.

**Introduction**

A computer is a formal system which you can analyze in various ways. Mathematics gives us nice measures to do it. These measures allow us to give predicates about ideas like Palladium without even knowing anything about their inner details.

* A computer is a Turing machine.

&#8211; If we assume a correctly functioning computer, this predicate is wrong. A computer is a system which can from its boot strap state reach only a finite number of states, while a Turing machine can reach an infinite number of states.

* An ideal computer is a Turing machine.

&#8211; An ideal computer, which would have an infinite amount of memory, can emulate a Turing machine and is thus equivalent to a Turing machine.

* A computer connected to a network is equivalent to a computer with an infinite amount of memory and is therefore a Turing machine.

&#8211; This predicate is wrong. The finiteness of states a computer can reach is not disabled by the much larger finiteness of a network. Because the network, as opposed to the computer, grows over time, it can be seen as an unlimited amount of memory. You would just have to wait until someone, somewhere on the planet adds more memory to the network. However, this memory is over-directed and so the system is no longer deterministic. Therefore a computer with network connection is a non- deterministic system. Non-deterministic systems are not Turing machines. Any computer is deterministic if and only if the computer controls the network connection. This control is finite, because the computer has only a finite amount of states available. So a computer can still only reach a limited number of arbitrary states. That&#8217;s why a computer is still no Turing machine.

* Limitations that are put on a Turing machine have to be put on a computer, too, if it is deterministic.

&#8211; This predicate is right. Since a Turing machine can emulate every deterministic computer, all limitations that are put on a Turing machine are also valid for the emulated computer.

* A Turing machine is subject to &#8216;Goedelization&#8217;.

&#8211; A Turing machine is deterministic and is thus countable. Therefore it is imperfect as a formal system in the Goedel sense. Hint: In imperfect systems it is possible to pose a problem that cannot be solved within the system (e.g. the formula x*x = -1 in the real number system).

Based on these introductory insights a conclusion can be drawn now:

**Evidence**

* A deterministic computer will still be deterministic if it implements Palladium.

&#8211; This demand is legitimate. A security risk is, by definition, something that you cannot completely abandon. A computer connected to a network is non-deterministic and as such a security risk. A deterministic computer that does no longer react in a predictable way as soon as you connect it to a network is undoubtedly a security risk, because you can no longer tell what the computer does and why. Everyone should seek to avoid security risks with computers. Especially a platform that claims to make a computer more secure must be bound to this insight, otherwise it would increase the security risks instead of decreasing it.

* A computer with Palladium constitutes a Turing machine. 

&#8211; This predicate is wrong. We assume that a computer does not work in a deterministic way with Palladium and it thus constitutes no Turing machine. On the other hand Palladium supervises the data processing inside the computer and cuts off certain states. Therefore the computer loses a lot of its possibly reachable states, that is the number of possible states becomes &#8220;even more finite&#8221; than it was before. If the computer remains deterministic, then the total number of states is lower than that of a computer without Palladium. For this reason a computer with Palladium is no Turing machine, either. (This is too bad. A computer with Palladium would constitute a Turing machine that would be a direct proof that Palladium does nothing, because all Turing machines are principally equivalent).

* Palladium makes a computer more secure and is an embracing and before all complete solution by means of security.

&#8211; This predicate is wrong. Either Palladium makes a computer insecure (see above: security risks) and will therefore not fulfill this claim, or Palladium is as a formal system imperfect by principle. Imperfectness in this case means that you can impose a request upon Palladium that it cannot fulfill, by principle. Since Palladium wants to give improved security, it either can not accomplish this claim or it has to limit the usage of the computer so that there is no way to use the machine for the broad number of tasks like before. The Goedelization in this case assures us that the limitations are by no means imposed on unwanted operations, which Palladium wants to prevent, but on wanted operations which Palladium permits (or even denies) for the user. It is irrelevant if I can now give a significant example for this or not. The fact is, simply put, that thanks to Goedel can construct such an example. That&#8217;s why Palladium can again not fulfill its claim. The user is prevented from doing things that he is permitted to do due to Palladium, even though these operations are desirable.

The final conclusion will be drawn now:

**Conclusion**

I assume that at Microsoft there are bright minded people who know enough about mathematics to not only be able to follow my implementations, but rather knew them long ago. I assume this because

there&#8217;s not much behind it. And therefore I assume that Microsoft knows that Palladium can not function in the way they claim.

Now that raises the question why Microsoft still propagates Palladium in the way they do? They should know that their claims are wrong. I see only two possible reasons for this riddle:

Either Microsoft wants to mock-up activity in the security sector, which in reality doesn&#8217;t exist and in such way gain market shares by marketing fluff.

Or Microsoft exactly knows that the computer will become completely uncontrollable with Palladium, because every networked computer with Palladium will work in a non-deterministic way. The non-determinism in this case helps specifically the one who controls Palladium, and this means Microsoft and Intel. But it will be exploited by hackers as well.

Since I make the assumption that the uprising damage from the second case would make an unrecoverable loss for the companies, I firmly believe that Palladium is marketing fluff. Professionals will turn off Palladium to have a (more) secure computer again. For consumer computers this might be a different case, but certainly no sysadmin is going to blindly accept an increased and easily avoided security risk.

**Palladium most probably is nothing but marketing fluff without any background &#8211; except moneymaking.**

We shall not fear Palladium. If it was impossible to turn off Palladium, every computer&#8217;s value would be zero if it was not connected to the net. And if it was connected to the net, it&#8217;d be completely indeterminate what the machines does. That is the consequence of Goedel&#8217;s proposition of incompleteness.&#8221;

 [1]: http://20k.de/postnuke/modules.php?op=modload&name=Sections&file=index&req=viewarticle&artid=10&page =1