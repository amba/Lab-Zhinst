# Before 'make install' is performed this script should be runnable with
# 'make test'. After 'make install' it should work as 'perl Lab-Zhinst.t'

#########################

# change 'tests => 2' to 'tests => last_test_to_print';

use strict;
use warnings;

use Test::More tests => 2;
BEGIN { use_ok('Lab::Zhinst') };


my $fail = 0;
foreach my $constname (qw(
	MAX_EVENT_SIZE MAX_NAME_LEN MAX_PATH_LEN TREE_ACTION_ADD
	TREE_ACTION_CHANGE ZI_API_VERSION_0 ZI_API_VERSION_1 ZI_API_VERSION_4
	ZI_API_VERSION_5 ZI_COMMAND ZI_CONNECTION ZI_DATA_AUXINSAMPLE
	ZI_DATA_BYTEARRAY ZI_DATA_DEMODSAMPLE ZI_DATA_DIOSAMPLE ZI_DATA_DOUBLE
	ZI_DATA_INTEGER ZI_DATA_NONE ZI_DATA_SCOPEWAVE ZI_DATA_TREE_CHANGED
	ZI_DUPLICATE ZI_ERROR ZI_ERROR_BASE ZI_ERROR_COMMAND
	ZI_ERROR_CONNECTION ZI_ERROR_DEVICE_CONNECTION_TIMEOUT
	ZI_ERROR_DEVICE_DIFFERENT_INTERFACE ZI_ERROR_DEVICE_INTERFACE
	ZI_ERROR_DEVICE_IN_USE ZI_ERROR_DEVICE_NEEDS_FW_UPGRADE
	ZI_ERROR_DEVICE_NOT_FOUND ZI_ERROR_DEVICE_NOT_VISIBLE
	ZI_ERROR_DUPLICATE ZI_ERROR_FILE ZI_ERROR_GENERAL ZI_ERROR_HOSTNAME
	ZI_ERROR_LENGTH ZI_ERROR_MALLOC ZI_ERROR_MAX ZI_ERROR_MUTEX_DESTROY
	ZI_ERROR_MUTEX_INIT ZI_ERROR_MUTEX_LOCK ZI_ERROR_MUTEX_UNLOCK
	ZI_ERROR_NOT_SUPPORTED ZI_ERROR_READONLY ZI_ERROR_SERVER_INTERNAL
	ZI_ERROR_SOCKET_CONNECT ZI_ERROR_SOCKET_INIT ZI_ERROR_THREAD_JOIN
	ZI_ERROR_THREAD_START ZI_ERROR_TIMEOUT ZI_ERROR_TOO_MANY_CONNECTIONS
	ZI_ERROR_USB ZI_ERROR_ZIEVENT_DATATYPE_MISMATCH ZI_FILE
	ZI_HOSTNAME ZI_IMP_FLAGS_AUTORANGE_GATING ZI_IMP_FLAGS_BWC_BIT0
	ZI_IMP_FLAGS_BWC_BIT1 ZI_IMP_FLAGS_BWC_BIT2 ZI_IMP_FLAGS_BWC_BIT3
	ZI_IMP_FLAGS_BWC_MASK ZI_IMP_FLAGS_FREQLIMIT_RANGE_CURRENT
	ZI_IMP_FLAGS_FREQLIMIT_RANGE_VOLTAGE ZI_IMP_FLAGS_FREQ_EXACT
	ZI_IMP_FLAGS_FREQ_EXTRAPOLATION ZI_IMP_FLAGS_FREQ_INTERPOLATION
	ZI_IMP_FLAGS_NEGATIVE_QFACTOR ZI_IMP_FLAGS_NONE
	ZI_IMP_FLAGS_OPEN_DETECTION ZI_IMP_FLAGS_OVERFLOW_CURRENT
	ZI_IMP_FLAGS_OVERFLOW_VOLTAGE ZI_IMP_FLAGS_STRONGCOMPENSATION_PARAM0
	ZI_IMP_FLAGS_STRONGCOMPENSATION_PARAM1 ZI_IMP_FLAGS_SUPPRESSION_PARAM0
	ZI_IMP_FLAGS_SUPPRESSION_PARAM1 ZI_IMP_FLAGS_UNDERFLOW_CURRENT
	ZI_IMP_FLAGS_UNDERFLOW_VOLTAGE ZI_IMP_FLAGS_VALID_INTERNAL
	ZI_IMP_FLAGS_VALID_USER ZI_INFO_BASE ZI_INFO_MAX ZI_INFO_SUCCESS
	ZI_LENGTH ZI_LIST_ABSOLUTE ZI_LIST_LEAFSONLY ZI_LIST_NODES_ABSOLUTE
	ZI_LIST_NODES_LEAFSONLY ZI_LIST_NODES_NONE ZI_LIST_NODES_RECURSIVE
	ZI_LIST_NODES_SETTINGSONLY ZI_LIST_NONE ZI_LIST_RECURSIVE
	ZI_LIST_SETTINGSONLY ZI_MALLOC ZI_MAX_ERROR ZI_MAX_INFO ZI_MAX_WARNING
	ZI_MUTEX_DESTROY ZI_MUTEX_INIT ZI_MUTEX_LOCK ZI_MUTEX_UNLOCK
	ZI_NOTFOUND ZI_OVERFLOW ZI_READONLY ZI_SERVER_INTERNAL
	ZI_SOCKET_CONNECT ZI_SOCKET_INIT ZI_SUCCESS ZI_THREAD_JOIN
	ZI_THREAD_START ZI_TIMEOUT ZI_TREE_ACTION_ADD ZI_TREE_ACTION_CHANGE
	ZI_TREE_ACTION_REMOVE ZI_UNDERRUN ZI_USB ZI_VALUE_TYPE_ADVISOR_WAVE
	ZI_VALUE_TYPE_ASYNC_REPLY ZI_VALUE_TYPE_AUXIN_SAMPLE
	ZI_VALUE_TYPE_BYTE_ARRAY ZI_VALUE_TYPE_BYTE_ARRAY_TS
	ZI_VALUE_TYPE_CNT_SAMPLE ZI_VALUE_TYPE_DEMOD_SAMPLE
	ZI_VALUE_TYPE_DIO_SAMPLE ZI_VALUE_TYPE_DOUBLE_DATA
	ZI_VALUE_TYPE_DOUBLE_DATA_TS ZI_VALUE_TYPE_IMPEDANCE_SAMPLE
	ZI_VALUE_TYPE_INTEGER_DATA ZI_VALUE_TYPE_INTEGER_DATA_TS
	ZI_VALUE_TYPE_NONE ZI_VALUE_TYPE_PWA_WAVE ZI_VALUE_TYPE_SCOPE_WAVE
	ZI_VALUE_TYPE_SCOPE_WAVE_EX ZI_VALUE_TYPE_SCOPE_WAVE_OLD
	ZI_VALUE_TYPE_SPECTRUM_WAVE ZI_VALUE_TYPE_SWEEPER_WAVE
	ZI_VALUE_TYPE_TREE_CHANGE_DATA ZI_VALUE_TYPE_TREE_CHANGE_DATA_OLD
	ZI_VALUE_TYPE_VECTOR_DATA ZI_VECTOR_ELEMENT_TYPE_ASCIIZ
	ZI_VECTOR_ELEMENT_TYPE_DOUBLE ZI_VECTOR_ELEMENT_TYPE_FLOAT
	ZI_VECTOR_ELEMENT_TYPE_UINT16 ZI_VECTOR_ELEMENT_TYPE_UINT32
	ZI_VECTOR_ELEMENT_TYPE_UINT64 ZI_VECTOR_ELEMENT_TYPE_UINT8
    ZI_WARNING
	ZI_WARNING_BASE ZI_WARNING_GENERAL ZI_WARNING_MAX ZI_WARNING_NOTFOUND
	ZI_WARNING_NO_ASYNC ZI_WARNING_OVERFLOW ZI_WARNING_UNDERRUN)) {
  next if (eval "my \$a = $constname; 1");
  if ($@ =~ /^Your vendor has not defined Lab::Zhinst macro $constname/) {
    print "# pass: $@";
  } else {
    print "# fail: $@";
    $fail = 1;
  }

}

ok( $fail == 0 , 'Constants' );
#########################

# Insert your test code below, the Test::More module is use()ed here so read
# its man page ( perldoc Test::More ) for help writing this test script.

