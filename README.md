bdes
====

bdes is an utility for doing encryption/decryption using the Data Encryption
Standard.

The original sources from which this fork was created can be found [here][1]

More information regarding the bdes utility can be found [here][3]

Motivation
----------

I had come across some study material that required to be decrypted via this
utility but bdes(1) was meant to compiled and run in Unix like systems.

But since I work mostly use Windows as my daily driver and spent time in Cygwin,
I took the original code and made it compile under it.

Installation
------------

`$ make && make install`

The script installs things into the `/usr/local/` directory.

Changes
-------

* Removed `des` directory and related Makefiles
* No longer builds `libcrypto.a` but instead directly links with OpenSSL
  libcrypto library using the `-lcrypto` flag
* Changed the `CC` variable from `gcc` to `cc` to be more generic

NOTE: Even though I mention the changes are for Cygwin, it may be able to
compile in other environements too without issues.

License
-------

BSD 2-clause. See LICENSE.

[1]: http://phobos69.inf.uni-konstanz.de/download/tools/
[2]: http://phobos69.inf.uni-konstanz.de/download/tools/ReadMe.txt
[3]: https://www.freebsd.org/cgi/man.cgi?query=bdes
