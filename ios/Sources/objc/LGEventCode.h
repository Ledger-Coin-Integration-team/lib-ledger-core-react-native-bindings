// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from events.djinni

#import <Foundation/Foundation.h>

/** Enum of different event codes. */
typedef NS_ENUM(NSInteger, LGEventCode)
{
    /** An unknown event code. */
    LGEventCodeUndefined,
    /** A new operation event. */
    LGEventCodeNewOperation,
    /** A new block event. */
    LGEventCodeNewBlock,
    /** Event emitted when a wallet synchronization started. */
    LGEventCodeSynchronizationStarted,
    /** Event emitted when a wallet synchronization failed. */
    LGEventCodeSynchronizationFailed,
    /** Event emitted when a wallet synchronization succeeded. */
    LGEventCodeSynchronizationSucceed,
    /** Event emitted when a wallet synchronization succeeded on the previously empty account. */
    LGEventCodeSynchronizationSucceedOnPreviouslyEmptyAccount,
};
