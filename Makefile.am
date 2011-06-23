ACLOCAL_AM_FLAGS = -I m4
lib_LTLIBRARIES = libleveldb.la
libleveldb_la_SOURCES = \
	./db/builder.cc \
	./db/db_impl.cc \
	./db/db_iter.cc \
	./db/filename.cc \
	./db/dbformat.cc \
	./db/log_reader.cc \
	./db/log_writer.cc \
	./db/memtable.cc \
	./db/repair.cc \
	./db/table_cache.cc \
	./db/version_edit.cc \
	./db/version_set.cc \
	./db/write_batch.cc \
	./port/port_posix.cc \
	./table/block.cc \
	./table/block_builder.cc \
	./table/format.cc \
	./table/iterator.cc \
	./table/merger.cc \
	./table/table.cc \
	./table/table_builder.cc \
	./table/two_level_iterator.cc \
	./util/arena.cc \
	./util/cache.cc \
	./util/coding.cc \
	./util/comparator.cc \
	./util/crc32c.cc \
	./util/env.cc \
	./util/env_posix.cc \
	./util/hash.cc \
	./util/histogram.cc \
	./util/logging.cc \
	./util/options.cc \
	./util/status.cc

# configure script defines CXXFLAGS = -g -O2
AM_CXXFLAGS = -std=c++0x -I./include
AM_CPPFLAGS = -DNDEBUG -DLEVELDB_PLATFORM_POSIX
#libleveldb_la_CXXFLAGS = -DLEVELDB_PLATFORM_POSIX

libleveldb_la_LDFLAGS = -lpthread

pkginclude_HEADERS = include/leveldb/cache.h include/leveldb/comparator.h \
	include/leveldb/db.h include/leveldb/env.h include/leveldb/iterator.h \
	include/leveldb/options.h include/leveldb/slice.h \
	include/leveldb/status.h include/leveldb/table.h \
	include/leveldb/table_builder.h include/leveldb/write_batch.h

dist_doc_DATA = README

TESTUTIL = util/testutil.cc
TESTHARNESS = util/testharness.cc $(TESTUTIL)

TESTS = arena_test cache_test coding_test corruption_test crc32c_test \
	db_test dbformat_test env_test filename_test log_test skiplist_test \
	table_test version_edit_test write_batch_test
noinst_PROGRAMS = $(TESTS)

arena_test_SOURCES = util/arena_test.cc $(TESTHARNESS)
arena_test_LDADD = libleveldb.la
cache_test_SOURCES = util/cache_test.cc $(TESTHARNESS)
cache_test_LDADD = libleveldb.la
coding_test_SOURCES = util/coding_test.cc $(TESTHARNESS)
coding_test_LDADD = libleveldb.la
corruption_test_SOURCES = db/corruption_test.cc $(TESTHARNESS)
corruption_test_LDADD = libleveldb.la
crc32c_test_SOURCES = util/crc32c_test.cc $(TESTHARNESS)
crc32c_test_LDADD = libleveldb.la
db_test_SOURCES = db/db_test.cc $(TESTHARNESS)
db_test_LDADD = libleveldb.la
dbformat_test_SOURCES = db/dbformat_test.cc $(TESTHARNESS)
dbformat_test_LDADD = libleveldb.la
env_test_SOURCES = util/env_test.cc $(TESTHARNESS)
env_test_LDADD = libleveldb.la
filename_test_SOURCES = db/filename_test.cc $(TESTHARNESS)
filename_test_LDADD = libleveldb.la
log_test_SOURCES = db/log_test.cc $(TESTHARNESS)
log_test_LDADD = libleveldb.la
skiplist_test_SOURCES = db/skiplist_test.cc $(TESTHARNESS)
skiplist_test_LDADD = libleveldb.la
table_test_SOURCES = table/table_test.cc $(TESTHARNESS)
table_test_LDADD = libleveldb.la
version_edit_test_SOURCES = db/version_edit_test.cc $(TESTHARNESS)
version_edit_test_LDADD = libleveldb.la
write_batch_test_SOURCES = db/write_batch_test.cc $(TESTHARNESS)
write_batch_test_LDADD = libleveldb.la

