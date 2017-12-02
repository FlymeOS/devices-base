.class public Landroid/telephony/DisconnectCause;
.super Ljava/lang/Object;
.source "DisconnectCause.java"


# static fields
.field public static final ANSWERED_ELSEWHERE:I = 0x34

.field public static final BUSY:I = 0x4

.field public static final CALL_BARRED:I = 0x14

.field public static final CALL_PULLED:I = 0x33

.field public static final CDMA_ACCESS_BLOCKED:I = 0x23

.field public static final CDMA_ACCESS_FAILURE:I = 0x20

.field public static final CDMA_ALREADY_ACTIVATED:I = 0x31

.field public static final CDMA_CALL_LOST:I = 0x29

.field public static final CDMA_DROP:I = 0x1b

.field public static final CDMA_INTERCEPT:I = 0x1c

.field public static final CDMA_LOCKED_UNTIL_POWER_CYCLE:I = 0x1a

.field public static final CDMA_NOT_EMERGENCY:I = 0x22

.field public static final CDMA_PREEMPTED:I = 0x21

.field public static final CDMA_REORDER:I = 0x1d

.field public static final CDMA_RETRY_ORDER:I = 0x1f

.field public static final CDMA_SO_REJECT:I = 0x1e

.field public static final CONGESTION:I = 0x5

.field public static final CS_RESTRICTED:I = 0x16

.field public static final CS_RESTRICTED_EMERGENCY:I = 0x18

.field public static final CS_RESTRICTED_NORMAL:I = 0x17

.field public static final DATA_DISABLED:I = 0x36

.field public static final DATA_LIMIT_REACHED:I = 0x37

.field public static final DIALED_CALL_FORWARDING_WHILE_ROAMING:I = 0x39

.field public static final DIALED_MMI:I = 0x27

.field public static final DIALED_ON_WRONG_SLOT:I = 0x38

.field public static final DIAL_MODIFIED_TO_DIAL:I = 0x30

.field public static final DIAL_MODIFIED_TO_SS:I = 0x2f

.field public static final DIAL_MODIFIED_TO_USSD:I = 0x2e

.field public static final EMERGENCY_ONLY:I = 0x25

.field public static final ERROR_UNSPECIFIED:I = 0x24

.field public static final EXITED_ECM:I = 0x2a

.field public static final FDN_BLOCKED:I = 0x15

.field public static final ICC_ERROR:I = 0x13

.field public static final IMS_MERGED_SUCCESSFULLY:I = 0x2d

.field public static final INCOMING_MISSED:I = 0x1

.field public static final INCOMING_REJECTED:I = 0x10

.field public static final INVALID_CREDENTIALS:I = 0xa

.field public static final INVALID_NUMBER:I = 0x7

.field public static final LIMIT_EXCEEDED:I = 0xf

.field public static final LOCAL:I = 0x3

.field public static final LOST_SIGNAL:I = 0xe

.field public static final MAXIMUM_NUMBER_OF_CALLS_REACHED:I = 0x35

.field public static final MAXIMUM_VALID_VALUE:I = 0x39

.field public static final MINIMUM_VALID_VALUE:I = 0x0

.field public static final MMI:I = 0x6

.field public static final NORMAL:I = 0x2

.field public static final NOT_DISCONNECTED:I = 0x0

.field public static final NOT_VALID:I = -0x1

.field public static final NO_PHONE_NUMBER_SUPPLIED:I = 0x26

.field public static final NUMBER_UNREACHABLE:I = 0x8

.field public static final OUTGOING_CANCELED:I = 0x2c

.field public static final OUTGOING_FAILURE:I = 0x2b

.field public static final OUT_OF_NETWORK:I = 0xb

.field public static final OUT_OF_SERVICE:I = 0x12

.field public static final POWER_OFF:I = 0x11

.field public static final SERVER_ERROR:I = 0xc

.field public static final SERVER_UNREACHABLE:I = 0x9

.field public static final TIMED_OUT:I = 0xd

.field public static final UNOBTAINABLE_NUMBER:I = 0x19

.field public static final VIDEO_CALL_NOT_ALLOWED_WHILE_TTY_ENABLED:I = 0x32

.field public static final VOICEMAIL_NUMBER_MISSING:I = 0x28


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 261
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toString(I)Ljava/lang/String;
    .locals 2
    .param p0, "cause"    # I

    .prologue
    .line 267
    packed-switch p0, :pswitch_data_0

    .line 383
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "INVALID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 269
    :pswitch_1
    const-string/jumbo v0, "NOT_DISCONNECTED"

    return-object v0

    .line 271
    :pswitch_2
    const-string/jumbo v0, "INCOMING_MISSED"

    return-object v0

    .line 273
    :pswitch_3
    const-string/jumbo v0, "NORMAL"

    return-object v0

    .line 275
    :pswitch_4
    const-string/jumbo v0, "LOCAL"

    return-object v0

    .line 277
    :pswitch_5
    const-string/jumbo v0, "BUSY"

    return-object v0

    .line 279
    :pswitch_6
    const-string/jumbo v0, "CONGESTION"

    return-object v0

    .line 281
    :pswitch_7
    const-string/jumbo v0, "INVALID_NUMBER"

    return-object v0

    .line 283
    :pswitch_8
    const-string/jumbo v0, "NUMBER_UNREACHABLE"

    return-object v0

    .line 285
    :pswitch_9
    const-string/jumbo v0, "SERVER_UNREACHABLE"

    return-object v0

    .line 287
    :pswitch_a
    const-string/jumbo v0, "INVALID_CREDENTIALS"

    return-object v0

    .line 289
    :pswitch_b
    const-string/jumbo v0, "OUT_OF_NETWORK"

    return-object v0

    .line 291
    :pswitch_c
    const-string/jumbo v0, "SERVER_ERROR"

    return-object v0

    .line 293
    :pswitch_d
    const-string/jumbo v0, "TIMED_OUT"

    return-object v0

    .line 295
    :pswitch_e
    const-string/jumbo v0, "LOST_SIGNAL"

    return-object v0

    .line 297
    :pswitch_f
    const-string/jumbo v0, "LIMIT_EXCEEDED"

    return-object v0

    .line 299
    :pswitch_10
    const-string/jumbo v0, "INCOMING_REJECTED"

    return-object v0

    .line 301
    :pswitch_11
    const-string/jumbo v0, "POWER_OFF"

    return-object v0

    .line 303
    :pswitch_12
    const-string/jumbo v0, "OUT_OF_SERVICE"

    return-object v0

    .line 305
    :pswitch_13
    const-string/jumbo v0, "ICC_ERROR"

    return-object v0

    .line 307
    :pswitch_14
    const-string/jumbo v0, "CALL_BARRED"

    return-object v0

    .line 309
    :pswitch_15
    const-string/jumbo v0, "FDN_BLOCKED"

    return-object v0

    .line 311
    :pswitch_16
    const-string/jumbo v0, "CS_RESTRICTED"

    return-object v0

    .line 313
    :pswitch_17
    const-string/jumbo v0, "CS_RESTRICTED_NORMAL"

    return-object v0

    .line 315
    :pswitch_18
    const-string/jumbo v0, "CS_RESTRICTED_EMERGENCY"

    return-object v0

    .line 317
    :pswitch_19
    const-string/jumbo v0, "UNOBTAINABLE_NUMBER"

    return-object v0

    .line 319
    :pswitch_1a
    const-string/jumbo v0, "CDMA_LOCKED_UNTIL_POWER_CYCLE"

    return-object v0

    .line 321
    :pswitch_1b
    const-string/jumbo v0, "CDMA_DROP"

    return-object v0

    .line 323
    :pswitch_1c
    const-string/jumbo v0, "CDMA_INTERCEPT"

    return-object v0

    .line 325
    :pswitch_1d
    const-string/jumbo v0, "CDMA_REORDER"

    return-object v0

    .line 327
    :pswitch_1e
    const-string/jumbo v0, "CDMA_SO_REJECT"

    return-object v0

    .line 329
    :pswitch_1f
    const-string/jumbo v0, "CDMA_RETRY_ORDER"

    return-object v0

    .line 331
    :pswitch_20
    const-string/jumbo v0, "CDMA_ACCESS_FAILURE"

    return-object v0

    .line 333
    :pswitch_21
    const-string/jumbo v0, "CDMA_PREEMPTED"

    return-object v0

    .line 335
    :pswitch_22
    const-string/jumbo v0, "CDMA_NOT_EMERGENCY"

    return-object v0

    .line 337
    :pswitch_23
    const-string/jumbo v0, "CDMA_ACCESS_BLOCKED"

    return-object v0

    .line 339
    :pswitch_24
    const-string/jumbo v0, "EMERGENCY_ONLY"

    return-object v0

    .line 341
    :pswitch_25
    const-string/jumbo v0, "NO_PHONE_NUMBER_SUPPLIED"

    return-object v0

    .line 343
    :pswitch_26
    const-string/jumbo v0, "DIALED_MMI"

    return-object v0

    .line 345
    :pswitch_27
    const-string/jumbo v0, "VOICEMAIL_NUMBER_MISSING"

    return-object v0

    .line 347
    :pswitch_28
    const-string/jumbo v0, "CDMA_CALL_LOST"

    return-object v0

    .line 349
    :pswitch_29
    const-string/jumbo v0, "EXITED_ECM"

    return-object v0

    .line 351
    :pswitch_2a
    const-string/jumbo v0, "DIAL_MODIFIED_TO_USSD"

    return-object v0

    .line 353
    :pswitch_2b
    const-string/jumbo v0, "DIAL_MODIFIED_TO_SS"

    return-object v0

    .line 355
    :pswitch_2c
    const-string/jumbo v0, "DIAL_MODIFIED_TO_DIAL"

    return-object v0

    .line 357
    :pswitch_2d
    const-string/jumbo v0, "ERROR_UNSPECIFIED"

    return-object v0

    .line 359
    :pswitch_2e
    const-string/jumbo v0, "OUTGOING_FAILURE"

    return-object v0

    .line 361
    :pswitch_2f
    const-string/jumbo v0, "OUTGOING_CANCELED"

    return-object v0

    .line 363
    :pswitch_30
    const-string/jumbo v0, "IMS_MERGED_SUCCESSFULLY"

    return-object v0

    .line 365
    :pswitch_31
    const-string/jumbo v0, "CDMA_ALREADY_ACTIVATED"

    return-object v0

    .line 367
    :pswitch_32
    const-string/jumbo v0, "VIDEO_CALL_NOT_ALLOWED_WHILE_TTY_ENABLED"

    return-object v0

    .line 369
    :pswitch_33
    const-string/jumbo v0, "CALL_PULLED"

    return-object v0

    .line 371
    :pswitch_34
    const-string/jumbo v0, "ANSWERED_ELSEWHERE"

    return-object v0

    .line 373
    :pswitch_35
    const-string/jumbo v0, "MAXIMUM_NUMER_OF_CALLS_REACHED"

    return-object v0

    .line 375
    :pswitch_36
    const-string/jumbo v0, "DATA_DISABLED"

    return-object v0

    .line 377
    :pswitch_37
    const-string/jumbo v0, "DATA_LIMIT_REACHED"

    return-object v0

    .line 379
    :pswitch_38
    const-string/jumbo v0, "DIALED_ON_WRONG_SLOT"

    return-object v0

    .line 381
    :pswitch_39
    const-string/jumbo v0, "DIALED_CALL_FORWARDING_WHILE_ROAMING"

    return-object v0

    .line 267
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_2d
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_28
        :pswitch_29
        :pswitch_2e
        :pswitch_2f
        :pswitch_30
        :pswitch_2a
        :pswitch_2b
        :pswitch_2c
        :pswitch_31
        :pswitch_32
        :pswitch_33
        :pswitch_34
        :pswitch_35
        :pswitch_36
        :pswitch_37
        :pswitch_38
        :pswitch_39
    .end packed-switch
.end method
